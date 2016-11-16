.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TimeZone$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field public static final LONG:I = 0x1

.field static final NO_TIMEZONE:Ljava/util/TimeZone; = null

.field public static final SHORT:I = 0x0

.field private static final UTC:Ljava/util/TimeZone;

.field private static volatile defaultTimeZone:Ljava/util/TimeZone; = null

.field static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 170
    new-instance v0, Ljava/util/SimpleTimeZone;

    #@3
    const-string/jumbo v1, "GMT"

    #@6
    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@9
    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    #@b
    .line 171
    new-instance v0, Ljava/util/SimpleTimeZone;

    #@d
    const-string/jumbo v1, "UTC"

    #@10
    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@13
    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    #@15
    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendNumber(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 448
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 449
    .local v1, "string":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    sub-int v2, p1, v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 450
    const/16 v2, 0x30

    #@f
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 449
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 452
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 447
    return-void
.end method

.method public static createGmtOffsetString(ZZI)Ljava/lang/String;
    .locals 5
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 428
    const v3, 0xea60

    #@4
    div-int v1, p2, v3

    #@6
    .line 429
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    #@8
    .line 430
    .local v2, "sign":C
    if-gez v1, :cond_0

    #@a
    .line 431
    const/16 v2, 0x2d

    #@c
    .line 432
    neg-int v1, v1

    #@d
    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const/16 v3, 0x9

    #@11
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@14
    .line 435
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    #@16
    .line 436
    const-string/jumbo v3, "GMT"

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 438
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 439
    div-int/lit8 v3, v1, 0x3c

    #@21
    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    #@24
    .line 440
    if-eqz p1, :cond_2

    #@26
    .line 441
    const/16 v3, 0x3a

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 443
    :cond_2
    rem-int/lit8 v3, v1, 0x3c

    #@2d
    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    #@30
    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/TimeZone;

    #@2
    monitor-enter v1

    #@3
    .line 633
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .locals 2
    .param p0, "rawOffset"    # I

    #@0
    .prologue
    const-class v1, Ljava/util/TimeZone;

    #@2
    monitor-enter v1

    #@3
    .line 625
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 13
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v9, 0x3

    #@4
    .line 584
    sget-object v7, Ljava/util/TimeZone$NoImagePreloadHolder;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v3

    #@a
    .line 585
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@d
    move-result v7

    #@e
    if-nez v7, :cond_0

    #@10
    .line 586
    return-object v8

    #@11
    .line 590
    :cond_0
    const/4 v4, 0x0

    #@12
    .line 592
    .local v4, "minute":I
    const/4 v7, 0x1

    #@13
    :try_start_0
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    .line 593
    .local v1, "hour":I
    const/4 v7, 0x3

    #@1c
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    if-eqz v7, :cond_1

    #@22
    .line 594
    const/4 v7, 0x3

    #@23
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v4

    #@2b
    .line 600
    :cond_1
    if-ltz v1, :cond_2

    #@2d
    const/16 v7, 0x17

    #@2f
    if-le v1, v7, :cond_3

    #@31
    .line 601
    :cond_2
    return-object v8

    #@32
    .line 596
    .end local v1    # "hour":I
    :catch_0
    move-exception v2

    #@33
    .line 597
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/AssertionError;

    #@35
    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@38
    throw v7

    #@39
    .line 600
    .end local v2    # "impossible":Ljava/lang/NumberFormatException;
    .restart local v1    # "hour":I
    :cond_3
    if-ltz v4, :cond_2

    #@3b
    const/16 v7, 0x3b

    #@3d
    if-gt v4, v7, :cond_2

    #@3f
    .line 604
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v6

    #@43
    .line 605
    .local v6, "sign":C
    const v7, 0x36ee80

    #@46
    mul-int/2addr v7, v1

    #@47
    const v8, 0xea60

    #@4a
    mul-int/2addr v8, v4

    #@4b
    add-int v5, v7, v8

    #@4d
    .line 606
    .local v5, "raw":I
    const/16 v7, 0x2d

    #@4f
    if-ne v6, v7, :cond_4

    #@51
    .line 607
    neg-int v5, v5

    #@52
    .line 610
    :cond_4
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@54
    const-string/jumbo v8, "GMT%c%02d:%02d"

    #@57
    new-array v9, v9, [Ljava/lang/Object;

    #@59
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5c
    move-result-object v10

    #@5d
    aput-object v10, v9, v11

    #@5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v10

    #@63
    aput-object v10, v9, v12

    #@65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v10

    #@69
    const/4 v11, 0x2

    #@6a
    aput-object v10, v9, v11

    #@6c
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    .line 612
    .local v0, "cleanId":Ljava/lang/String;
    new-instance v7, Ljava/util/SimpleTimeZone;

    #@72
    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@75
    return-object v7
.end method

.method public static getDefault()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 656
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/TimeZone;

    #@a
    return-object v0
.end method

.method static declared-synchronized getDefaultRef()Ljava/util/TimeZone;
    .locals 5

    #@0
    .prologue
    const-class v4, Ljava/util/TimeZone;

    #@2
    monitor-enter v4

    #@3
    .line 664
    :try_start_0
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    #@5
    if-nez v3, :cond_3

    #@7
    .line 665
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    #@a
    move-result-object v1

    #@b
    .line 666
    .local v1, "tzGetter":Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v1, :cond_4

    #@d
    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 667
    :goto_0
    if-eqz v2, :cond_0

    #@13
    .line 668
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 670
    :cond_0
    if-eqz v2, :cond_1

    #@19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 673
    :cond_1
    :try_start_1
    const-string/jumbo v3, "/etc/timezone"

    #@22
    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 680
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@29
    move-result-object v3

    #@2a
    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    #@2c
    .line 682
    :cond_3
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    monitor-exit v4

    #@2f
    return-object v3

    #@30
    .line 666
    :cond_4
    const/4 v2, 0x0

    #@31
    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_0

    #@32
    .line 674
    .end local v2    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@33
    .line 677
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "GMT"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_1

    #@37
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "zoneName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3
.end method

.method private static native getSystemGMTOffsetID()Ljava/lang/String;
.end method

.method private static native getSystemTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const-class v3, Ljava/util/TimeZone;

    #@3
    monitor-enter v3

    #@4
    .line 550
    if-nez p0, :cond_0

    #@6
    .line 551
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v4, "id == null"

    #@b
    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v2

    #@10
    monitor-exit v3

    #@11
    throw v2

    #@12
    .line 555
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    if-ne v2, v4, :cond_2

    #@18
    .line 556
    const-string/jumbo v2, "GMT"

    #@1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 557
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    #@23
    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    return-object v2

    #@2b
    .line 559
    :cond_1
    :try_start_2
    const-string/jumbo v2, "UTC"

    #@2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 560
    sget-object v2, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    #@36
    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    monitor-exit v3

    #@3d
    return-object v2

    #@3e
    .line 565
    :cond_2
    const/4 v1, 0x0

    #@3f
    .line 567
    .local v1, "zone":Ljava/util/TimeZone;
    :try_start_3
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    move-result-object v1

    #@47
    .line 572
    .end local v1    # "zone":Ljava/util/TimeZone;
    :goto_0
    if-nez v1, :cond_3

    #@49
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4c
    move-result v2

    #@4d
    if-le v2, v4, :cond_3

    #@4f
    const-string/jumbo v2, "GMT"

    #@52
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 573
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5b
    move-result-object v1

    #@5c
    .line 577
    :cond_3
    if-eqz v1, :cond_4

    #@5e
    :goto_1
    monitor-exit v3

    #@5f
    return-object v1

    #@60
    :cond_4
    :try_start_5
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    #@62
    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@65
    move-result-object v2

    #@66
    check-cast v2, Ljava/util/TimeZone;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@68
    move-object v1, v2

    #@69
    goto :goto_1

    #@6a
    .line 568
    .restart local v1    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    #@6b
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static hasPermission()Z
    .locals 6

    #@0
    .prologue
    .line 686
    const/4 v1, 0x1

    #@1
    .line 687
    .local v1, "hasPermission":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v2

    #@5
    .line 688
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    #@7
    .line 690
    :try_start_0
    new-instance v3, Ljava/util/PropertyPermission;

    #@9
    .line 691
    const-string/jumbo v4, "user.timezone"

    #@c
    const-string/jumbo v5, "write"

    #@f
    .line 690
    invoke-direct {v3, v4, v5}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 696
    :cond_0
    :goto_0
    return v1

    #@16
    .line 692
    :catch_0
    move-exception v0

    #@17
    .line 693
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .locals 3
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-class v1, Ljava/util/TimeZone;

    #@3
    monitor-enter v1

    #@4
    .line 710
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->hasPermission()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 711
    if-eqz p0, :cond_0

    #@c
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/TimeZone;

    #@12
    :cond_0
    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    #@14
    .line 712
    invoke-static {}, Landroid/icu/util/TimeZone;->clearCachedDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit v1

    #@18
    .line 708
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 738
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/TimeZone;

    #@6
    .line 739
    .local v1, "other":Ljava/util/TimeZone;
    iget-object v2, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    #@8
    iput-object v2, v1, Ljava/util/TimeZone;->ID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 740
    return-object v1

    #@b
    .line 741
    .end local v1    # "other":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    #@c
    .line 742
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@e
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@11
    throw v2
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 483
    const v0, 0x36ee80

    #@9
    return v0

    #@a
    .line 485
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 324
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    .line 323
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    #@0
    .prologue
    .line 372
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    .line 371
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 386
    if-eqz p2, :cond_0

    #@3
    if-eq p2, v4, :cond_0

    #@5
    .line 387
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "Bad style: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 390
    :cond_0
    invoke-static {p3}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 391
    .local v2, "zoneStrings":[[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3, p1, p2}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 392
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2d
    .line 393
    return-object v1

    #@2e
    .line 406
    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@31
    move-result v0

    #@32
    .line 407
    .local v0, "offsetMillis":I
    if-eqz p1, :cond_2

    #@34
    .line 408
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    #@37
    move-result v3

    #@38
    add-int/2addr v0, v3

    #@39
    .line 410
    :cond_2
    invoke-static {v4, v4, v0}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 3
    .param p1, "date"    # J

    #@0
    .prologue
    .line 217
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 218
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    return v0

    #@15
    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method getOffsets(J[I)I
    .locals 3
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    #@0
    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@3
    move-result v1

    #@4
    .line 241
    .local v1, "rawoffset":I
    const/4 v0, 0x0

    #@5
    .line 242
    .local v0, "dstoffset":I
    new-instance v2, Ljava/util/Date;

    #@7
    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@a
    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 243
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    #@13
    move-result v0

    #@14
    .line 245
    :cond_0
    if-eqz p3, :cond_1

    #@16
    .line 246
    const/4 v2, 0x0

    #@17
    aput v1, p3, v2

    #@19
    .line 247
    const/4 v2, 0x1

    #@1a
    aput v0, p3, v2

    #@1c
    .line 249
    :cond_1
    add-int v2, v1, v0

    #@1e
    return v2
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 3
    .param p1, "other"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 726
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    #@a
    move-result v2

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 727
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@10
    move-result v1

    #@11
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@14
    move-result v2

    #@15
    if-ne v1, v2, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 726
    :cond_0
    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public observesDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 524
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    new-instance v0, Ljava/util/Date;

    #@8
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@b
    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@e
    move-result v0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 300
    if-nez p1, :cond_0

    #@2
    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 303
    :cond_0
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    #@a
    .line 298
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
