.class public Landroid/net/connectivity/org/chromium/base/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final blacklist ASSERT:I = 0x7

.field public static final blacklist DEBUG:I = 0x3

.field public static final blacklist ERROR:I = 0x6

.field public static final blacklist INFO:I = 0x4

.field public static final blacklist VERBOSE:I = 0x2

.field public static final blacklist WARN:I = 0x5


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static varargs blacklist d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 114
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 116
    :cond_8
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/Log;->getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 117
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {p1, v0, p2}, Landroid/net/connectivity/org/chromium/base/Log;->formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    if-eqz v0, :cond_1a

    .line 120
    invoke-static {p0, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 122
    :cond_1a
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_1d
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 519
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;

    .line 528
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 529
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;

    .line 540
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 541
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;

    .line 554
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 555
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;

    .line 579
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 580
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 581
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;

    .line 607
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 608
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 610
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;

    .line 640
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 641
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 643
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;
    .param p8, "t"    # Ljava/lang/Throwable;

    .line 665
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 666
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 668
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {p0, v0, p8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "t"    # Ljava/lang/Throwable;

    .line 623
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 624
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 626
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {p0, v0, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 593
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 594
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 595
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {p0, v0, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;

    .line 566
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 567
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 568
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {p0, v0, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 547
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 548
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 534
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 535
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 523
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    return-void
.end method

.method public static varargs blacklist e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 502
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/Log;->getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 503
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {p1, v0, p2}, Landroid/net/connectivity/org/chromium/base/Log;->formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 505
    if-eqz v0, :cond_12

    .line 506
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 508
    :cond_12
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_15
    return-void
.end method

.method private static varargs blacklist formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "messageTemplate"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 49
    if-eqz p2, :cond_11

    if-nez p1, :cond_7

    array-length v0, p2

    if-gtz v0, :cond_b

    :cond_7
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    .line 50
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_11
    return-object p0
.end method

.method public static blacklist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 863
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "args"    # [Ljava/lang/Object;

    .line 867
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_15

    .line 869
    :cond_7
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    .line 871
    .local v1, "lastArg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-nez v2, :cond_11

    return-object v0

    .line 872
    :cond_11
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 867
    .end local v1    # "lastArg":Ljava/lang/Object;
    :cond_15
    :goto_15
    return-object v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 154
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;

    .line 163
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 164
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;

    .line 175
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;

    .line 189
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;

    .line 214
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 215
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 216
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;

    .line 242
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 245
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;

    .line 275
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 276
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 278
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;
    .param p8, "t"    # Ljava/lang/Throwable;

    .line 300
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 303
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {p0, v0, p8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "t"    # Ljava/lang/Throwable;

    .line 258
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 259
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 261
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {p0, v0, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 228
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 230
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {p0, v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;

    .line 201
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 203
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {p0, v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 182
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 169
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 170
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 158
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    return-void
.end method

.method public static varargs blacklist i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/Log;->getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 138
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {p1, v0, p2}, Landroid/net/connectivity/org/chromium/base/Log;->formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    if-eqz v0, :cond_12

    .line 141
    invoke-static {p0, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 143
    :cond_12
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_15
    return-void
.end method

.method public static blacklist isLoggable(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .line 77
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_DEBUG_LOGS:Z

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 91
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 93
    :cond_8
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/Log;->getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 94
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {p1, v0, p2}, Landroid/net/connectivity/org/chromium/base/Log;->formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    if-eqz v0, :cond_1a

    .line 97
    invoke-static {p0, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 99
    :cond_1a
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_1d
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 337
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;

    .line 346
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;

    .line 358
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 359
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;

    .line 372
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 373
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;

    .line 397
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 398
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 399
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;

    .line 425
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 426
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 428
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;

    .line 458
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 459
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 461
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;
    .param p8, "t"    # Ljava/lang/Throwable;

    .line 483
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 484
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 486
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {p0, v0, p8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "t"    # Ljava/lang/Throwable;

    .line 441
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 442
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 444
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {p0, v0, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 411
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 412
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 413
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {p0, v0, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;

    .line 384
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 386
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {p0, v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 365
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 352
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 353
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 341
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    return-void
.end method

.method public static varargs blacklist w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 320
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/Log;->getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 321
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {p1, v0, p2}, Landroid/net/connectivity/org/chromium/base/Log;->formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 323
    if-eqz v0, :cond_12

    .line 324
    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 326
    :cond_12
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_15
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 705
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;

    .line 715
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 716
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;

    .line 727
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 728
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;

    .line 741
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 742
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 743
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;

    .line 767
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 768
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 769
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;

    .line 795
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 796
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 798
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;

    .line 828
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 829
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 831
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "param6"    # Ljava/lang/Object;
    .param p8, "t"    # Ljava/lang/Throwable;

    .line 853
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 854
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    .line 856
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {p0, v0, p8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "param5"    # Ljava/lang/Object;
    .param p7, "t"    # Ljava/lang/Throwable;

    .line 811
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 812
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 814
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {p0, v0, p7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "param4"    # Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 781
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 782
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 783
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-static {p0, v0, p6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "param3"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;

    .line 754
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 755
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    .line 756
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-static {p0, v0, p5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 734
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 735
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 721
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 722
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 710
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 688
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/Log;->getThrowableToLog([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 689
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {p1, v0, p2}, Landroid/net/connectivity/org/chromium/base/Log;->formatLog(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 691
    if-eqz v0, :cond_12

    .line 692
    invoke-static {p0, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 694
    :cond_12
    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_15
    return-void
.end method
