.class public Lcom/android/server/wm/DisplaySettings;
.super Ljava/lang/Object;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplaySettings$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplaySettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@a
    .line 60
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@d
    move-result-object v0

    #@e
    .line 61
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@10
    const-string/jumbo v2, "system"

    #@13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 62
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    #@18
    new-instance v3, Ljava/io/File;

    #@1a
    const-string/jumbo v4, "display_settings.xml"

    #@1d
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@23
    iput-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@25
    .line 59
    return-void
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 165
    const/4 v3, 0x0

    #@2
    :try_start_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 166
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    :cond_0
    return v2

    #@d
    .line 167
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 174
    const-string/jumbo v2, "name"

    #@4
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 175
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .line 176
    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@c
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    #@f
    .line 177
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string/jumbo v2, "overscanLeft"

    #@12
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@18
    .line 178
    const-string/jumbo v2, "overscanTop"

    #@1b
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@21
    .line 179
    const-string/jumbo v2, "overscanRight"

    #@24
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@2a
    .line 180
    const-string/jumbo v2, "overscanBottom"

    #@2d
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@30
    move-result v2

    #@31
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@33
    .line 181
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@35
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 183
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    .line 173
    return-void
.end method


# virtual methods
.method public getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 69
    if-eqz p2, :cond_0

    #@3
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@b
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_1

    #@d
    .line 70
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@15
    .line 72
    .restart local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_1
    if-eqz v0, :cond_2

    #@17
    .line 73
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@19
    iput v1, p3, Landroid/graphics/Rect;->left:I

    #@1b
    .line 74
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@1d
    iput v1, p3, Landroid/graphics/Rect;->top:I

    #@1f
    .line 75
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@21
    iput v1, p3, Landroid/graphics/Rect;->right:I

    #@23
    .line 76
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@25
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    #@27
    .line 65
    :goto_0
    return-void

    #@28
    .line 78
    :cond_2
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@2b
    goto :goto_0
.end method

