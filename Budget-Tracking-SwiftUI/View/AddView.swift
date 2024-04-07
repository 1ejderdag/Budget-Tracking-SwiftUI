//
//  AddView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 5.04.2024.
//

import SwiftUI

struct AddView: View {
    
    @State var selectionPicker: CategoryType = .expense
    @State var selectedCategory: Category
    @State var date: Date = Date()
    
    @State var amount: String
    
    var gridColumns = [GridItem(.adaptive(minimum: 70))]
    
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading) {
                        Section() {
                            Picker("Category type", selection: $selectionPicker) {
                                ForEach(CategoryType.allCases, id: \.self) { type in
                                    Text("\(type.localizedName())")
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .padding(10)
                            .frame(maxWidth: .infinity)
                            .background(Color(.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .onChange(of: selectionPicker) {
                                withAnimation() {
                                    selectedCategory = Category()
                                }
                            }
                        }
                        .fontWeight(.bold)
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Section("ENTER AMOUNT") {
                            TextField("-100", text: $amount)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color(.secondarySystemBackground))
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        .font(.caption)

                    }
                    
                    VStack(alignment: .leading) {
                        Section("ENTER NOTE") {
                            TextField("Note for expense", text: $amount)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color(.secondarySystemBackground))
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        .font(.caption)
                    }
                    
                    LazyVGrid(columns: gridColumns, spacing: 25) {
                        ForEach(1...8, id: \.self){ _ in
                            VStack {
                                ZStack {
                                    Circle()
                                        .fill()
                                        .frame(width: 70)
                                        .foregroundStyle(Color(.red))
                                        
                                    
                                    Image(systemName: "cross.case")
                                        .font(.system(size: 35))
                                        .foregroundStyle(Color(.white))
                                }
                                
                                Text("Groceries")

                            }
                        }
                    }
                    .padding(10)
                    
                    Section {
                        HStack {
                            DatePicker("Date", selection: $date, displayedComponents: .date)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color(.secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    } header: {
                        Text("Select Date")
                            .font(.caption).textCase(.uppercase)
                            .padding(.leading, 6)
                            .padding(.top, 10)
                    }
                    
                    HStack {
                        Button {
                            print("CANCEL clicked")
                        } label: {
                            Text("CANCEL")
                                .padding()
                                .background(Color(.red))
                                .foregroundStyle(Color(.white))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Submit clicked")
                        } label: {
                            Text("SUBMIT")
                                .padding()
                                .background(Color(.blue))
                                .foregroundStyle(Color(.white))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                        }
                    }
                    .padding(.top, 20)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    AddView(selectedCategory: Category(), amount: "")
}
