.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v12, Ljava/util/HashMap;

    #@5
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@a
    .line 82
    move-object/from16 v0, p1

    #@c
    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 83
    new-instance v12, Landroid/util/AtomicFile;

    #@10
    new-instance v13, Ljava/io/File;

    #@12
    const-string/jumbo v14, "packages-compat.xml"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    invoke-direct {v12, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@1d
    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@1f
    .line 84
    new-instance v12, Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@24
    move-result-object v13

    #@25
    invoke-direct {v12, p0, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    #@28
    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@2a
    .line 86
    const/4 v6, 0x0

    #@2b
    .line 88
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@2d
    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@30
    move-result-object v6

    #@31
    .line 89
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@34
    move-result-object v9

    #@35
    .line 90
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@37
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3a
    move-result-object v12

    #@3b
    invoke-interface {v9, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@3e
    .line 91
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@41
    move-result v5

    #@42
    .line 92
    .local v5, "eventType":I
    :goto_0
    const/4 v12, 0x2

    #@43
    if-eq v5, v12, :cond_0

    #@45
    .line 93
    const/4 v12, 0x1

    #@46
    if-eq v5, v12, :cond_0

    #@48
    .line 94
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result v5

    #@4c
    goto :goto_0

    #@4d
    .line 96
    :cond_0
    const/4 v12, 0x1

    #@4e
    if-ne v5, v12, :cond_2

    #@50
    .line 131
    if-eqz v6, :cond_1

    #@52
    .line 133
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@55
    .line 97
    :cond_1
    :goto_1
    return-void

    #@56
    .line 134
    :catch_0
    move-exception v4

    #@57
    .local v4, "e1":Ljava/io/IOException;
    goto :goto_1

    #@58
    .line 100
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    .line 101
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "compat-packages"

    #@5f
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v12

    #@63
    if-eqz v12, :cond_6

    #@65
    .line 102
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@68
    move-result v5

    #@69
    .line 104
    :cond_3
    const/4 v12, 0x2

    #@6a
    if-ne v5, v12, :cond_5

    #@6c
    .line 105
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    .line 106
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@73
    move-result v12

    #@74
    const/4 v13, 0x2

    #@75
    if-ne v12, v13, :cond_5

    #@77
    .line 107
    const-string/jumbo v12, "pkg"

    #@7a
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v12

    #@7e
    if-eqz v12, :cond_5

    #@80
    .line 108
    const-string/jumbo v12, "name"

    #@83
    const/4 v13, 0x0

    #@84
    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    .line 109
    .local v10, "pkg":Ljava/lang/String;
    if-eqz v10, :cond_5

    #@8a
    .line 110
    const-string/jumbo v12, "mode"

    #@8d
    const/4 v13, 0x0

    #@8e
    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@91
    move-result-object v7

    #@92
    .line 111
    .local v7, "mode":Ljava/lang/String;
    const/4 v8, 0x0

    #@93
    .line 112
    .local v8, "modeInt":I
    if-eqz v7, :cond_4

    #@95
    .line 114
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    move-result v8

    #@99
    .line 118
    :cond_4
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@9b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v13

    #@9f
    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    .line 123
    .end local v7    # "mode":Ljava/lang/String;
    .end local v8    # "modeInt":I
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a5
    move-result v5

    #@a6
    .line 124
    const/4 v12, 0x1

    #@a7
    if-ne v5, v12, :cond_3

    #@a9
    .line 131
    :cond_6
    if-eqz v6, :cond_7

    #@ab
    .line 133
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@ae
    .line 81
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    #@af
    .line 115
    .restart local v5    # "eventType":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "mode":Ljava/lang/String;
    .restart local v8    # "modeInt":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@b0
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    #@b1
    .line 134
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "mode":Ljava/lang/String;
    .end local v8    # "modeInt":I
    .end local v10    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v4

    #@b2
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    #@b3
    .line 128
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v1

    #@b4
    .line 129
    .local v1, "e":Ljava/io/IOException;
    if-eqz v6, :cond_8

    #@b6
    :try_start_6
    const-string/jumbo v12, "ActivityManager"

    #@b9
    const-string/jumbo v13, "Error reading compat-packages"

    #@bc
    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@bf
    .line 131
    :cond_8
    if-eqz v6, :cond_7

    #@c1
    .line 133
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@c4
    goto :goto_3

    #@c5
    .line 134
    :catch_4
    move-exception v4

    #@c6
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    #@c7
    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v3

    #@c8
    .line 127
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    const-string/jumbo v12, "ActivityManager"

    #@cb
    const-string/jumbo v13, "Error reading compat-packages"

    #@ce
    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d1
    .line 131
    if-eqz v6, :cond_7

    #@d3
    .line 133
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@d6
    goto :goto_3

    #@d7
    .line 134
    :catch_6
    move-exception v4

    #@d8
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    #@d9
    .line 130
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    #@da
    .line 131
    if-eqz v6, :cond_9

    #@dc
    .line 133
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@df
    .line 130
    :cond_9
    :goto_4
    throw v12

    #@e0
    .line 134
    :catch_7
    move-exception v4

    #@e1
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_4
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 146
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 16
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 274
    move-object/from16 v0, p1

    #@2
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4
    .line 276
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6
    invoke-direct {v0, v10}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@9
    move-result v4

    #@a
    .line 279
    .local v4, "curFlags":I
    packed-switch p2, :pswitch_data_0

    #@d
    .line 290
    const-string/jumbo v13, "ActivityManager"

    #@10
    new-instance v14, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v15, "Unknown screen compat mode req #"

    #@18
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v14

    #@1c
    move/from16 v0, p2

    #@1e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v14

    #@22
    const-string/jumbo v15, "; ignoring"

    #@25
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v14

    #@29
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v14

    #@2d
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 291
    return-void

    #@31
    .line 281
    :pswitch_0
    const/4 v6, 0x0

    #@32
    .line 294
    .local v6, "enable":Z
    :goto_0
    move v9, v4

    #@33
    .line 295
    .local v9, "newFlags":I
    if-eqz v6, :cond_4

    #@35
    .line 296
    or-int/lit8 v9, v9, 0x2

    #@37
    .line 301
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@3a
    move-result-object v3

    #@3b
    .line 302
    .local v3, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@3e
    move-result v13

    #@3f
    if-eqz v13, :cond_0

    #@41
    .line 303
    const-string/jumbo v13, "ActivityManager"

    #@44
    new-instance v14, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v15, "Ignoring compat mode change of "

    #@4c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v14

    #@50
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v14

    #@54
    .line 304
    const-string/jumbo v15, "; compatibility never needed"

    #@57
    .line 303
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v14

    #@5f
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 305
    const/4 v9, 0x0

    #@63
    .line 307
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@66
    move-result v13

    #@67
    if-eqz v13, :cond_1

    #@69
    .line 308
    const-string/jumbo v13, "ActivityManager"

    #@6c
    new-instance v14, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v15, "Ignoring compat mode change of "

    #@74
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v14

    #@78
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v14

    #@7c
    .line 309
    const-string/jumbo v15, "; compatibility always needed"

    #@7f
    .line 308
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v14

    #@83
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v14

    #@87
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 310
    const/4 v9, 0x0

    #@8b
    .line 313
    :cond_1
    if-eq v9, v4, :cond_8

    #@8d
    .line 314
    if-eqz v9, :cond_5

    #@8f
    .line 315
    move-object/from16 v0, p0

    #@91
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@93
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v14

    #@97
    invoke-virtual {v13, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 321
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@9d
    move-result-object v3

    #@9e
    .line 323
    move-object/from16 v0, p0

    #@a0
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@a2
    const/16 v14, 0x12c

    #@a4
    invoke-virtual {v13, v14}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    #@a7
    .line 324
    move-object/from16 v0, p0

    #@a9
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@ab
    const/16 v14, 0x12c

    #@ad
    invoke-virtual {v13, v14}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    #@b0
    move-result-object v8

    #@b1
    .line 325
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@b3
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@b5
    const-wide/16 v14, 0x2710

    #@b7
    invoke-virtual {v13, v8, v14, v15}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@ba
    .line 327
    move-object/from16 v0, p0

    #@bc
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@be
    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@c1
    move-result-object v11

    #@c2
    .line 328
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    #@c5
    move-result-object v12

    #@c6
    .line 331
    .local v12, "starting":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@c8
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ca
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@cc
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@cf
    move-result v13

    #@d0
    add-int/lit8 v7, v13, -0x1

    #@d2
    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_7

    #@d4
    .line 332
    move-object/from16 v0, p0

    #@d6
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d8
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@da
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@dd
    move-result-object v2

    #@de
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    #@e0
    .line 333
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@e2
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@e5
    move-result v13

    #@e6
    if-nez v13, :cond_6

    #@e8
    .line 331
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, -0x1

    #@ea
    goto :goto_3

    #@eb
    .line 284
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "enable":Z
    .end local v7    # "i":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "newFlags":I
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    const/4 v6, 0x1

    #@ec
    .line 285
    .restart local v6    # "enable":Z
    goto/16 :goto_0

    #@ee
    .line 287
    .end local v6    # "enable":Z
    :pswitch_2
    and-int/lit8 v13, v4, 0x2

    #@f0
    if-nez v13, :cond_3

    #@f2
    const/4 v6, 0x1

    #@f3
    .restart local v6    # "enable":Z
    goto/16 :goto_0

    #@f5
    .end local v6    # "enable":Z
    :cond_3
    const/4 v6, 0x0

    #@f6
    .restart local v6    # "enable":Z
    goto/16 :goto_0

    #@f8
    .line 298
    .restart local v9    # "newFlags":I
    :cond_4
    and-int/lit8 v9, v9, -0x3

    #@fa
    goto/16 :goto_1

    #@fc
    .line 317
    .restart local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_5
    move-object/from16 v0, p0

    #@fe
    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@100
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    goto :goto_2

    #@104
    .line 337
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "i":I
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_6
    :try_start_0
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@106
    if-eqz v13, :cond_2

    #@108
    .line 340
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@10a
    invoke-interface {v13, v10, v3}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10d
    goto :goto_4

    #@10e
    .line 342
    :catch_0
    move-exception v5

    #@10f
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_4

    #@110
    .line 346
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz v12, :cond_8

    #@112
    .line 347
    const/4 v13, 0x0

    #@113
    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    #@116
    .line 350
    const/4 v13, 0x0

    #@117
    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@11a
    .line 273
    .end local v7    # "i":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-void

    #@11b
    .line 279
    nop

    #@11c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    #@3
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@7
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    #@9
    .line 176
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@d
    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@f
    .line 177
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@14
    move-result v4

    #@15
    and-int/lit8 v4, v4, 0x2

    #@17
    if-eqz v4, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    .line 175
    :cond_0
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    #@1d
    .line 179
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 183
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@6
    move-result v3

    #@7
    and-int/lit8 v3, v3, 0x2

    #@9
    if-eqz v3, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 184
    .local v0, "enabled":Z
    :goto_0
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    #@e
    .line 185
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@12
    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    #@14
    .line 186
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@18
    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@1a
    .line 184
    invoke-direct {v1, p1, v3, v4, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    #@1d
    .line 187
    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 188
    const/4 v2, -0x2

    #@24
    return v2

    #@25
    .line 183
    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_0
    const/4 v0, 0x0

    #@26
    .restart local v0    # "enabled":Z
    goto :goto_0

    #@27
    .line 190
    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 191
    const/4 v2, -0x1

    #@2e
    return v2

    #@2f
    .line 193
    :cond_2
    if-eqz v0, :cond_3

    #@31
    const/4 v2, 0x1

    #@32
    :cond_3
    return v2
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 198
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@a
    move-result-object v0

    #@b
    .line 199
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@d
    .line 200
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 202
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 232
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@a
    move-result-object v0

    #@b
    .line 233
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@d
    .line 234
    const/4 v1, -0x3

    #@e
    return v1

    #@f
    .line 236
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@11
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    .line 251
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 254
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 255
    const/4 v2, -0x3

    #@e
    return v2

    #@f
    .line 257
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 252
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@15
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    #@0
    .prologue
    const/16 v8, 0x12c

    #@2
    .line 150
    const/4 v0, 0x0

    #@3
    .line 152
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@6
    move-result-object v5

    #@7
    const/4 v6, 0x0

    #@8
    const/4 v7, 0x0

    #@9
    invoke-interface {v5, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v0

    #@d
    .line 155
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    #@f
    .line 156
    return-void

    #@10
    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@13
    move-result-object v1

    #@14
    .line 159
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_3

    #@1a
    .line 160
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_2

    #@20
    const/4 v3, 0x0

    #@21
    .line 162
    .local v3, "mayCompat":Z
    :goto_1
    if-eqz p2, :cond_1

    #@23
    .line 165
    if-nez v3, :cond_1

    #@25
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@27
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 166
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 167
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@34
    invoke-virtual {v5, v8}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    #@37
    .line 168
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@39
    invoke-virtual {v5, v8}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    #@3c
    move-result-object v4

    #@3d
    .line 169
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@3f
    const-wide/16 v6, 0x2710

    #@41
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@44
    .line 149
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    #@45
    .line 160
    .end local v3    # "mayCompat":Z
    :cond_2
    const/4 v3, 0x1

    #@46
    .restart local v3    # "mayCompat":Z
    goto :goto_1

    #@47
    .line 159
    .end local v3    # "mayCompat":Z
    :cond_3
    const/4 v3, 0x0

    #@48
    .restart local v3    # "mayCompat":Z
    goto :goto_1

    #@49
    .line 153
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "mayCompat":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@4a
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method saveCompatModes()V
    .locals 20

    #@0
    .prologue
    .line 357
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v18, v0

    #@6
    monitor-enter v18

    #@7
    .line 358
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@d
    move-object/from16 v17, v0

    #@f
    move-object/from16 v0, v17

    #@11
    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v13, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v18

    #@15
    .line 361
    const/4 v7, 0x0

    #@16
    .line 364
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@1a
    move-object/from16 v17, v0

    #@1c
    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@1f
    move-result-object v7

    #@20
    .line 365
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    #@22
    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@25
    .line 366
    .local v11, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@27
    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@2a
    move-result-object v17

    #@2b
    move-object/from16 v0, v17

    #@2d
    invoke-interface {v11, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@30
    .line 367
    const/16 v17, 0x1

    #@32
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@35
    move-result-object v17

    #@36
    const/16 v18, 0x0

    #@38
    move-object/from16 v0, v18

    #@3a
    move-object/from16 v1, v17

    #@3c
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@3f
    .line 368
    const-string/jumbo v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@42
    const/16 v18, 0x1

    #@44
    move-object/from16 v0, v17

    #@46
    move/from16 v1, v18

    #@48
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@4b
    .line 369
    const-string/jumbo v17, "compat-packages"

    #@4e
    const/16 v18, 0x0

    #@50
    move-object/from16 v0, v18

    #@52
    move-object/from16 v1, v17

    #@54
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 371
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@5a
    move-result-object v14

    #@5b
    .line 372
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5f
    move-object/from16 v17, v0

    #@61
    move-object/from16 v0, v17

    #@63
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@65
    move-object/from16 v17, v0

    #@67
    move-object/from16 v0, v17

    #@69
    iget v15, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@6b
    .line 373
    .local v15, "screenLayout":I
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6f
    move-object/from16 v17, v0

    #@71
    move-object/from16 v0, v17

    #@73
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@75
    move-object/from16 v17, v0

    #@77
    move-object/from16 v0, v17

    #@79
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@7b
    move/from16 v16, v0

    #@7d
    .line 374
    .local v16, "smallestScreenWidthDp":I
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@80
    move-result-object v17

    #@81
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v9

    #@85
    .line 375
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v17

    #@89
    if-eqz v17, :cond_2

    #@8b
    .line 376
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v6

    #@8f
    check-cast v6, Ljava/util/Map$Entry;

    #@91
    .line 377
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@94
    move-result-object v12

    #@95
    check-cast v12, Ljava/lang/String;

    #@97
    .line 378
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9a
    move-result-object v17

    #@9b
    check-cast v17, Ljava/lang/Integer;

    #@9d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a0
    move-result v10

    #@a1
    .line 379
    .local v10, "mode":I
    if-eqz v10, :cond_0

    #@a3
    .line 382
    const/4 v3, 0x0

    #@a4
    .line 384
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x0

    #@a6
    const/16 v18, 0x0

    #@a8
    :try_start_2
    move/from16 v0, v17

    #@aa
    move/from16 v1, v18

    #@ac
    invoke-interface {v14, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@af
    move-result-object v3

    #@b0
    .line 387
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v3, :cond_0

    #@b2
    .line 390
    :try_start_3
    new-instance v8, Landroid/content/res/CompatibilityInfo;

    #@b4
    .line 391
    const/16 v17, 0x0

    #@b6
    .line 390
    move/from16 v0, v16

    #@b8
    move/from16 v1, v17

    #@ba
    invoke-direct {v8, v3, v15, v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    #@bd
    .line 392
    .local v8, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@c0
    move-result v17

    #@c1
    if-nez v17, :cond_0

    #@c3
    .line 395
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@c6
    move-result v17

    #@c7
    if-nez v17, :cond_0

    #@c9
    .line 398
    const-string/jumbo v17, "pkg"

    #@cc
    const/16 v18, 0x0

    #@ce
    move-object/from16 v0, v18

    #@d0
    move-object/from16 v1, v17

    #@d2
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d5
    .line 399
    const-string/jumbo v17, "name"

    #@d8
    const/16 v18, 0x0

    #@da
    move-object/from16 v0, v18

    #@dc
    move-object/from16 v1, v17

    #@de
    invoke-interface {v11, v0, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e1
    .line 400
    const-string/jumbo v17, "mode"

    #@e4
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e7
    move-result-object v18

    #@e8
    const/16 v19, 0x0

    #@ea
    move-object/from16 v0, v19

    #@ec
    move-object/from16 v1, v17

    #@ee
    move-object/from16 v2, v18

    #@f0
    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f3
    .line 401
    const-string/jumbo v17, "pkg"

    #@f6
    const/16 v18, 0x0

    #@f8
    move-object/from16 v0, v18

    #@fa
    move-object/from16 v1, v17

    #@fc
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@ff
    goto :goto_0

    #@100
    .line 408
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v10    # "mode":I
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v15    # "screenLayout":I
    .end local v16    # "smallestScreenWidthDp":I
    :catch_0
    move-exception v5

    #@101
    .line 409
    .local v5, "e1":Ljava/io/IOException;
    const-string/jumbo v17, "ActivityManager"

    #@104
    const-string/jumbo v18, "Error writing compat packages"

    #@107
    move-object/from16 v0, v17

    #@109
    move-object/from16 v1, v18

    #@10b
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10e
    .line 410
    if-eqz v7, :cond_1

    #@110
    .line 411
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@114
    move-object/from16 v17, v0

    #@116
    move-object/from16 v0, v17

    #@118
    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@11b
    .line 355
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    #@11c
    .line 357
    .end local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v17

    #@11d
    monitor-exit v18

    #@11e
    throw v17

    #@11f
    .line 385
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v10    # "mode":I
    .restart local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "screenLayout":I
    .restart local v16    # "smallestScreenWidthDp":I
    :catch_1
    move-exception v4

    #@120
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@121
    .line 404
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mode":I
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v17, "compat-packages"

    #@124
    const/16 v18, 0x0

    #@126
    move-object/from16 v0, v18

    #@128
    move-object/from16 v1, v17

    #@12a
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12d
    .line 405
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@130
    .line 407
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@134
    move-object/from16 v17, v0

    #@136
    move-object/from16 v0, v17

    #@138
    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@13b
    goto :goto_2
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .locals 3
    .param p1, "ask"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 210
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@a
    move-result-object v0

    #@b
    .line 211
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@d
    .line 212
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@f
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    #@12
    .line 209
    :cond_0
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 240
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@a
    move-result-object v0

    #@b
    .line 241
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@d
    .line 242
    const-string/jumbo v1, "ActivityManager"

    #@10
    const-string/jumbo v2, "setFrontActivityScreenCompatMode failed: no top activity"

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 243
    return-void

    #@17
    .line 245
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    #@1e
    .line 239
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    #@0
    .prologue
    const/16 v5, 0x12c

    #@2
    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 218
    .local v0, "curFlags":I
    if-eqz p2, :cond_1

    #@8
    and-int/lit8 v2, v0, -0x2

    #@a
    .line 219
    .local v2, "newFlags":I
    :goto_0
    if-eq v0, v2, :cond_0

    #@c
    .line 220
    if-eqz v2, :cond_2

    #@e
    .line 221
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 225
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@19
    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    #@1c
    .line 226
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@1e
    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    .line 227
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@24
    const-wide/16 v4, 0x2710

    #@26
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@29
    .line 216
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    #@2a
    .line 218
    .end local v2    # "newFlags":I
    :cond_1
    or-int/lit8 v2, v0, 0x1

    #@2c
    .restart local v2    # "newFlags":I
    goto :goto_0

    #@2d
    .line 223
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_1
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    .line 263
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 266
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 267
    const-string/jumbo v2, "ActivityManager"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "setPackageScreenCompatMode failed: unknown package "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 268
    return-void

    #@28
    .line 270
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    #@2b
    .line 260
    return-void

    #@2c
    .line 264
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@2d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