.method public readSettingsLocked()V
    .locals 17

    #@0
    .prologue
    .line 103
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@4
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@7
    move-result-object v10

    #@8
    .line 109
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@9
    .line 111
    .local v11, "success":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v9

    #@d
    .line 112
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f
    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@12
    move-result-object v14

    #@13
    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@16
    .line 114
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@19
    move-result v13

    #@1a
    .local v13, "type":I
    const/4 v14, 0x2

    #@1b
    if-eq v13, v14, :cond_1

    #@1d
    .line 115
    const/4 v14, 0x1

    #@1e
    if-ne v13, v14, :cond_0

    #@20
    .line 119
    :cond_1
    const/4 v14, 0x2

    #@21
    if-eq v13, v14, :cond_3

    #@23
    .line 120
    new-instance v14, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v15, "no start tag found"

    #@28
    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v14
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 140
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    #@2d
    .line 141
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v14, "WindowManager"

    #@30
    new-instance v15, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v16, "Failed parsing "

    #@38
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v15

    #@3c
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v15

    #@40
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v15

    #@44
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 153
    if-nez v11, :cond_2

    #@49
    .line 154
    move-object/from16 v0, p0

    #@4b
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@4d
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@50
    .line 157
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    #@53
    .line 100
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    #@54
    .line 104
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    #@55
    .line 105
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v14, "WindowManager"

    #@58
    new-instance v15, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v16, "No existing display settings "

    #@60
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v15

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@68
    move-object/from16 v16, v0

    #@6a
    invoke-virtual/range {v16 .. v16}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@6d
    move-result-object v16

    #@6e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v15

    #@72
    .line 106
    const-string/jumbo v16, "; starting empty"

    #@75
    .line 105
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v15

    #@79
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v15

    #@7d
    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 107
    return-void

    #@81
    .line 123
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@84
    move-result v8

    #@85
    .line 124
    .local v8, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@88
    move-result v13

    #@89
    const/4 v14, 0x1

    #@8a
    if-eq v13, v14, :cond_9

    #@8c
    .line 125
    const/4 v14, 0x3

    #@8d
    if-ne v13, v14, :cond_5

    #@8f
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@92
    move-result v14

    #@93
    if-le v14, v8, :cond_9

    #@95
    .line 126
    :cond_5
    const/4 v14, 0x3

    #@96
    if-eq v13, v14, :cond_4

    #@98
    const/4 v14, 0x4

    #@99
    if-eq v13, v14, :cond_4

    #@9b
    .line 130
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9e
    move-result-object v12

    #@9f
    .line 131
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "display"

    #@a2
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v14

    #@a6
    if-eqz v14, :cond_7

    #@a8
    .line 132
    move-object/from16 v0, p0

    #@aa
    invoke-direct {v0, v9}, Lcom/android/server/wm/DisplaySettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ad
    goto :goto_1

    #@ae
    .line 142
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    #@af
    .line 143
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_5
    const-string/jumbo v14, "WindowManager"

    #@b2
    new-instance v15, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v16, "Failed parsing "

    #@ba
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v15

    #@be
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v15

    #@c2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v15

    #@c6
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c9
    .line 153
    if-nez v11, :cond_6

    #@cb
    .line 154
    move-object/from16 v0, p0

    #@cd
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@cf
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@d2
    .line 157
    :cond_6
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@d5
    goto/16 :goto_0

    #@d7
    .line 158
    :catch_3
    move-exception v2

    #@d8
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@da
    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_7
    const-string/jumbo v14, "WindowManager"

    #@dd
    new-instance v15, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v16, "Unknown element under <display-settings>: "

    #@e5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v15

    #@e9
    .line 135
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@ec
    move-result-object v16

    #@ed
    .line 134
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v15

    #@f1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v15

    #@f5
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    .line 136
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@fb
    goto :goto_1

    #@fc
    .line 144
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    #@fd
    .line 145
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string/jumbo v14, "WindowManager"

    #@100
    new-instance v15, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v16, "Failed parsing "

    #@108
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v15

    #@10c
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v15

    #@110
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v15

    #@114
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@117
    .line 153
    if-nez v11, :cond_8

    #@119
    .line 154
    move-object/from16 v0, p0

    #@11b
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@11d
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@120
    .line 157
    :cond_8
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    #@123
    goto/16 :goto_0

    #@125
    .line 158
    :catch_5
    move-exception v2

    #@126
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@128
    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_9
    const/4 v11, 0x1

    #@129
    .line 153
    if-nez v11, :cond_a

    #@12b
    .line 154
    move-object/from16 v0, p0

    #@12d
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@12f
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@132
    .line 157
    :cond_a
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@135
    goto/16 :goto_0

    #@137
    .line 158
    :catch_6
    move-exception v2

    #@138
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@13a
    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_7
    move-exception v4

    #@13b
    .line 151
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    const-string/jumbo v14, "WindowManager"

    #@13e
    new-instance v15, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v16, "Failed parsing "

    #@146
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v15

    #@14a
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v15

    #@14e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v15

    #@152
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@155
    .line 153
    if-nez v11, :cond_b

    #@157
    .line 154
    move-object/from16 v0, p0

    #@159
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@15b
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@15e
    .line 157
    :cond_b
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    #@161
    goto/16 :goto_0

    #@163
    .line 158
    :catch_8
    move-exception v2

    #@164
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@166
    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_9
    move-exception v2

    #@167
    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v14, "WindowManager"

    #@16a
    new-instance v15, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string/jumbo v16, "Failed parsing "

    #@172
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v15

    #@176
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v15

    #@17a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v15

    #@17e
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@181
    .line 153
    if-nez v11, :cond_c

    #@183
    .line 154
    move-object/from16 v0, p0

    #@185
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@187
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@18a
    .line 157
    :cond_c
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    #@18d
    goto/16 :goto_0

    #@18f
    .line 158
    :catch_a
    move-exception v2

    #@190
    goto/16 :goto_0

    #@192
    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v7

    #@193
    .line 147
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f
    const-string/jumbo v14, "WindowManager"

    #@196
    new-instance v15, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v16, "Failed parsing "

    #@19e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v15

    #@1a2
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v15

    #@1a6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v15

    #@1aa
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@1ad
    .line 153
    if-nez v11, :cond_d

    #@1af
    .line 154
    move-object/from16 v0, p0

    #@1b1
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@1b3
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@1b6
    .line 157
    :cond_d
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    #@1b9
    goto/16 :goto_0

    #@1bb
    .line 158
    :catch_c
    move-exception v2

    #@1bc
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@1be
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    #@1bf
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@1c1
    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    #@1c2
    .line 153
    if-nez v11, :cond_e

    #@1c4
    .line 154
    move-object/from16 v0, p0

    #@1c6
    iget-object v15, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@1c8
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    #@1cb
    .line 157
    :cond_e
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    #@1ce
    .line 152
    :goto_2
    throw v14

    #@1cf
    .line 158
    :catch_e
    move-exception v2

    #@1d0
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public setOverscanLocked(Ljava/lang/String;IIII)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 83
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    if-nez p4, :cond_0

    #@6
    if-nez p5, :cond_0

    #@8
    .line 86
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 87
    return-void

    #@e
    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@16
    .line 90
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_1

    #@18
    .line 91
    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@1a
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    #@1d
    .line 92
    .restart local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 94
    :cond_1
    iput p2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@24
    .line 95
    iput p3, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@26
    .line 96
    iput p4, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@28
    .line 97
    iput p5, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@2a
    .line 82
    return-void
