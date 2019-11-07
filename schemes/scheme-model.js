const db = require('../data/db-config');

module.exports = {
    find,
    findById
}

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes')
    .where({ id })
    .first()
    .then(scheme => scheme ? scheme : null)
}

function findSteps(id) {
    return db('steps')
    .join('schemes', 'schemes.id', '=', 'steps.scheme_id')
    .select('steps.id', 'schemes.scheme_name', 'steps.step_number', 'steps.instructions')
    .where({ 'steps.scheme_id': id})
    .then(steps => steps)
}

function add(scheme) {
    return db('scheme')
    .insert(scheme, "id")
    .then(id => findById(...id))
}

function update(changes, id) {
    return db('schemes')
    .where({ id })
    .update(changes)
    .then(id => findById(id))
}

function remove(id) {
    return db('scheme')
    .where({ id })
    .del()
    .then(id => findById(id))
}