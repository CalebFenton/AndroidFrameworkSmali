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
.field private static final greylist-max-o COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EventLog"

.field private static final greylist-max-o TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final greylist-max-o TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static greylist-max-o sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 66
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getTagCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 424
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 425
    sget-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 426
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, -0x1

    :goto_13
    return v1
.end method

.method public static whitelist getTagName(I)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # I

    .line 414
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 415
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static native whitelist readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
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

.method public static native whitelist readEventsOnWrapping([IJLjava/util/Collection;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection<",
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

.method private static declared-synchronized greylist-max-o readTagsFile()V
    .registers 10

    const-class v0, Landroid/util/EventLog;

    monitor-enter v0

    .line 434
    :try_start_3
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    sget-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_ba

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 436
    :cond_d
    :try_start_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 439
    const-string v1, "^\\s*(#.*)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 440
    .local v1, "comment":Ljava/util/regex/Pattern;
    const-string v2, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_ba

    .line 441
    .local v2, "tag":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 445
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_28
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/etc/event-log-tags"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    .line 446
    :goto_37
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_98

    .line 447
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_37

    .line 449
    :cond_49
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 450
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 451
    const-string v6, "EventLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6b} :catch_a0
    .catchall {:try_start_28 .. :try_end_6b} :catchall_9e

    .line 452
    goto :goto_37

    .line 456
    :cond_6c
    const/4 v6, 0x1

    :try_start_6d
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 457
    .local v6, "num":I
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "name":Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_7d} :catch_7e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7d} :catch_a0
    .catchall {:try_start_6d .. :try_end_7d} :catchall_9e

    .line 461
    .end local v6    # "num":I
    .end local v7    # "name":Ljava/lang/String;
    goto :goto_97

    .line 459
    :catch_7e
    move-exception v6

    .line 460
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_7f
    const-string v7, "EventLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_97} :catch_a0
    .catchall {:try_start_7f .. :try_end_97} :catchall_9e

    .line 462
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_97
    goto :goto_37

    .line 467
    :cond_98
    :try_start_98
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catchall {:try_start_98 .. :try_end_9b} :catchall_ba

    goto :goto_b0

    :catch_9c
    move-exception v4

    .line 468
    goto :goto_b0

    .line 467
    .end local v5    # "line":Ljava/lang/String;
    :catchall_9e
    move-exception v4

    goto :goto_b2

    .line 463
    :catch_a0
    move-exception v4

    .line 464
    .local v4, "e":Ljava/io/IOException;
    :try_start_a1
    const-string v5, "EventLog"

    const-string v6, "Error reading /system/etc/event-log-tags"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_9e

    .line 467
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_b0

    :try_start_aa
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ba

    goto :goto_b0

    :catch_ae
    move-exception v4

    .line 468
    nop

    .line 469
    :cond_b0
    :goto_b0
    monitor-exit v0

    return-void

    .line 467
    :goto_b2
    if-eqz v3, :cond_b9

    :try_start_b4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_ba

    goto :goto_b9

    :catch_b8
    move-exception v5

    .line 468
    :cond_b9
    :goto_b9
    :try_start_b9
    throw v4

    .line 433
    .end local v1    # "comment":Ljava/util/regex/Pattern;
    .end local v2    # "tag":Ljava/util/regex/Pattern;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_ba
    move-exception v1

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method private static declared-synchronized blacklist readTagsFile$ravenwood()V
    .registers 3

    const-class v0, Landroid/util/EventLog;

    monitor-enter v0

    .line 478
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 479
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 482
    const-string/jumbo v1, "sysui_action"

    const/high16 v2, 0x80000

    invoke-static {v2, v1}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V

    .line 483
    const-string/jumbo v1, "sysui_count"

    const v2, 0x80002

    invoke-static {v2, v1}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V

    .line 484
    const-string/jumbo v1, "sysui_histogram"

    const v2, 0x80003

    invoke-static {v2, v1}, Landroid/util/EventLog;->registerTagLocked(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    .line 485
    monitor-exit v0

    return-void

    .line 477
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private static blacklist registerTagLocked(ILjava/lang/String;)V
    .registers 4
    .param p0, "num"    # I
    .param p1, "name"    # Ljava/lang/String;

    .line 472
    sget-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public static native whitelist writeEvent(IF)I
.end method

.method public static native whitelist writeEvent(II)I
.end method

.method public static native whitelist writeEvent(IJ)I
.end method

.method public static native whitelist writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native whitelist writeEvent(I[Ljava/lang/Object;)I
.end method
