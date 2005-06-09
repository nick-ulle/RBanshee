/*
 * Copyright (c) 2000-2004
 *      The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 */
package banshee.dyckcfl;

/** 
 * Safe interface to dyck context-free language reachability engine.
 * @author John Kodumal
 */
public class DyckCFL {

    /** Toggles constraint printing. */
    public static void printDyckConstraints(boolean value) {
	UnsafeDyckCFL.printDyckConstraints(value);
    }

    /** Creates a new tagged node with the given name. */
    public DyckNode makeTaggedNode(String name) {
	long id = UnsafeDyckCFL.makeTaggedNode(name);
	return new DyckNode(name, id);
    }

    /** Creates an untagged node with the given name.
     *
     *  <p> Untagged nodes aren't tracked; therefore one cannot ask
     *  what nodes an untagged node reaches. Untagged nodes are more
     *  efficient as a result.
     */
    public DyckNode makeUntaggedNode(String name) {
	long id = UnsafeDyckCFL.makeUntaggedNode(name);
	return new DyckNode(name, id);
    }

    /** Marks a node global. */
    public void markNodeGlobal(DyckNode node) {
	UnsafeDyckCFL.markNodeGlobal(node.nodeID);
    }

    /** Make a subtype edge between two nodes. */
    public void makeSubtypeEdge(DyckNode node1, DyckNode node2) {
	UnsafeDyckCFL.makeSubtypeEdge(node1.nodeID, node2.nodeID);
    }

    /** Make an edge (_{index} between two nodes. */
    public void makeOpenEdge(DyckNode node1, DyckNode node2, int index) {
	UnsafeDyckCFL.makeOpenEdge(node1.nodeID, node2.nodeID, index);
    }

    /** Make an edge )_{index} between two nodes. */
    public void makeCloseEdge(DyckNode node1, DyckNode node2, int index) {
	UnsafeDyckCFL.makeCloseEdge(node1.nodeID, node2.nodeID, index);
    }

    /** Prepares the graph for reachability queries. */
    public void finishedAddingEdges() {
	UnsafeDyckCFL.finishedAddingEdges();
    }

    /** Returns true if there is a matched path between node1 and node2. */
    public boolean checkReaches(DyckNode node1, DyckNode node2) {
	return UnsafeDyckCFL.checkReaches(node1.nodeID, node2.nodeID);
    }
    
    /** Returns true if there is a PN path between node1 and node2. */
    public boolean checkPNReaches(DyckNode node1, DyckNode node2) {
	return UnsafeDyckCFL.checkPNReaches(node1.nodeID, node2.nodeID);
    }
    
}