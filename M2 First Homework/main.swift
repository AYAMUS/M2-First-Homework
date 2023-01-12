
import Foundation

print("Hello, World!")

//
//  main.swift
//  M2 First Homework
//
//  Created by Sumaya on 11/1/23.
//

import Foundation

//Домашнее задание №1.

//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0. Создать класс Банк с параметрами клиенты.
//Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%.
//Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.

class Client{
    var name: String
    var lastname: String
    var patrinymic: String
    var amount: Int
    var tern: Int
    var repayment: Int
    init(name: String, lastname: String, patrinymic: String, amount: Int, tern: Int, repayment: Int) {
        self.name = name
        self.lastname = lastname
        self.patrinymic = patrinymic
        self.amount = amount
        self.tern = tern
        self.repayment = repayment
    }
    func showInfo() {
        print("ФИО клиента - \(lastname) \(name) \(patrinymic),Сумма кредита - \(amount),Срок кредита - \(tern),Сумма погашения - \(repayment)")
    }
}

class Bank{
    var clients:[Client] = [Client] ()
    func countCredit(Credit:Double, Srokcredita:Int, tern: Int, repayment: Int) {
        if Srokcredita == 1 {
            print(Credit * Double(0.3) + Credit)
        }
        if Srokcredita == 2 {
            print(Credit * Double(0.15) + Credit)
        }
        if Srokcredita == 3 {
            print(Credit * Double(0.10) + Credit)
        }
        for i in clients {
            let a = i
            i.amount += Int(Credit)
            i.amount += Srokcredita
            i.repayment += repayment
            i.tern += tern
        }
    }
        func addClients(add: Client,repayment: Int,tern: Int){
            for i in clients{
                let b = i
                i.repayment += repayment
                i.tern += tern
                
                print("Имя клиента - \(b.name),Сумма погашения кредита - \(b.repayment)")
                
            }
        }
    }

var bank = Bank()
var person = Client(name: "Adam", lastname: "Kim", patrinymic: "Karimovich", amount: 0, tern: 0, repayment: 0)
bank.clients.append(person)
bank.countCredit(Credit: 123.20312, Srokcredita: 1, tern: 3,repayment: 120)
bank.clients.append(person)
bank.addClients(add: Client(name: "Adam", lastname: "Kim", patrinymic: "Karimovich", amount: 0, tern: 0, repayment: 0), repayment: 0, tern: 7)
person.showInfo()
