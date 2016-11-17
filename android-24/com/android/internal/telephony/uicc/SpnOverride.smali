.class public Lcom/android/internal/telephony/uicc/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final OEM_SPN_OVERRIDE_PATH:Ljava/lang/String; = "telephony/spn-conf.xml"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"


# instance fields
.field private mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    #@a
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadSpnOverrides()V

    #@d
    .line 42
    return-void
.end method

.method private loadSpnOverrides()V
    .locals 19

    #@0
    .prologue
    .line 58
    new-instance v12, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@5
    move-result-object v16

    #@6
    .line 59
    const-string/jumbo v17, "etc/spn-conf.xml"

    #@9
    .line 58
    move-object/from16 v0, v16

    #@b
    move-object/from16 v1, v17

    #@d
    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 60
    .local v12, "spnFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    #@12
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@15
    move-result-object v16

    #@16
    .line 61
    const-string/jumbo v17, "telephony/spn-conf.xml"

    #@19
    .line 60
    move-object/from16 v0, v16

    #@1b
    move-object/from16 v1, v17

    #@1d
    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    .line 63
    .local v8, "oemSpnFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    #@23
    move-result v16

    #@24
    if-eqz v16, :cond_1

    #@26
    .line 65
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    #@29
    move-result-wide v10

    #@2a
    .line 66
    .local v10, "oemSpnTime":J
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    #@2d
    move-result-wide v14

    #@2e
    .line 67
    .local v14, "sysSpnTime":J
    const-string/jumbo v16, "SpnOverride"

    #@31
    new-instance v17, Ljava/lang/StringBuilder;

    #@33
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v18, "SPN Timestamp: oemTime = "

    #@39
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v17

    #@3d
    move-object/from16 v0, v17

    #@3f
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@42
    move-result-object v17

    #@43
    const-string/jumbo v18, " sysTime = "

    #@46
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v17

    #@4a
    move-object/from16 v0, v17

    #@4c
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v17

    #@50
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v17

    #@54
    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 70
    cmp-long v16, v10, v14

    #@59
    if-lez v16, :cond_0

    #@5b
    .line 71
    const-string/jumbo v16, "SpnOverride"

    #@5e
    const-string/jumbo v17, "SPN in OEM image is newer than System image"

    #@61
    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 72
    move-object v12, v8

    #@65
    .line 81
    .end local v10    # "oemSpnTime":J
    .end local v14    # "sysSpnTime":J
    :cond_0
    :goto_0
    :try_start_0
    new-instance v13, Ljava/io/FileReader;

    #@67
    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 88
    .local v13, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@6d
    move-result-object v9

    #@6e
    .line 89
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@71
    .line 91
    const-string/jumbo v16, "spnOverrides"

    #@74
    move-object/from16 v0, v16

    #@76
    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@79
    .line 94
    :goto_1
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7c
    .line 96
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    .line 97
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v16, "spnOverride"

    #@83
    move-object/from16 v0, v16

    #@85
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v16

    #@89
    if-nez v16, :cond_2

    #@8b
    .line 106
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@8e
    .line 55
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    return-void

    #@8f
    .line 76
    .end local v13    # "spnReader":Ljava/io/FileReader;
    :cond_1
    const-string/jumbo v16, "SpnOverride"

    #@92
    new-instance v17, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v18, "No SPN in OEM image = "

    #@9a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v17

    #@9e
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@a1
    move-result-object v18

    #@a2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v17

    #@a6
    .line 77
    const-string/jumbo v18, " Load SPN from system image"

    #@a9
    .line 76
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v17

    #@ad
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v17

    #@b1
    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    goto :goto_0

    #@b5
    .line 82
    :catch_0
    move-exception v3

    #@b6
    .line 83
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v16, "SpnOverride"

    #@b9
    new-instance v17, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v18, "Can not open "

    #@c1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v17

    #@c5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@c8
    move-result-object v18

    #@c9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v17

    #@cd
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v17

    #@d1
    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    .line 84
    return-void

    #@d5
    .line 101
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :cond_2
    :try_start_2
    const-string/jumbo v16, "numeric"

    #@d8
    const/16 v17, 0x0

    #@da
    move-object/from16 v0, v17

    #@dc
    move-object/from16 v1, v16

    #@de
    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v7

    #@e2
    .line 102
    .local v7, "numeric":Ljava/lang/String;
    const-string/jumbo v16, "spn"

    #@e5
    const/16 v17, 0x0

    #@e7
    move-object/from16 v0, v17

    #@e9
    move-object/from16 v1, v16

    #@eb
    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ee
    move-result-object v2

    #@ef
    .line 104
    .local v2, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    #@f3
    move-object/from16 v16, v0

    #@f5
    move-object/from16 v0, v16

    #@f7
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@fa
    goto/16 :goto_1

    #@fc
    .line 107
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    #@fd
    .line 108
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v16, "SpnOverride"

    #@100
    new-instance v17, Ljava/lang/StringBuilder;

    #@102
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v18, "Exception in spn-conf parser "

    #@108
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v17

    #@10c
    move-object/from16 v0, v17

    #@10e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v17

    #@112
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v17

    #@116
    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    goto/16 :goto_2

    #@11b
    .line 109
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    #@11c
    .line 110
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v16, "SpnOverride"

    #@11f
    new-instance v17, Ljava/lang/StringBuilder;

    #@121
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v18, "Exception in spn-conf parser "

    #@127
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v17

    #@12b
    move-object/from16 v0, v17

    #@12d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v17

    #@131
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v17

    #@135
    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@138
    goto/16 :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method
