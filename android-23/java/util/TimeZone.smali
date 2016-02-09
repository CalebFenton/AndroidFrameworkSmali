.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TimeZone$CustomTimeZoneParser;
    }
.end annotation


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field public static final LONG:I = 0x1

.field public static final SHORT:I = 0x0

.field private static final UTC:Ljava/util/TimeZone;

.field private static defaultTimeZone:Ljava/util/TimeZone; = null

.field private static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 129
    new-instance v0, Ljava/util/SimpleTimeZone;

    #@3
    const-string/jumbo v1, "GMT"

    #@6
    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@9
    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    #@b
    .line 130
    new-instance v0, Ljava/util/SimpleTimeZone;

    #@d
    const-string/jumbo v1, "UTC"

    #@10
    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@13
    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    #@15
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 136
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
    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 296
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
    .line 297
    const/16 v2, 0x30

    #@f
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 296
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 299
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 294
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
    .line 275
    const v3, 0xea60

    #@4
    div-int v1, p2, v3

    #@6
    .line 276
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    #@8
    .line 277
    .local v2, "sign":C
    if-gez v1, :cond_0

    #@a
    .line 278
    const/16 v2, 0x2d

    #@c
    .line 279
    neg-int v1, v1

    #@d
    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const/16 v3, 0x9

    #@11
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@14
    .line 282
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    #@16
    .line 283
    const-string/jumbo v3, "GMT"

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 285
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 286
    div-int/lit8 v3, v1, 0x3c

    #@21
    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    #@24
    .line 287
    if-eqz p1, :cond_2

    #@26
    .line 288
    const/16 v3, 0x3a

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 290
    :cond_2
    rem-int/lit8 v3, v1, 0x3c

    #@2d
    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    #@30
    .line 291
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
    .line 156
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
    .param p0, "offsetMillis"    # I

    #@0
    .prologue
    const-class v1, Ljava/util/TimeZone;

    #@2
    monitor-enter v1

    #@3
    .line 167
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

.method public static declared-synchronized getDefault()Ljava/util/TimeZone;
    .locals 5

    #@0
    .prologue
    const-class v4, Ljava/util/TimeZone;

    #@2
    monitor-enter v4

    #@3
    .line 178
    :try_start_0
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    #@5
    if-nez v3, :cond_3

    #@7
    .line 179
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    #@a
    move-result-object v1

    #@b
    .line 180
    .local v1, "tzGetter":Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v1, :cond_4

    #@d
    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 181
    :goto_0
    if-eqz v2, :cond_0

    #@13
    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 184
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
    .line 187
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
    .line 194
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@29
    move-result-object v3

    #@2a
    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    #@2c
    .line 196
    :cond_3
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    #@2e
    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Ljava/util/TimeZone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    monitor-exit v4

    #@35
    return-object v3

    #@36
    .line 180
    :cond_4
    const/4 v2, 0x0

    #@37
    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_0

    #@38
    .line 188
    .end local v2    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@39
    .line 191
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "GMT"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_1

    #@3d
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "zoneName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@3e
    monitor-exit v4

    #@3f
    throw v3
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
    .line 392
    if-nez p0, :cond_0

    #@6
    .line 393
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
    .line 397
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    if-ne v2, v4, :cond_2

    #@18
    .line 398
    const-string/jumbo v2, "GMT"

    #@1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 399
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
    .line 401
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
    .line 402
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
    .line 407
    :cond_2
    const/4 v1, 0x0

    #@3f
    .line 409
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
    .line 414
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
    .line 415
    invoke-static {p0}, Ljava/util/TimeZone$CustomTimeZoneParser;->-wrap0(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5b
    move-result-object v1

    #@5c
    .line 419
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
    .line 410
    .restart local v1    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    #@6b
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .locals 2
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-class v1, Ljava/util/TimeZone;

    #@3
    monitor-enter v1

    #@4
    .line 453
    if-eqz p0, :cond_0

    #@6
    :try_start_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/TimeZone;

    #@c
    :cond_0
    sput-object v0, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 452
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 144
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 145
    :catch_0
    move-exception v0

    #@6
    .line 146
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const v0, 0x36ee80

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 211
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
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I

    #@0
    .prologue
    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
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
    .line 233
    if-eqz p2, :cond_0

    #@3
    if-eq p2, v4, :cond_0

    #@5
    .line 234
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
    .line 237
    :cond_0
    invoke-static {p3}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 238
    .local v2, "zoneStrings":[[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3, p1, p2}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 239
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2d
    .line 240
    return-object v1

    #@2e
    .line 253
    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@31
    move-result v0

    #@32
    .line 254
    .local v0, "offsetMillis":I
    if-eqz p1, :cond_2

    #@34
    .line 255
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    #@37
    move-result v3

    #@38
    add-int/2addr v0, v3

    #@39
    .line 257
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
    .line 307
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 345
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
    .line 346
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
    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 429
    if-nez p1, :cond_0

    #@3
    .line 430
    return v0

    #@4
    .line 432
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    #@b
    move-result v2

    #@c
    if-ne v1, v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    if-nez p1, :cond_0

    #@2
    .line 461
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "id == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 463
    :cond_0
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    #@d
    .line 459
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
