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
.field private static final TAG:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@5
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@a
    .line 65
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@d
    move-result-object v0

    #@e
    .line 66
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@10
    const-string/jumbo v2, "system"

    #@13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 67
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
    .line 64
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
    .line 173
    const/4 v3, 0x0

    #@2
    :try_start_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 174
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
    .line 175
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 176
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
    .line 182
    const-string/jumbo v2, "name"

    #@4
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 183
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .line 184
    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@c
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    #@f
    .line 185
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string/jumbo v2, "overscanLeft"

    #@12
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@18
    .line 186
    const-string/jumbo v2, "overscanTop"

    #@1b
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@21
    .line 187
    const-string/jumbo v2, "overscanRight"

    #@24
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@2a
    .line 188
    const-string/jumbo v2, "overscanBottom"

    #@2d
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@30
    move-result v2

    #@31
    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@33
    .line 189
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@35
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 191
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    .line 181
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
    .line 74
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
    .line 75
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
    .line 77
    .restart local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_1
    if-eqz v0, :cond_2

    #@17
    .line 78
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@19
    iput v1, p3, Landroid/graphics/Rect;->left:I

    #@1b
    .line 79
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@1d
    iput v1, p3, Landroid/graphics/Rect;->top:I

    #@1f
    .line 80
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@21
    iput v1, p3, Landroid/graphics/Rect;->right:I

    #@23
    .line 81
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@25
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    #@27
    .line 70
    :goto_0
    return-void

    #@28
    .line 83
    :cond_2
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@2b
    goto :goto_0
.end method

