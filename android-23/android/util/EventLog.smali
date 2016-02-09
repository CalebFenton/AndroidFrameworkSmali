.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final TAG:Ljava/lang/String; = "EventLog"

.field private static final TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static sTagCodes:Ljava/util/HashMap;
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

.field private static sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    #@3
    .line 53
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    #@5
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getTagCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    #@3
    .line 234
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Integer;

    #@b
    .line 235
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v1

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    const/4 v1, -0x1

    #@13
    goto :goto_0
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 223
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    #@3
    .line 224
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    #@5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    return-object v0
.end method

.method public static native readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized readTagsFile()V
    .locals 14

    #@0
    .prologue
    const-class v11, Landroid/util/EventLog;

    #@2
    monitor-enter v11

    #@3
    .line 242
    :try_start_0
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    #@5
    if-eqz v10, :cond_0

    #@7
    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    if-eqz v10, :cond_0

    #@b
    monitor-exit v11

    #@c
    return-void

    #@d
    .line 244
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    #@f
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@12
    sput-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    #@14
    .line 245
    new-instance v10, Ljava/util/HashMap;

    #@16
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@19
    sput-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    #@1b
    .line 247
    const-string/jumbo v10, "^\\s*(#.*)?$"

    #@1e
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@21
    move-result-object v0

    #@22
    .line 248
    .local v0, "comment":Ljava/util/regex/Pattern;
    const-string/jumbo v10, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    #@25
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    move-result-object v9

    #@29
    .line 249
    .local v9, "tag":Ljava/util/regex/Pattern;
    const/4 v7, 0x0

    #@2a
    .line 253
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    #@2c
    new-instance v10, Ljava/io/FileReader;

    #@2e
    const-string/jumbo v12, "/system/etc/event-log-tags"

    #@31
    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@34
    const/16 v12, 0x100

    #@36
    invoke-direct {v8, v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@39
    .line 254
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_5

    #@3f
    .line 255
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    #@46
    move-result v10

    #@47
    if-nez v10, :cond_1

    #@49
    .line 257
    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@4c
    move-result-object v4

    #@4d
    .line 258
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@50
    move-result v10

    #@51
    if-nez v10, :cond_3

    #@53
    .line 259
    const-string/jumbo v10, "EventLog"

    #@56
    new-instance v12, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v13, "Bad entry in /system/etc/event-log-tags: "

    #@5e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v12

    #@62
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v12

    #@66
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    invoke-static {v10, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 272
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v1

    #@6f
    .local v1, "e":Ljava/io/IOException;
    move-object v7, v8

    #@70
    .line 273
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_4
    const-string/jumbo v10, "EventLog"

    #@73
    const-string/jumbo v12, "Error reading /system/etc/event-log-tags"

    #@76
    invoke-static {v10, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@79
    .line 276
    if-eqz v7, :cond_2

    #@7b
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@7e
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    monitor-exit v11

    #@7f
    .line 241
    return-void

    #@80
    .line 264
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_3
    const/4 v10, 0x1

    #@81
    :try_start_6
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@84
    move-result-object v10

    #@85
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@88
    move-result v6

    #@89
    .line 265
    .local v6, "num":I
    const/4 v10, 0x2

    #@8a
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    .line 266
    .local v5, "name":Ljava/lang/String;
    sget-object v10, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    #@90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v10, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 267
    sget-object v10, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    #@99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v12

    #@9d
    invoke-virtual {v10, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a0
    goto :goto_0

    #@a1
    .line 268
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "num":I
    :catch_1
    move-exception v2

    #@a2
    .line 269
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string/jumbo v10, "EventLog"

    #@a5
    new-instance v12, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v13, "Error in /system/etc/event-log-tags: "

    #@ad
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v12

    #@b1
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v12

    #@b5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v12

    #@b9
    invoke-static {v10, v12, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@bc
    goto/16 :goto_0

    #@be
    .line 275
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v10

    #@bf
    move-object v7, v8

    #@c0
    .line 276
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v7, :cond_4

    #@c2
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@c5
    .line 275
    :cond_4
    :goto_4
    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@c6
    .end local v9    # "tag":Ljava/util/regex/Pattern;
    :catchall_1
    move-exception v10

    #@c7
    monitor-exit v11

    #@c8
    throw v10

    #@c9
    .line 276
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tag":Ljava/util/regex/Pattern;
    :cond_5
    if-eqz v8, :cond_6

    #@cb
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@ce
    :cond_6
    :goto_5
    move-object v7, v8

    #@cf
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    #@d0
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    #@d1
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@d2
    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    #@d3
    goto :goto_2

    #@d4
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    #@d5
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@d6
    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v10

    #@d7
    goto :goto_3

    #@d8
    .line 272
    .local v7, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    #@d9
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static native writeEvent(IF)I
.end method

.method public static native writeEvent(II)I
.end method

.method public static native writeEvent(IJ)I
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native writeEvent(I[Ljava/lang/Object;)I
.end method
