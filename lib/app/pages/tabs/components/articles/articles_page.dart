import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class ArticlesPage extends StatelessWidget {
  final String html = '<p> Power Hypertrophy Upper Lower (PHUL) Workout</p>';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Html(
        data: """
    <p> <strong>Power Hypertrophy Upper Lower (PHUL) Workout</strong></p><br/><p>The PHUL workout is based around the basic principles of <a href="/expert-guides/strength">strength</a> and size.&#xA0; This 4 day program will allow you to maximize results on both fronts in an easy adaptable routine built off the following principles:</p><br/><p><strong>Frequency</strong>. Studies have shown muscle protein synthesis (MPS) to be elevated for up to 48 hours after training. That would make it ideal for you to hit each muscle more frequently than a typical once per week split. The PHUL program is designed to hit each muscle group twice within a week.</p><br/><p><strong>Compounds</strong>. The PHUL program focuses on the big <a href="/exercises/compound">compound movements</a> for optimal progression. While <a href="/exercises/isolation">isolation movements</a> are included in this program as well, the main goal is to increase performance on the main lifts, as well as pack on pounds of muscle.</p><br/><p><strong>Power</strong>. This program uses 2 of it&apos;s 4 working days to focus on pure <a href="/workouts/strength">strength training</a>. The key to getting stronger and bigger is to utilize progressive overload and time under tension. These 2 days will see that you&apos;ll be able to use more weight on your hypertrophy days.</p><br/><p><strong>Hypertrophy</strong>. In addition to 2 power days, your other 2 days on the PHUL program will focus on hypertrophy (<a href="/natural/athletes/natural-bodybuilders.html">bodybuilding</a>) style training. This way, not only will you be seeing strength increases but you&apos;ll be building size as well.</p><br/><p><em><strong>Editor&apos;s Note:</strong></em> Make sure you&#x2019;re doing all the right things you need to be doing to build lean muscle mass. For those looking for a more in-depth resource to teach them how to build muscle, we&#x2019;ve created a FREE 5 day Muscle Building Email Course.</p><br/><p>The course will teach you how your body builds muscle, how to utilize workout plans on our website to maximize muscle growth, how to eat to build muscle, how to supplement to build muscle and how to track your progress.</p><br/><p>Sign up below today to learn and ensure you get the most out of the PHUL Workout Program.</p><br/><p>Need help building muscle? Take our FREE 5-part email Muscle Building Course!</p><br/><h4>
PHUL Notes:</h4><br/><ol>
<li>
<strong>Sets and Reps</strong> - When first beginning this program it is suggested to start with a lower amount of total volume until you become accustomed to the workload.</li>
<li>
<strong>Failure</strong> - Failure is a tool that should not be abused. All sets should be completed with at least 1 rep &quot;left in the tank.&quot; Meaning you should struggle to complete your heavier sets, but not to the point where you&apos;re unable to get your goal reps.</li>
<li>
<strong>Exercise Selection</strong> - Main compounds should remain unchanged, however substitutions can be made for like exercises if desired.</li>
<li>
<strong>Abdominals</strong> - Ab work can be done at the end of training or on off days.</li>
</ol><br/><ul>
<li>
<strong>Day 1</strong>: Upper Power</li>
<li>
<strong>Day 2</strong>: Lower Power</li>
<li>
<strong>Day 3</strong>: Off</li>
<li>
<strong>Day 4</strong>: Upper Hypertrophy</li>
<li>
<strong>Day 5</strong>: Lower Hypertrophy</li>
<li>
<strong>Day 6</strong>: Off</li>
<li>
<strong>Day 7</strong>: Off</li>
</ul><br/><table>
<tbody>
<tr>
<th colspan="3">
Day 1</th>
</tr>
<tr>
<td class="tableSubHead" colspan="3">
Upper Power</td>
</tr>
<tr>
<td>
<strong>Exercise</strong></td>
<td class="width20">
<strong>Sets</strong></td>
<td class="width20">
<strong>Reps</strong></td>
</tr>
<tr>
<td>
<a href="/exercises/barbell-bench-press.html">Barbell Bench Press</a></td>
<td>
3-4</td>
<td>
3-5</td>
</tr>
<tr>
<td>
<a href="/exercises/incline-dumbbell-bench-press.html">Incline Dumbbell Bench Press</a></td>
<td>
3-4</td>
<td>
6-10</td>
</tr>
<tr>
<td>
<a href="/exercises/bent-over-barbell-row.html">Bent Over Row</a></td>
<td width="20%">
3-4</td>
<td width="20%">
3-5</td>
</tr>
<tr>
<td>
<a href="/exercises/lat-pull-down.html">Lat Pull Down</a></td>
<td width="20%">
3-4</td>
<td width="20%">
6-10</td>
</tr>
<tr>
<td>
<a href="/exercises/military-press.html">Overhead Press</a></td>
<td width="20%">
2-3</td>
<td width="20%">
5-8</td>
</tr>
<tr>
<td>
<a href="/exercises/standing-barbell-curl.html">Barbell Curl</a></td>
<td>
2-3</td>
<td>
6-10</td>
</tr>
<tr>
<td>
<a href="/exercises/lying-tricep-extension.html">Skullcrusher</a></td>
<td>
2-3</td>
<td>
6-10</td>
</tr>
</tbody>
</table><br/><table>
<tbody>
<tr>
<th colspan="3">
Day 2</th>
</tr>
<tr>
<td class="tableSubHead" colspan="3">
Lower Power</td>
</tr>
<tr>
<td>
<strong>Exercise</strong></td>
<td class="width20">
<strong>Sets</strong></td>
<td class="width20">
<strong>Reps</strong></td>
</tr>
<tr>
<td>
<a href="/exercises/squat.html">Squat</a></td>
<td>
3-4</td>
<td>
3-5</td>
</tr>
<tr>
<td>
<a href="/exercises/deadlifts.html">Deadlift</a></td>
<td>
3-4</td>
<td>
3-5</td>
</tr>
<tr>
<td>
<a href="/exercises/45-degree-leg-press.html">Leg Press</a></td>
<td width="20%">
3-5</td>
<td width="20%">
10-15</td>
</tr>
<tr>
<td>
<a href="/exercises/leg-curl.html">Leg Curl</a></td>
<td width="20%">
3-4</td>
<td width="20%">
6-10</td>
</tr>
<tr>
<td>
<a href="/exercises/calves">Calf Exercise</a></td>
<td width="20%">
4</td>
<td width="20%">
6-10</td>
</tr>
</tbody>
</table><br/><table>
<tbody>
<tr>
<th colspan="3">
Day 4</th>
</tr>
<tr>
<td class="tableSubHead" colspan="3">
Upper Hypertrophy</td>
</tr>
<tr>
<td>
<strong>Exercise</strong></td>
<td class="width20">
<strong>Sets</strong></td>
<td class="width20">
<strong>Reps</strong></td>
</tr>
<tr>
<td>
<a href="/exercises/incline-bench-press.html">Incline Barbell Bench Press</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/dumbbell-flys.html">Flat Bench Dumbbell Flye</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/seated-row.html">Seated Cable Row</a></td>
<td width="20%">
3-4</td>
<td width="20%">
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/one-arm-dumbbell-row.html">One Arm Dumbbell Row</a></td>
<td width="20%">
3-4</td>
<td width="20%">
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/dumbbell-lateral-raise.html">Dumbbell Lateral Raise</a></td>
<td width="20%">
3-4</td>
<td width="20%">
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/incline-dumbbell-curl.html">Seated Incline Dumbbell Curl</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/tricep-extension.html">Cable Tricep Extension</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
</tbody>
</table><br/><table>
<tbody>
<tr>
<th colspan="3">
Day 5</th>
</tr>
<tr>
<td class="tableSubHead" colspan="3">
Lower Hypertrophy</td>
</tr>
<tr>
<td>
<strong>Exercise</strong></td>
<td class="width20">
<strong>Sets</strong></td>
<td class="width20">
<strong>Reps</strong></td>
</tr>
<tr>
<td>
<a href="/exercises/front-squat.html">Front Squat</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/barbell-lunge.html">Barbell Lunge</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/leg-extension.html">Leg Extension</a></td>
<td width="20%">
3-4</td>
<td width="20%">
10-15</td>
</tr>
<tr>
<td>
<a href="/exercises/leg-curl.html">Leg Curl</a></td>
<td width="20%">
3-4</td>
<td width="20%">
10-15</td>
</tr>
<tr>
<td>
<a href="/exercises/seated-calf-raise.html">Seated Calf Raise</a></td>
<td width="20%">
3-4</td>
<td width="20%">
8-12</td>
</tr>
<tr>
<td>
<a href="/exercises/45-degress-calf-press.html">Calf Press</a></td>
<td>
3-4</td>
<td>
8-12</td>
</tr>
</tbody>
</table><br/><p>Post your post-workout swolfies in <a href="/store/brands/muscle-strength">M&amp;S gear</a> on IG and tag <a href="https://www.instagram.com/muscleandstrength/" target="_blank">@muscleandstrength</a>, #muscleandstrength, or DM them to us to get a shoutout on Muscle &amp; Strength stories!</p><br/>
  """,
        defaultTextStyle: TextStyle(color: Colors.black),
        padding: EdgeInsets.all(15),
        linkStyle: const TextStyle(
          color: Colors.redAccent,
          decorationColor: Colors.redAccent,
          decoration: TextDecoration.underline,
        ),
        onLinkTap: (url) {
          print("Opening $url...");
        },
        onImageTap: (src) {
          print(src);
        },
        customTextAlign: (dom.Node node) {
          if (node is dom.Element) {
            switch (node.localName) {
              case "p":
                return TextAlign.left;
            }
          }
          return null;
        },
        customTextStyle: (dom.Node node, TextStyle baseStyle) {
          if (node is dom.Element) {
            switch (node.localName) {
              case "h1":
                return baseStyle.merge(
                    TextStyle(height: 2, fontSize: 40, color: Colors.black));
              case "ul":
              case "li":
              case "td":
              case "tr":
              case "th":
              case "p":
                return baseStyle.merge(
                    TextStyle(height: 2, fontSize: 20, color: Colors.black));
            }
          }
          return baseStyle;
        },
      ),
    );
  }
}
