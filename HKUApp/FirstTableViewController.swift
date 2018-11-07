//
//  FirstTableViewController.swift
//  HKUApp
//
//  Created by Captwang on 6/11/2018.
//  Copyright © 2018 Captwang. All rights reserved.
//

import UIKit



var home = ["About","Message From Director","Faculty"]
var myIndex = 0
var paraList = [aboutHku,director,faculty]
var imgList = ["home_about.jpg","director.jpg","faculty.jpg"]



var faculty = """
The Department of Computer Science is committed to high-quality education and training of computing professionals at both the undergraduate and postgraduate levels. At the postgraduate level, we offer two taught programmes based on coursework, the MSc(CompSc) and the MSc(ECom&IComp), as well as the research-based MPhil and PhD programmes.

The academic staff is active in research and development in a variety of areas including databases, parallel and distributed computing, computer networks, computer graphics, algorithms and complexity, computer vision, multimedia, software engineering, statistical computing, information security and computer forensics, and legal aspects of computing. Some of our research results have been applied to the development of real software and systems. You will have these researchers as your inspiring teachers of the courses in this programme. Here are some of them.
"""
var director = """
We are living in the era where technology is widely accepted and becomes so commonplace that we doubt how we ever live without it. Mobile is a good prominent example. From businesses to individual consumers, everyone is connected to everyone, everywhere, all the time. Every day we hear of new technological breakthroughs, e.g. self-driving cars, organ-on-a-chip, smart glasses, drones; they are awe-inspiring. To remain in the game, the best IT professionals strive to maintain current knowledge and skills to take on these continual developments.

The Master of Science in Computer Science Programme is a comprehensive and challenging graduate programme with three specialisations and one general stream, namely Financial Computing Stream, Cyber Security Stream, Multimedia Computing Stream and General Computer Science Stream, to meet the needs of both industry and business in Asia, and to make the programme more unique among comparable programmes in the region.

As you can see from our curriculum, on one hand we have retained the nuts and bolts subjects to lay a strong foundation. But on the other hand, we updated and revised the curriculum continuously as we assess the career trends and needs of our students, and monitor rapid changes in technology developments. For example, hot topics like “fintech”, “blockchain” are included in some of our courses.

If you like the holistic approach of our teaching methods and curriculum, please consider enrolling in this established programme in a world-class university.


"""


var aboutHku = """
The University of Hong Kong

The University of Hong Kong (HKU), founded in 1911, is the oldest of Hong Kong’s institutions of higher learning.  It was also the alma mater of Dr. Sun Yat-sen, the founder of modern China.

HKU, as a pre-eminent international university, seeks to sustain and enhance its excellence as an institution of higher learning through outstanding teaching and world-class research so as to produce well-rounded graduates with lifelong abilities to provide leadership within the societies they serve.

HKU has ten faculties, a graduate school and a number of independent centres of studies and learning. In 2016-17, it had a student population of over 27,800, including over 16,100 undergraduates and 11,700 postgraduates, and an academic staff population of around 3,400. Coupled with an active alumni network and generous endowments for programme research and development, HKU is a dynamic and exciting institution. Stepping into Asia’s next century of phenomenal growth.
"""


class FirstTableViewController: UITableViewController {

   

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return home.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = home[indexPath.row]
        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "sague", sender: self)
    }
 
 

}
