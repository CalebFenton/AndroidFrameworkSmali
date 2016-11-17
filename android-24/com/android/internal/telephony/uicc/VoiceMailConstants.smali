.class Lcom/android/internal/telephony/uicc/VoiceMailConstants;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VoiceMailConstants"

.field static final NAME:I = 0x0

.field static final NUMBER:I = 0x1

.field static final PARTNER_VOICEMAIL_PATH:Ljava/lang/String; = "etc/voicemail-conf.xml"

.field static final SIZE:I = 0x3

.field static final TAG:I = 0x2


# instance fields
.field private CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    #@a
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    #@d
    .line 49
    return-void
.end method

.method private loadVoiceMail()V
    .locals 12

    #@0
    .prologue
    .line 76
    new-instance v7, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@5
    move-result-object v9

    #@6
    .line 77
    const-string/jumbo v10, "etc/voicemail-conf.xml"

    #@9
    .line 76
    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 80
    .local v7, "vmFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    #@e
    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 88
    .local v8, "vmReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@14
    move-result-object v6

    #@15
    .line 89
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@18
    .line 91
    const-string/jumbo v9, "voicemail"

    #@1b
    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@1e
    .line 94
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@21
    .line 96
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 97
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "voicemail"

    #@28
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v9

    #@2c
    if-nez v9, :cond_1

    #@2e
    .line 115
    if-eqz v8, :cond_0

    #@30
    .line 116
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@33
    .line 73
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    return-void

    #@34
    .line 81
    .end local v8    # "vmReader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    #@35
    .line 82
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "VoiceMailConstants"

    #@38
    new-instance v10, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v11, "Can\'t open "

    #@40
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    .line 83
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@47
    move-result-object v11

    #@48
    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v10

    #@4c
    .line 83
    const-string/jumbo v11, "/"

    #@4f
    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    .line 83
    const-string/jumbo v11, "etc/voicemail-conf.xml"

    #@56
    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 84
    return-void

    #@62
    .line 101
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "vmReader":Ljava/io/FileReader;
    :cond_1
    const/4 v9, 0x3

    #@63
    :try_start_3
    new-array v0, v9, [Ljava/lang/String;

    #@65
    .line 102
    .local v0, "data":[Ljava/lang/String;
    const-string/jumbo v9, "numeric"

    #@68
    const/4 v10, 0x0

    #@69
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    .line 103
    .local v5, "numeric":Ljava/lang/String;
    const-string/jumbo v9, "carrier"

    #@70
    const/4 v10, 0x0

    #@71
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    const/4 v10, 0x0

    #@76
    aput-object v9, v0, v10

    #@78
    .line 104
    const-string/jumbo v9, "vmnumber"

    #@7b
    const/4 v10, 0x0

    #@7c
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    const/4 v10, 0x1

    #@81
    aput-object v9, v0, v10

    #@83
    .line 105
    const-string/jumbo v9, "vmtag"

    #@86
    const/4 v10, 0x0

    #@87
    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    const/4 v10, 0x2

    #@8c
    aput-object v9, v0, v10

    #@8e
    .line 107
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    #@90
    invoke-virtual {v9, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    goto :goto_0

    #@94
    .line 109
    .end local v0    # "data":[Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    #@95
    .line 110
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string/jumbo v9, "VoiceMailConstants"

    #@98
    new-instance v10, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v11, "Exception in Voicemail parser "

    #@a0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v10

    #@a4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v10

    #@a8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v10

    #@ac
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@af
    .line 115
    if-eqz v8, :cond_0

    #@b1
    .line 116
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@b4
    goto/16 :goto_1

    #@b6
    .line 118
    :catch_2
    move-exception v2

    #@b7
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_1

    #@b9
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    #@ba
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    #@bc
    .line 111
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    #@bd
    .line 112
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v9, "VoiceMailConstants"

    #@c0
    new-instance v10, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v11, "Exception in Voicemail parser "

    #@c8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v10

    #@cc
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v10

    #@d4
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d7
    .line 115
    if-eqz v8, :cond_0

    #@d9
    .line 116
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@dc
    goto/16 :goto_1

    #@de
    .line 118
    :catch_5
    move-exception v2

    #@df
    goto/16 :goto_1

    #@e1
    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    #@e2
    .line 115
    if-eqz v8, :cond_2

    #@e4
    .line 116
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    #@e7
    .line 113
    :cond_2
    :goto_2
    throw v9

    #@e8
    .line 118
    :catch_6
    move-exception v2

    #@e9
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    .line 60
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    aget-object v1, v0, v1

    #@b
    return-object v1
.end method

.method getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    .line 65
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x1

    #@9
    aget-object v1, v0, v1

    #@b
    return-object v1
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    .line 70
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x2

    #@9
    aget-object v1, v0, v1

    #@b
    return-object v1
.end method
