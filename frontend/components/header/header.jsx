import React from 'react';
import WelcomeContainer from '../intro/intro_container';
import GreetingContainer from '../greeting/greeting_container';
import { Link } from 'react-router-dom';

const Header = (props) => (
  <div className="homepageHeader">
    <div className='logoWithTitle'>
      <div className="header-link">
        <Link to="/" >
          <img className='header-logo' src=
            "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,w_165/v1500499099/logo_pjzgg0.jpg"  />
        </Link>
      </div>
      <div className="header-title">
        <h2 className="header-title">Product Hunt</h2>
        <h3 className="header-desc">The best new products, every day</h3>
      </div>
      </div>
    <div>
      <input type="text"  className="search-bar" placeholder="Discover your next favorite thing..."></input>
    </div>
    <div>
      <GreetingContainer />
    </div>

  </div>

);

export default Header;

// <header>
//   <Link to="/" className="header-link">
//     <img src=
//       "http://res.cloudinary.com/dbyoymbpd/image/upload/c_scale,h_65,q_100,w_65/v1500499099/logo_pjzgg0.jpg"/>
//   </Link>
//   <input type="text"  className="search-bar" placeholder="Discover your next favorite thing..."></input>
//
//   <GreetingContainer />
// </header>
//
//   <WelcomeContainer />