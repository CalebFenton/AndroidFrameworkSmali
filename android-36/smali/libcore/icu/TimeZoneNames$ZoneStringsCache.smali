.class Llibcore/icu/TimeZoneNames$ZoneStringsCache;
.super Llibcore/util/BasicLruCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoneStringsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache<",
        "Ljava/util/Locale;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 50
    return-void
.end method

.method private blacklist addOffsetStrings([[Ljava/lang/String;)V
    .registers 8
    .param p1, "result"    # [[Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_39

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_6
    const/4 v3, 0x5

    if-ge v2, v3, :cond_36

    .line 81
    aget-object v3, p1, v0

    aget-object v3, v3, v2

    if-eqz v3, :cond_10

    .line 82
    goto :goto_33

    .line 84
    :cond_10
    if-nez v1, :cond_1b

    .line 85
    aget-object v3, p1, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 87
    :cond_1b
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 88
    .local v3, "offsetMillis":I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_25

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2a

    .line 89
    :cond_25
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    .line 91
    :cond_2a
    aget-object v4, p1, v0

    const/4 v5, 0x1

    invoke-static {v5, v5, v3}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 80
    .end local v3    # "offsetMillis":I
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 78
    .end local v1    # "tz":Ljava/util/TimeZone;
    .end local v2    # "j":I
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "i":I
    :cond_39
    return-void
.end method

.method private blacklist internStrings([[Ljava/lang/String;)V
    .registers 8
    .param p1, "result"    # [[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 101
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_a
    const/4 v3, 0x5

    if-ge v2, v3, :cond_24

    .line 102
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    .line 103
    .local v3, "original":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "nonDuplicate":Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 105
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 107
    :cond_1d
    aget-object v5, p1, v1

    aput-object v4, v5, v2

    .line 101
    .end local v3    # "original":Ljava/lang/String;
    .end local v4    # "nonDuplicate":Ljava/lang/String;
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 100
    .end local v2    # "j":I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 111
    .end local v1    # "i":I
    :cond_27
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->create(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist create(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 18
    .param p1, "locale"    # Ljava/util/Locale;

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 55
    .local v2, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 56
    .local v4, "nativeStart":J
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-$$Nest$sfgetavailableTimeZoneIds()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/icu/text/TimeZoneNamesNative;->getFilledZoneStrings(Ljava/util/Locale;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "result":[[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 59
    .local v7, "nativeEnd":J
    invoke-direct {v0, v6}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->addOffsetStrings([[Ljava/lang/String;)V

    .line 60
    invoke-direct {v0, v6}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 65
    .local v9, "end":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v12, v7, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 66
    .local v11, "nativeDuration":J
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v14, v9, v2

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 67
    .local v13, "duration":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loaded time zone names for \""

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "\" in "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "ms ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "ms in ICU)"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    .line 69
    return-object v6
.end method
