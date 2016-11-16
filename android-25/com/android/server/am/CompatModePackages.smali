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

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field public static final UNSUPPORTED_ZOOM_FLAG_DONT_NOTIFY:I = 0x4


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
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@5
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/CompatModePackages;->TAG_CONFIGURATION:Ljava/lang/String;

    #@1c
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v12, Ljava/util/HashMap;

    #@5
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@a
    .line 85
    move-object/from16 v0, p1

    #@c
    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 86
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
    .line 87
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
    .line 89
    const/4 v6, 0x0

    #@2b
    .line 91
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@2d
    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@30
    move-result-object v6

    #@31
    .line 92
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@34
    move-result-object v9

    #@35
    .line 93
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@37
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3a
    move-result-object v12

    #@3b
    invoke-interface {v9, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@3e
    .line 94
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@41
    move-result v5

    #@42
    .line 95
    .local v5, "eventType":I
    :goto_0
    const/4 v12, 0x2

    #@43
    if-eq v5, v12, :cond_0

    #@45
    .line 96
    const/4 v12, 0x1

    #@46
    if-eq v5, v12, :cond_0

    #@48
    .line 97
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
    .line 99
    :cond_0
    const/4 v12, 0x1

    #@4e
    if-ne v5, v12, :cond_2

    #@50
    .line 134
    if-eqz v6, :cond_1

    #@52
    .line 136
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@55
    .line 100
    :cond_1
    :goto_1
    return-void

    #@56
    .line 137
    :catch_0
    move-exception v4

    #@57
    .local v4, "e1":Ljava/io/IOException;
    goto :goto_1

    #@58
    .line 103
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    .line 104
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "compat-packages"

    #@5f
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v12

    #@63
    if-eqz v12, :cond_6

    #@65
    .line 105
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@68
    move-result v5

    #@69
    .line 107
    :cond_3
    const/4 v12, 0x2

    #@6a
    if-ne v5, v12, :cond_5

    #@6c
    .line 108
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    .line 109
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@73
    move-result v12

    #@74
    const/4 v13, 0x2

    #@75
    if-ne v12, v13, :cond_5

    #@77
    .line 110
    const-string/jumbo v12, "pkg"

    #@7a
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v12

    #@7e
    if-eqz v12, :cond_5

    #@80
    .line 111
    const-string/jumbo v12, "name"

    #@83
    const/4 v13, 0x0

    #@84
    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    .line 112
    .local v10, "pkg":Ljava/lang/String;
    if-eqz v10, :cond_5

    #@8a
    .line 113
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
    .line 114
    .local v7, "mode":Ljava/lang/String;
    const/4 v8, 0x0

    #@93
    .line 115
    .local v8, "modeInt":I
    if-eqz v7, :cond_4

    #@95
    .line 117
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
    .line 121
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
    .line 126
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
    .line 127
    const/4 v12, 0x1

    #@a7
    if-ne v5, v12, :cond_3

    #@a9
    .line 134
    :cond_6
    if-eqz v6, :cond_7

    #@ab
    .line 136
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@ae
    .line 84
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    #@af
    .line 118
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
    .line 137
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
    .line 131
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v1

    #@b4
    .line 132
    .local v1, "e":Ljava/io/IOException;
    if-eqz v6, :cond_8

    #@b6
    :try_start_6
    sget-object v12, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@b8
    const-string/jumbo v13, "Error reading compat-packages"

    #@bb
    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@be
    .line 134
    :cond_8
    if-eqz v6, :cond_7

    #@c0
    .line 136
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@c3
    goto :goto_3

    #@c4
    .line 137
    :catch_4
    move-exception v4

    #@c5
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    #@c6
    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v3

    #@c7
    .line 130
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    sget-object v12, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@c9
    const-string/jumbo v13, "Error reading compat-packages"

    #@cc
    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@cf
    .line 134
    if-eqz v6, :cond_7

    #@d1
    .line 136
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@d4
    goto :goto_3

    #@d5
    .line 137
    :catch_6
    move-exception v4

    #@d6
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    #@d7
    .line 133
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    #@d8
    .line 134
    if-eqz v6, :cond_9

    #@da
    .line 136
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@dd
    .line 133
    :cond_9
    :goto_4
    throw v12

    #@de
    .line 137
    :catch_7
    move-exception v4

    #@df
    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_4
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 149
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

.method private removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 165
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 166
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    #@10
    .line 163
    :cond_0
    return-void
.end method

.method private scheduleWrite()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x12c

    #@2
    .line 194
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    #@7
    .line 195
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 196
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    #@f
    const-wide/16 v2, 0x2710

    #@11
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@14
    .line 193
    return-void
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 13
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 315
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2
    .line 317
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    .line 320
    .local v2, "curFlags":I
    packed-switch p2, :pswitch_data_0

    #@9
    .line 331
    sget-object v10, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@b
    new-instance v11, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v12, "Unknown screen compat mode req #"

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    const-string/jumbo v12, "; ignoring"

    #@1e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v11

    #@22
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v11

    #@26
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 332
    return-void

    #@2a
    .line 322
    :pswitch_0
    const/4 v4, 0x0

    #@2b
    .line 335
    .local v4, "enable":Z
    :goto_0
    move v6, v2

    #@2c
    .line 336
    .local v6, "newFlags":I
    if-eqz v4, :cond_4

    #@2e
    .line 337
    or-int/lit8 v6, v2, 0x2

    #@30
    .line 342
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@33
    move-result-object v1

    #@34
    .line 343
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@37
    move-result v10

    #@38
    if-eqz v10, :cond_0

    #@3a
    .line 344
    sget-object v10, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@3c
    new-instance v11, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v12, "Ignoring compat mode change of "

    #@44
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v11

    #@4c
    .line 345
    const-string/jumbo v12, "; compatibility never needed"

    #@4f
    .line 344
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v11

    #@57
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 346
    const/4 v6, 0x0

    #@5b
    .line 348
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@5e
    move-result v10

    #@5f
    if-eqz v10, :cond_1

    #@61
    .line 349
    sget-object v10, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@63
    new-instance v11, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v12, "Ignoring compat mode change of "

    #@6b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v11

    #@6f
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v11

    #@73
    .line 350
    const-string/jumbo v12, "; compatibility always needed"

    #@76
    .line 349
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v11

    #@7a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v11

    #@7e
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 351
    const/4 v6, 0x0

    #@82
    .line 354
    :cond_1
    if-eq v6, v2, :cond_8

    #@84
    .line 355
    if-eqz v6, :cond_5

    #@86
    .line 356
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v11

    #@8c
    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 362
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@92
    move-result-object v1

    #@93
    .line 364
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    #@96
    .line 366
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@98
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@9b
    move-result-object v8

    #@9c
    .line 367
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    #@9f
    move-result-object v9

    #@a0
    .line 370
    .local v9, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a2
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v10

    #@a8
    add-int/lit8 v5, v10, -0x1

    #@aa
    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_7

    #@ac
    .line 371
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ae
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    #@b0
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v0

    #@b4
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    #@b6
    .line 372
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@b8
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@bb
    move-result v10

    #@bc
    if-nez v10, :cond_6

    #@be
    .line 370
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, -0x1

    #@c0
    goto :goto_3

    #@c1
    .line 325
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v4    # "enable":Z
    .end local v5    # "i":I
    .end local v6    # "newFlags":I
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    const/4 v4, 0x1

    #@c2
    .line 326
    .restart local v4    # "enable":Z
    goto/16 :goto_0

    #@c4
    .line 328
    .end local v4    # "enable":Z
    :pswitch_2
    and-int/lit8 v10, v2, 0x2

    #@c6
    if-nez v10, :cond_3

    #@c8
    const/4 v4, 0x1

    #@c9
    .restart local v4    # "enable":Z
    goto/16 :goto_0

    #@cb
    .end local v4    # "enable":Z
    :cond_3
    const/4 v4, 0x0

    #@cc
    .restart local v4    # "enable":Z
    goto/16 :goto_0

    #@ce
    .line 339
    .restart local v6    # "newFlags":I
    :cond_4
    and-int/lit8 v6, v2, -0x3

    #@d0
    goto/16 :goto_1

    #@d2
    .line 358
    .restart local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_5
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@d4
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    goto :goto_2

    #@d8
    .line 376
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "i":I
    .restart local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_6
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@da
    if-eqz v10, :cond_2

    #@dc
    .line 379
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@de
    invoke-interface {v10, v7, v1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e1
    goto :goto_4

    #@e2
    .line 381
    :catch_0
    move-exception v3

    #@e3
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_4

    #@e4
    .line 385
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz v9, :cond_8

    #@e6
    .line 386
    const/4 v10, 0x0

    #@e7
    const/4 v11, 0x0

    #@e8
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    #@eb
    .line 389
    const/4 v10, 0x0

    #@ec
    const/4 v11, 0x0

    #@ed
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@f0
    .line 314
    .end local v5    # "i":I
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-void

    #@f1
    .line 320
    nop

    #@f2
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
    .line 200
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    #@3
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@7
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    #@9
    .line 201
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@d
    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@f
    .line 202
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
    .line 200
    :cond_0
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    #@1d
    .line 204
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
    .line 208
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
    .line 209
    .local v0, "enabled":Z
    :goto_0
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    #@e
    .line 210
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@12
    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    #@14
    .line 211
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@18
    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@1a
    .line 209
    invoke-direct {v1, p1, v3, v4, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    #@1d
    .line 212
    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 213
    const/4 v2, -0x2

    #@24
    return v2

    #@25
    .line 208
    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_0
    const/4 v0, 0x0

    #@26
    .restart local v0    # "enabled":Z
    goto :goto_0

    #@27
    .line 215
    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 216
    const/4 v2, -0x1

    #@2e
    return v2

    #@2f
    .line 218
    :cond_2
    if-eqz v0, :cond_3

    #@31
    const/4 v2, 0x1

    #@32
    :cond_3
    return v2
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .locals 2

    #@0
    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@9
    move-result-object v0

    #@a
    .line 224
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@c
    .line 225
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 227
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .locals 2

    #@0
    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@9
    move-result-object v0

    #@a
    .line 274
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@c
    .line 275
    const/4 v1, -0x3

    #@d
    return v1

    #@e
    .line 277
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 231
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

.method public getPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x4

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
    .line 290
    const/4 v0, 0x0

    #@1
    .line 292
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
    .line 295
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 296
    const/4 v2, -0x3

    #@e
    return v2

    #@f
    .line 298
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 293
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
    .line 144
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    .line 173
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v4

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 176
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 177
    return-void

    #@e
    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@11
    move-result-object v1

    #@12
    .line 180
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_3

    #@18
    .line 181
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    const/4 v3, 0x0

    #@1f
    .line 183
    .local v3, "mayCompat":Z
    :goto_1
    if-eqz p2, :cond_1

    #@21
    .line 186
    if-nez v3, :cond_1

    #@23
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@25
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 187
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 188
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    #@33
    .line 170
    :cond_1
    return-void

    #@34
    .line 181
    .end local v3    # "mayCompat":Z
    :cond_2
    const/4 v3, 0x1

    #@35
    .restart local v3    # "mayCompat":Z
    goto :goto_1

    #@36
    .line 180
    .end local v3    # "mayCompat":Z
    :cond_3
    const/4 v3, 0x0

    #@37
    .restart local v3    # "mayCompat":Z
    goto :goto_1

    #@38
    .line 174
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "mayCompat":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@39
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->removePackage(Ljava/lang/String;)V

    #@3
    .line 152
    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->removePackage(Ljava/lang/String;)V

    #@3
    .line 157
    return-void
.end method

.method saveCompatModes()V
    .locals 20

    #@0
    .prologue
    .line 396
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    move-object/from16 v18, v0

    #@6
    monitor-enter v18

    #@7
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a
    .line 397
    new-instance v13, Ljava/util/HashMap;

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@10
    move-object/from16 v17, v0

    #@12
    move-object/from16 v0, v17

    #@14
    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .local v13, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v18

    #@18
    .line 396
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1b
    .line 400
    const/4 v7, 0x0

    #@1c
    .line 403
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@20
    move-object/from16 v17, v0

    #@22
    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@25
    move-result-object v7

    #@26
    .line 404
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    #@28
    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@2b
    .line 405
    .local v11, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2d
    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@30
    move-result-object v17

    #@31
    move-object/from16 v0, v17

    #@33
    invoke-interface {v11, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@36
    .line 406
    const/16 v17, 0x1

    #@38
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3b
    move-result-object v17

    #@3c
    const/16 v18, 0x0

    #@3e
    move-object/from16 v0, v18

    #@40
    move-object/from16 v1, v17

    #@42
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@45
    .line 407
    const-string/jumbo v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@48
    const/16 v18, 0x1

    #@4a
    move-object/from16 v0, v17

    #@4c
    move/from16 v1, v18

    #@4e
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@51
    .line 408
    const-string/jumbo v17, "compat-packages"

    #@54
    const/16 v18, 0x0

    #@56
    move-object/from16 v0, v18

    #@58
    move-object/from16 v1, v17

    #@5a
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 410
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@60
    move-result-object v14

    #@61
    .line 411
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@65
    move-object/from16 v17, v0

    #@67
    move-object/from16 v0, v17

    #@69
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@6b
    move-object/from16 v17, v0

    #@6d
    move-object/from16 v0, v17

    #@6f
    iget v15, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@71
    .line 412
    .local v15, "screenLayout":I
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@75
    move-object/from16 v17, v0

    #@77
    move-object/from16 v0, v17

    #@79
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@7b
    move-object/from16 v17, v0

    #@7d
    move-object/from16 v0, v17

    #@7f
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@81
    move/from16 v16, v0

    #@83
    .line 413
    .local v16, "smallestScreenWidthDp":I
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@86
    move-result-object v17

    #@87
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8a
    move-result-object v9

    #@8b
    .line 414
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@8e
    move-result v17

    #@8f
    if-eqz v17, :cond_2

    #@91
    .line 415
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@94
    move-result-object v6

    #@95
    check-cast v6, Ljava/util/Map$Entry;

    #@97
    .line 416
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9a
    move-result-object v12

    #@9b
    check-cast v12, Ljava/lang/String;

    #@9d
    .line 417
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a0
    move-result-object v17

    #@a1
    check-cast v17, Ljava/lang/Integer;

    #@a3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a6
    move-result v10

    #@a7
    .line 418
    .local v10, "mode":I
    if-eqz v10, :cond_0

    #@a9
    .line 421
    const/4 v3, 0x0

    #@aa
    .line 423
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x0

    #@ac
    const/16 v18, 0x0

    #@ae
    :try_start_2
    move/from16 v0, v17

    #@b0
    move/from16 v1, v18

    #@b2
    invoke-interface {v14, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@b5
    move-result-object v3

    #@b6
    .line 426
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v3, :cond_0

    #@b8
    .line 429
    :try_start_3
    new-instance v8, Landroid/content/res/CompatibilityInfo;

    #@ba
    .line 430
    const/16 v17, 0x0

    #@bc
    .line 429
    move/from16 v0, v16

    #@be
    move/from16 v1, v17

    #@c0
    invoke-direct {v8, v3, v15, v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    #@c3
    .line 431
    .local v8, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@c6
    move-result v17

    #@c7
    if-nez v17, :cond_0

    #@c9
    .line 434
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@cc
    move-result v17

    #@cd
    if-nez v17, :cond_0

    #@cf
    .line 437
    const-string/jumbo v17, "pkg"

    #@d2
    const/16 v18, 0x0

    #@d4
    move-object/from16 v0, v18

    #@d6
    move-object/from16 v1, v17

    #@d8
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@db
    .line 438
    const-string/jumbo v17, "name"

    #@de
    const/16 v18, 0x0

    #@e0
    move-object/from16 v0, v18

    #@e2
    move-object/from16 v1, v17

    #@e4
    invoke-interface {v11, v0, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e7
    .line 439
    const-string/jumbo v17, "mode"

    #@ea
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ed
    move-result-object v18

    #@ee
    const/16 v19, 0x0

    #@f0
    move-object/from16 v0, v19

    #@f2
    move-object/from16 v1, v17

    #@f4
    move-object/from16 v2, v18

    #@f6
    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f9
    .line 440
    const-string/jumbo v17, "pkg"

    #@fc
    const/16 v18, 0x0

    #@fe
    move-object/from16 v0, v18

    #@100
    move-object/from16 v1, v17

    #@102
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@105
    goto :goto_0

    #@106
    .line 447
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

    #@107
    .line 448
    .local v5, "e1":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@109
    const-string/jumbo v18, "Error writing compat packages"

    #@10c
    move-object/from16 v0, v17

    #@10e
    move-object/from16 v1, v18

    #@110
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@113
    .line 449
    if-eqz v7, :cond_1

    #@115
    .line 450
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@119
    move-object/from16 v17, v0

    #@11b
    move-object/from16 v0, v17

    #@11d
    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@120
    .line 394
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    #@121
    .line 396
    .end local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v17

    #@122
    monitor-exit v18

    #@123
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@126
    throw v17

    #@127
    .line 424
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

    #@128
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@129
    .line 443
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mode":I
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v17, "compat-packages"

    #@12c
    const/16 v18, 0x0

    #@12e
    move-object/from16 v0, v18

    #@130
    move-object/from16 v1, v17

    #@132
    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@135
    .line 444
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@138
    .line 446
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    #@13c
    move-object/from16 v17, v0

    #@13e
    move-object/from16 v0, v17

    #@140
    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@143
    goto :goto_2
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .locals 2
    .param p1, "ask"    # Z

    #@0
    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@9
    move-result-object v0

    #@a
    .line 240
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@c
    .line 241
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@e
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    #@11
    .line 238
    :cond_0
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@9
    move-result-object v0

    #@a
    .line 282
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@c
    .line 283
    sget-object v1, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "setFrontActivityScreenCompatMode failed: no top activity"

    #@11
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 284
    return-void

    #@15
    .line 286
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@17
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    #@1c
    .line 280
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    #@0
    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 247
    .local v0, "curFlags":I
    if-eqz p2, :cond_1

    #@6
    and-int/lit8 v1, v0, -0x2

    #@8
    .line 248
    .local v1, "newFlags":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@a
    .line 249
    if-eqz v1, :cond_2

    #@c
    .line 250
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 254
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    #@18
    .line 245
    :cond_0
    return-void

    #@19
    .line 247
    .end local v1    # "newFlags":I
    :cond_1
    or-int/lit8 v1, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 252
    .restart local v1    # "newFlags":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_1
.end method

.method public setPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    #@0
    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 260
    .local v0, "curFlags":I
    if-eqz p2, :cond_1

    #@6
    and-int/lit8 v1, v0, -0x5

    #@8
    .line 262
    .local v1, "newFlags":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@a
    .line 263
    if-eqz v1, :cond_2

    #@c
    .line 264
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 268
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    #@18
    .line 258
    :cond_0
    return-void

    #@19
    .line 261
    .end local v1    # "newFlags":I
    :cond_1
    or-int/lit8 v1, v0, 0x4

    #@1b
    goto :goto_0

    #@1c
    .line 266
    .restart local v1    # "newFlags":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_1
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    .line 304
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
    .line 307
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 308
    sget-object v2, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "setPackageScreenCompatMode failed: unknown package "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 309
    return-void

    #@27
    .line 311
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    #@2a
    .line 301
    return-void

    #@2b
    .line 305
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@2c
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
