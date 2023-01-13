
import Foundation

print("Hello, World!")

//
//  main.swift
//  M2 First Homework
//
//  Created by Sumaya on 11/1/23.
//

import Foundation

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



class Bank {
    var clients:[Client] = [Client] ()
    
    func countCredit(credit:Int,srokcredita:Int, payement:Int) {
        for i in clients {
            let a = i
            
            if a.tern == 1 {
                a.repayment += credit + ( credit * Int(0.3))
            }
            
            a.amount += Int(credit)
            a.tern  += srokcredita
            a.repayment += payement
            let b = i
            if b.tern == 2 {
                b.repayment += credit + (credit * Int(0.15))
            }
            let c = i
            if c.tern == 3 {
                c.tern += credit + (credit * Int(0.10))
            }
            print("\(i.amount), \(i.tern), \(i.repayment)")
        }
    }
        func client(person:Client) {
            for i  in clients {
                if i.tern == 1 {
                print((i.repayment ) / (i.tern * 12))
                }
                if i.tern == 2 {
                    print((i.repayment) / (i.tern * 24))
                }
                if i.tern == 3 {
                    print((i.repayment) / (i.tern * 36 ))
                }
                print(" ФИО клиента - \(i.name) \(i.lastname) \(i.patrinymic),\n Сумма кредита - \(i.amount),\n Срок кредита - \(i.tern),\n Cумма погашения - \(i.repayment).")
            }
        }
    }

var client = Client(name: "Pak", lastname: "Jun", patrinymic: "Ho", amount: 78000, tern: 6, repayment: 450)
var bank = Bank()
//    bank.clients.append(client)
bank.clients.append(client)
bank.client(person: client)
    bank.countCredit(credit: 1000, srokcredita: 1, payement: 1000)
