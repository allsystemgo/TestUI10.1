import bb.cascades 1.0

TabbedPane {
    showTabsOnActionBar: true
    Tab { //First tab
        // Localized text with the dynamic translation and locale updates support
        title: qsTr("Détail") + Retranslate.onLocaleOrLanguageChanged
        Page {
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.TopToBottom
                }
                Container {
                    layout: DockLayout {
                    }
                    background: Color.create("#4A739F")
                    preferredHeight: 90
                    preferredWidth: 768

                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        verticalAlignment: VerticalAlignment.Center

                        text: qsTr("Consommation Internet")

                        textStyle {
                            color: Color.create("#F5F5F5")
                            fontSize: FontSize.Large
                            fontWeight: FontWeight.Bold
                        }
                    }
                }
                Container {
                    preferredHeight: 3
                    preferredWidth: 768

                    background: Color.create("#F5F5F5")
                }
                Container {
                    layout: DockLayout {
                    }
                    preferredHeight: 550
                    preferredWidth: 768
                    Container {
                        layout: StackLayout {
                            orientation: LayoutOrientation.TopToBottom
                        }
                        id: topColorContainer
                        objectName: "topColorContainer"

                        Container {
                            background: Color.create("#EDEEEE")
                            //background: Color.create("#A5ABA7")
                            //background: Color.create("#98A0A2")
                            preferredHeight: 275
                            preferredWidth: 768
                        }
                        Container {

                            background: Color.create("#F5F5F5")

                            preferredHeight: 275
                            preferredWidth: 768
                        }
                        Container {
                            preferredHeight: 2
                            preferredWidth: 768

                            background: Color.create("#595D5E")
                        }
                    }
                    ImageView {
                        id: gaugeContainer
                        objectName: "gaugeContainer"
                        horizontalAlignment: HorizontalAlignment.Center
                        verticalAlignment: VerticalAlignment.Center
                        preferredHeight: 350
                        preferredWidth: 350
                        imageSource: "asset:///chart.png"
                    }
                    Label {
                        text: "Consommation du 15 août au 14 septembre 2013"
                        horizontalAlignment: HorizontalAlignment.Left
                        verticalAlignment: VerticalAlignment.Top
                        
                        textStyle {
                            fontSize: FontSize.Small 
                        }
                    }
                }
                Container {
                    preferredHeight: 1
                    preferredWidth: 768
                    background: Color.create("#595D5E")
                }
                Container {
                    id: uploadContainer
                    objectName: "uploadContainer"

                    layout: StackLayout {
                        orientation: LayoutOrientation.LeftToRight
                    }

                    preferredHeight: 200
                    preferredWidth: 768

                    background: Color.create("#F5F5F5")
                    Container {
                        layout: DockLayout {
                        }
                        background: Color.create("#4A739F")
                        preferredHeight: 200
                        preferredWidth: 200
                        ImageView {
                            preferredHeight: 125
                            preferredWidth: 125
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            imageSource: "asset:///images/upload.png"
                        }
                    }
                    Container {
                        preferredHeight: 200
                        preferredWidth: 2
                        background: Color.create("#595D5E")
                    }
                    Container {
                        layout: DockLayout {
                        }
                        
                        preferredWidth: 566
                        
                        horizontalAlignment: HorizontalAlignment.Fill
                        verticalAlignment: VerticalAlignment.Fill
                        
                        Label {
                        	horizontalAlignment: HorizontalAlignment.Center
                        	verticalAlignment: VerticalAlignment.Center
                        	
                            text: "200.0 GB"

                            textStyle {
                                color: Color.create("#4A739F")
                                fontSize: FontSize.XLarge
                                fontWeight: FontWeight.W500
                            }
                        }
                    }
                }
                Container {
                    preferredHeight: 2
                    preferredWidth: 768

                    background: Color.create("#595D5E")
                }
                Container {
                    id: downloadContainer
                    objectName: "downloadContainer"

                    layout: StackLayout {
                        orientation: LayoutOrientation.LeftToRight
                    }

                    preferredHeight: 200
                    preferredWidth: 768

                    background: Color.create("#F5F5F5")

                    Container {
                        layout: DockLayout {
                        }
                        background: Color.create("#A1A332")
                        preferredHeight: 200
                        preferredWidth: 200

                        ImageView {
                            preferredHeight: 125
                            preferredWidth: 125

                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center

                            imageSource: "asset:///images/download.png"
                        }
                    }
                    Container {
                        preferredHeight: 200
                        preferredWidth: 2
                        background: Color.create("#595D5E")
                    }
                    Container {
                        layout: DockLayout {
                        }

                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center

                            text: "60.0 GB"

                            textStyle {
                                color: Color.create("#A1A332")
                                fontSize: FontSize.XLarge
                                fontWeight: FontWeight.W500
                            }
                        }
                    }
                }
            }
        } //End of StackLayout
    } //End of first tab
    Tab { //Second tab
        title: qsTr("") + Retranslate.onLocaleOrLanguageChanged
        Page {
            Container {
                Label {
                    text: qsTr("Second tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of second tab
}
