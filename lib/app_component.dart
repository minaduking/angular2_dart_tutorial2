// Copyright (c) 2016, Yuki Urata. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/angular2.dart';

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}

@Component(
    selector: 'my-app',
//    styleUrls: const ['app_component.css'],
    template: '''
      <h1>{{title}}</h1>
      <h2>My Heroes</h2>
      <ul class="heroes">
        <li *ngFor="let hero of heroes" [class.selected]="hero == selectedHero" (click)="onSelect(hero)">
          <span class="badge">{{hero.id}}</span> {{hero.name}}
        </li>
      </ul>
      <div *ngIf="selectedHero != null">
      <h2>{{selectedHero.name}}</h2>
      <div><label>id: </label>{{selectedHero.id}}</div>
      <div>
        <label>name: </label>
        <input [(ngModel)]="selectedHero.name" placeholder="name">
      </div>
      </div>
      ''',
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES]
)

class AppComponent {
  String title = 'Tour of Heroes';
  List<Hero> heroes = [
  new Hero(11, 'Mr. Nice'),
  new Hero(12, 'Narco'),
  new Hero(13, 'Bombasto'),
  new Hero(14, 'Celeritas'),
  new Hero(15, 'Magneta'),
  new Hero(16, 'RubberMan'),
  new Hero(17, 'Dynama'),
  new Hero(18, 'Dr IQ'),
  new Hero(19, 'Magma'),
  new Hero(20, 'Tornado')
  ];
  Hero selectedHero;
  onSelect(Hero hero){
    selectedHero = hero;
  }
}
