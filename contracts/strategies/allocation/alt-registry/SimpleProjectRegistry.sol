// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.19;

// /**
//  * Simple Project Registry
//  *
//  * This contract is a very minimal implementation of a registry, intended for
//  * testing and demonstration. Allo provides a robust Project Registry that
//  * strategies can use. But strategies can use any means of validating projects
//  * (whether they are on the Allo Registry or not).
//  *
//  * This contract assumes an owner, like a DAO, with explicit permission to add
//  * and remove projects from the registry. The allocation strategy that
//  * accompanies simply check whether or not a project is listed on this
//  * registry.
//  */

// import "@openzeppelin/access/Ownable.sol";

// /// @title Simple Project Registry
// /// @notice This contract is a simple implementation of a registry. It is
// //intended to show that strategies can leverage their own registries. It assumes
// //an owner, like a DAO, with explicit permission to add and remove projects from
// //the registry.
// contract SimpleProjectRegistry is Ownable {
//     ///////////////////////////////
//     ////////// Variables //////////
//     ///////////////////////////////

//     /// @notice The projects in the registry
//     mapping(address => bool) public projects;

//     ////////////////////////////
//     ////////// Events //////////
//     ////////////////////////////

//     /// @notice Emitted when a project is added to the Registry
//     /// @param project The project that was added
//     event ProjectAdded(address indexed project);

//     /// @notice Emitted when a project is removed from the Registry
//     /// @param project The project that was removed
//     event ProjectRemoved(address indexed project);

//     ////////////////////////////
//     ////////// Errors //////////
//     ////////////////////////////

//     /// @notice Error when a project is already in the registry
//     error ProjectAlreadyInRegistry();

//     constructor(address _initialOwner) Ownable(_initialOwner) {}

//     /// @notice Add a project to the registry
//     /// @param _project The project to add
//     function addProject(address _project) external onlyOwner {
//         if (projects[_project]) {
//             revert ProjectAlreadyInRegistry();
//         }
//         projects[_project] = true;
//         emit ProjectAdded(_project);
//     }

//     /// @notice Add an array projects to the registry
//     /// @param _projects The projects to add
//     function addProjects(address[] calldata _projects) external onlyOwner {
//         for (uint256 i = 0; i < _projects.length; i++) {
//             if (projects[_projects[i]]) {
//                 revert ProjectAlreadyInRegistry();
//             }
//             projects[_projects[i]] = true;
//             emit ProjectAdded(_projects[i]);
//         }
//     }

//     /// @notice Remove a project from the registry
//     /// @param _project The project to remove
//     function removeProject(address _project) external onlyOwner {
//         projects[_project] = false;
//         emit ProjectRemoved(_project);
//     }

//     /// @notice Remove an array of projects from the registry
//     /// @param _projects The projects to remove
//     function removeProjects(address[] calldata _projects) external onlyOwner {
//         for (uint256 i = 0; i < _projects.length; i++) {
//             projects[_projects[i]] = false;
//             emit ProjectRemoved(_projects[i]);
//         }
//     }
// }