.method public readSettingsLocked()V
    .locals 17

    #@0
    .prologue
    .line 111
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
    .line 117
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@9
    .line 119
    .local v11, "success":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v9

    #@d
    .line 120
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f
    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@12
    move-result-object v14

    #@13
    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@16
    .line 122
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
    .line 123
    const/4 v14, 0x1

    #@1e
    if-ne v13, v14, :cond_0

    #@20
    .line 127
    :cond_1
    const/4 v14, 0x2

    #@21
    if-eq v13, v14, :cond_3

    #@23
    .line 128
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
    .line 148
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    #@2d
    .line 149
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@2f
    new-instance v15, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v16, "Failed parsing "

    #@37
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v15

    #@3b
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v15

    #@3f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v15

    #@43
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 161
    if-nez v11, :cond_2

    #@48
    .line 162
    move-object/from16 v0, p0

    #@4a
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@4c
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@4f
    .line 165
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    #@52
    .line 108
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    #@53
    .line 112
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    #@54
    .line 113
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@56
    new-instance v15, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v16, "No existing display settings "

    #@5e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v15

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@66
    move-object/from16 v16, v0

    #@68
    invoke-virtual/range {v16 .. v16}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@6b
    move-result-object v16

    #@6c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v15

    #@70
    .line 114
    const-string/jumbo v16, "; starting empty"

    #@73
    .line 113
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v15

    #@77
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v15

    #@7b
    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 115
    return-void

    #@7f
    .line 131
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@82
    move-result v8

    #@83
    .line 132
    .local v8, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@86
    move-result v13

    #@87
    const/4 v14, 0x1

    #@88
    if-eq v13, v14, :cond_9

    #@8a
    .line 133
    const/4 v14, 0x3

    #@8b
    if-ne v13, v14, :cond_5

    #@8d
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@90
    move-result v14

    #@91
    if-le v14, v8, :cond_9

    #@93
    .line 134
    :cond_5
    const/4 v14, 0x3

    #@94
    if-eq v13, v14, :cond_4

    #@96
    const/4 v14, 0x4

    #@97
    if-eq v13, v14, :cond_4

    #@99
    .line 138
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9c
    move-result-object v12

    #@9d
    .line 139
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "display"

    #@a0
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v14

    #@a4
    if-eqz v14, :cond_7

    #@a6
    .line 140
    move-object/from16 v0, p0

    #@a8
    invoke-direct {v0, v9}, Lcom/android/server/wm/DisplaySettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ab
    goto :goto_1

    #@ac
    .line 150
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    #@ad
    .line 151
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_5
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@af
    new-instance v15, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v16, "Failed parsing "

    #@b7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v15

    #@bb
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v15

    #@bf
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v15

    #@c3
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c6
    .line 161
    if-nez v11, :cond_6

    #@c8
    .line 162
    move-object/from16 v0, p0

    #@ca
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@cc
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@cf
    .line 165
    :cond_6
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@d2
    goto :goto_0

    #@d3
    .line 166
    :catch_3
    move-exception v2

    #@d4
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@d6
    .line 142
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_7
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@d8
    new-instance v15, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v16, "Unknown element under <display-settings>: "

    #@e0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v15

    #@e4
    .line 143
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e7
    move-result-object v16

    #@e8
    .line 142
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v15

    #@ec
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v15

    #@f0
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 144
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@f6
    goto :goto_1

    #@f7
    .line 152
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    #@f8
    .line 153
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@fa
    new-instance v15, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v16, "Failed parsing "

    #@102
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v15

    #@106
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v15

    #@10a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v15

    #@10e
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@111
    .line 161
    if-nez v11, :cond_8

    #@113
    .line 162
    move-object/from16 v0, p0

    #@115
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@117
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@11a
    .line 165
    :cond_8
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    #@11d
    goto/16 :goto_0

    #@11f
    .line 166
    :catch_5
    move-exception v2

    #@120
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@122
    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_9
    const/4 v11, 0x1

    #@123
    .line 161
    if-nez v11, :cond_a

    #@125
    .line 162
    move-object/from16 v0, p0

    #@127
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@129
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@12c
    .line 165
    :cond_a
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@12f
    goto/16 :goto_0

    #@131
    .line 166
    :catch_6
    move-exception v2

    #@132
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@134
    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_7
    move-exception v4

    #@135
    .line 159
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@137
    new-instance v15, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v16, "Failed parsing "

    #@13f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v15

    #@143
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v15

    #@147
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v15

    #@14b
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@14e
    .line 161
    if-nez v11, :cond_b

    #@150
    .line 162
    move-object/from16 v0, p0

    #@152
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@154
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@157
    .line 165
    :cond_b
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    #@15a
    goto/16 :goto_0

    #@15c
    .line 166
    :catch_8
    move-exception v2

    #@15d
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@15f
    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_9
    move-exception v2

    #@160
    .line 157
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_d
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@162
    new-instance v15, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v16, "Failed parsing "

    #@16a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v15

    #@16e
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v15

    #@172
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v15

    #@176
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@179
    .line 161
    if-nez v11, :cond_c

    #@17b
    .line 162
    move-object/from16 v0, p0

    #@17d
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@17f
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@182
    .line 165
    :cond_c
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    #@185
    goto/16 :goto_0

    #@187
    .line 166
    :catch_a
    move-exception v2

    #@188
    goto/16 :goto_0

    #@18a
    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v7

    #@18b
    .line 155
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f
    sget-object v14, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@18d
    new-instance v15, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    const-string/jumbo v16, "Failed parsing "

    #@195
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v15

    #@199
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v15

    #@19d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v15

    #@1a1
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@1a4
    .line 161
    if-nez v11, :cond_d

    #@1a6
    .line 162
    move-object/from16 v0, p0

    #@1a8
    iget-object v14, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@1aa
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@1ad
    .line 165
    :cond_d
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    #@1b0
    goto/16 :goto_0

    #@1b2
    .line 166
    :catch_c
    move-exception v2

    #@1b3
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@1b5
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    #@1b6
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@1b8
    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    #@1b9
    .line 161
    if-nez v11, :cond_e

    #@1bb
    .line 162
    move-object/from16 v0, p0

    #@1bd
    iget-object v15, v0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@1bf
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    #@1c2
    .line 165
    :cond_e
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    #@1c5
    .line 160
    :goto_2
    throw v14

    #@1c6
    .line 166
    :catch_e
    move-exception v2

    #@1c7
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public setOverscanLocked(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    #@0
    .prologue
    .line 89
    if-nez p3, :cond_0

    #@2
    if-nez p4, :cond_0

    #@4
    if-nez p5, :cond_0

    #@6
    if-nez p6, :cond_0

    #@8
    .line 92
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@f
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 95
    return-void

    #@13
    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@1b
    .line 98
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_1

    #@1d
    .line 99
    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    #@1f
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    #@22
    .line 100
    .restart local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    #@24
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 102
    :cond_1
    iput p3, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@29
    .line 103
    iput p4, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@2b
    .line 104
    iput p5, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@2d
    .line 105
    iput p6, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@2f
    .line 88
    return-void
.end method

.method public writeSettingsLocked()V
    .locals 8

    #@0
    .prologue
    .line 197
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    move-result-object v4

    #@6
    .line 204
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@8
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@b
    .line 205
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@14
    .line 206
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
    .line 207
    const-string/jumbo v5, "display-settings"

    #@20
    const/4 v6, 0x0

    #@21
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 209
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
    .line 210
    .local v1, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string/jumbo v5, "display"

    #@3d
    const/4 v6, 0x0

    #@3e
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 211
    const-string/jumbo v5, "name"

    #@44
    iget-object v6, v1, Lcom/android/server/wm/DisplaySettings$Entry;->name:Ljava/lang/String;

    #@46
    const/4 v7, 0x0

    #@47
    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 212
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    #@4c
    if-eqz v5, :cond_0

    #@4e
    .line 213
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
    .line 215
    :cond_0
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    #@5d
    if-eqz v5, :cond_1

    #@5f
    .line 216
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
    .line 218
    :cond_1
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    #@6e
    if-eqz v5, :cond_2

    #@70
    .line 219
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
    .line 221
    :cond_2
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    #@7f
    if-eqz v5, :cond_3

    #@81
    .line 222
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
    .line 224
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
    .line 230
    .end local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    #@97
    .line 231
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@99
    const-string/jumbo v6, "Failed to write display settings, restoring backup."

    #@9c
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    .line 232
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@a1
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@a4
    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    #@a5
    .line 198
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@a6
    .line 199
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/wm/DisplaySettings;->TAG:Ljava/lang/String;

    #@a8
    new-instance v6, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v7, "Failed to write display settings: "

    #@b0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v6

    #@b8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    .line 200
    return-void

    #@c0
    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string/jumbo v5, "display-settings"

    #@c3
    const/4 v6, 0x0

    #@c4
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c7
    .line 228
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@ca
    .line 229
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    #@cc
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@cf
    goto :goto_1
.end method