.end method

.method public writeSettingsLocked()V
    .locals 8

    #@0
    .prologue
    .line 189
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    move-result-object v4

    #@6
    .line 196
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@8
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@b
    .line 197
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@14
    .line 198
    const/4 v5, 0x1

    #@15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@18
    move-result-object v5

    #@19
    const/4 v6, 0x0

    #@1a
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1d
    .line 199
    const-string/jumbo v5, "display-settings"

    #@20
    const/4 v6, 0x0

    #@21
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 201
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@26
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@29
    move-result-object v5

    #@2a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_4

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Lcom/android/server/wm/DisplaySettings$Entry;

    #@3a
    .line 202
    .local v1, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string/jumbo v5, "display"

    #@3d
    const/4 v6, 0x0

    #@3e
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 203
    const-string/jumbo v5, "name"

    #@44
    iget-object v6, v1, Lcom/android/server/wm/DisplaySettings$Entry;->name:Ljava/lang/String;

    #@46
    const/4 v7, 0x0

    #@47
    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 204
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@4c
    if-eqz v5, :cond_0

    #@4e
    .line 205
    const-string/jumbo v5, "overscanLeft"

    #@51
    iget v6, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@53
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    const/4 v7, 0x0

    #@58
    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5b
    .line 207
    :cond_0
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@5d
    if-eqz v5, :cond_1

    #@5f
    .line 208
    const-string/jumbo v5, "overscanTop"

    #@62
    iget v6, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@64
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    const/4 v7, 0x0

    #@69
    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 210
    :cond_1
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@6e
    if-eqz v5, :cond_2

    #@70
    .line 211
    const-string/jumbo v5, "overscanRight"

    #@73
    iget v6, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@75
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    const/4 v7, 0x0

    #@7a
    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7d
    .line 213
    :cond_2
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@7f
    if-eqz v5, :cond_3

    #@81
    .line 214
    const-string/jumbo v5, "overscanBottom"

    #@84
    iget v6, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@86
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    const/4 v7, 0x0

    #@8b
    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8e
    .line 216
    :cond_3
    const-string/jumbo v5, "display"

    #@91
    const/4 v6, 0x0

    #@92
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@95
    goto :goto_0

    #@96
    .line 222
    .end local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    #@97
    .line 223
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "WindowManager"

    #@9a
    const-string/jumbo v6, "Failed to write display settings, restoring backup."

    #@9d
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a0
    .line 224
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@a2
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@a5
    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    #@a6
    .line 190
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@a7
    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "WindowManager"

    #@aa
    new-instance v6, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v7, "Failed to write display settings: "

    #@b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v6

    #@b6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 192
    return-void

    #@c2
    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string/jumbo v5, "display-settings"

    #@c5
    const/4 v6, 0x0

    #@c6
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c9
    .line 220
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@cc
    .line 221
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@ce
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@d1
    goto :goto_1
.end method
