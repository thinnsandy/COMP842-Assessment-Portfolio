// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.20;

/// @title Storage with course code
/// @notice Stores a number and a university course code.
/// @dev Only deploying account (owner) can update the course code.
///      The number can be updated by anyone, as in the original tutorial contract.
 contract Storage {
     uint256 private number;                // Original numeric tutorial value
     string private courseCode;             // Course identifier
     address public owner;                  // Deployer's address

    // Log course code updates
     event CourseCodeUpdated(string newCourseCode, address updatedBy);

    // Set the contract owner
     constructor() {
         owner = msg.sender;
     }

    // Allow only the owner to update the course code
     modifier onlyOwner() {
         require(msg.sender == owner, "Only owner can update course code");
         _;
     }

    // Store and retrieve a number
     function store(uint256 num) public {
         number = num;
     }

    // Read the stored number without changing blockchain state
     function retrieve() public view returns (uint256) {
         return number;
     }

    // Update the course code (owner only)
     function setCourseCode(string memory newCourseCode)
         public
         onlyOwner
     {
         courseCode = newCourseCode;
         emit CourseCodeUpdated(newCourseCode, msg.sender);
     }

    // Retrieve the course code
     function getCourseCode() public view returns (string memory) {
         return courseCode;
     }
 }