import React from 'react'
import FileForm from './ProfileImageForm'

describe('<FileForm />', () => {
  it('renders', () => {
    // see: https://on.cypress.io/mounting-react
    cy.mount(<FileForm />)
  })
})