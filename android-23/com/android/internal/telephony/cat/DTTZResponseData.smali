.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "cal"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    #@3
    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@5
    .line 203
    return-void
.end method

.method private byteToBCD(I)B
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 258
    if-gez p1, :cond_0

    #@3
    const/16 v0, 0x63

    #@5
    if-le p1, v0, :cond_0

    #@7
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "Err: byteToBCD conversion Value is "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 260
    const-string/jumbo v1, " Value has to be between 0 and 99"

    #@1a
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@25
    .line 261
    return v2

    #@26
    .line 264
    :cond_0
    div-int/lit8 v0, p1, 0xa

    #@28
    rem-int/lit8 v1, p1, 0xa

    #@2a
    shl-int/lit8 v1, v1, 0x4

    #@2c
    or-int/2addr v0, v1

    #@2d
    int-to-byte v0, v0

    #@2e
    return v0
.end method

.method private getTZOffSetByte(J)B
    .locals 7
    .param p1, "offSetVal"    # J

    #@0
    .prologue
    .line 268
    const-wide/16 v4, 0x0

    #@2
    cmp-long v4, p1, v4

    #@4
    if-gez v4, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    .line 276
    .local v1, "isNegative":Z
    :goto_0
    const-wide/32 v4, 0xdbba0

    #@a
    div-long v2, p1, v4

    #@c
    .line 277
    .local v2, "tzOffset":J
    if-eqz v1, :cond_1

    #@e
    const/4 v4, -0x1

    #@f
    :goto_1
    int-to-long v4, v4

    #@10
    mul-long/2addr v2, v4

    #@11
    .line 278
    long-to-int v4, v2

    #@12
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@15
    move-result v0

    #@16
    .line 280
    .local v0, "bcdVal":B
    if-eqz v1, :cond_2

    #@18
    or-int/lit8 v4, v0, 0x8

    #@1a
    int-to-byte v0, v4

    #@1b
    :goto_2
    int-to-byte v4, v4

    #@1c
    return v4

    #@1d
    .line 268
    .end local v0    # "bcdVal":B
    .end local v1    # "isNegative":Z
    .end local v2    # "tzOffset":J
    :cond_0
    const/4 v1, 0x0

    #@1e
    .restart local v1    # "isNegative":Z
    goto :goto_0

    #@1f
    .line 277
    .restart local v2    # "tzOffset":J
    :cond_1
    const/4 v4, 0x1

    #@20
    goto :goto_1

    #@21
    .restart local v0    # "bcdVal":B
    :cond_2
    move v4, v0

    #@22
    .line 280
    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 12
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/4 v11, 0x5

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v10, 0x7

    #@5
    .line 210
    if-nez p1, :cond_0

    #@7
    .line 211
    return-void

    #@8
    .line 215
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@a
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    #@d
    move-result v7

    #@e
    or-int/lit16 v2, v7, 0x80

    #@10
    .line 216
    .local v2, "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@13
    .line 218
    const/16 v7, 0x8

    #@15
    new-array v1, v7, [B

    #@17
    .line 220
    .local v1, "data":[B
    aput-byte v10, v1, v6

    #@19
    .line 222
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@1b
    if-nez v7, :cond_1

    #@1d
    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@20
    move-result-object v7

    #@21
    iput-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@23
    .line 226
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@25
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@28
    move-result v7

    #@29
    rem-int/lit8 v7, v7, 0x64

    #@2b
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@2e
    move-result v7

    #@2f
    aput-byte v7, v1, v8

    #@31
    .line 229
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@33
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    #@36
    move-result v7

    #@37
    add-int/lit8 v7, v7, 0x1

    #@39
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@3c
    move-result v7

    #@3d
    aput-byte v7, v1, v9

    #@3f
    .line 232
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@41
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    #@44
    move-result v7

    #@45
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@48
    move-result v7

    #@49
    const/4 v8, 0x3

    #@4a
    aput-byte v7, v1, v8

    #@4c
    .line 235
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@4e
    const/16 v8, 0xb

    #@50
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@53
    move-result v7

    #@54
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@57
    move-result v7

    #@58
    const/4 v8, 0x4

    #@59
    aput-byte v7, v1, v8

    #@5b
    .line 238
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@5d
    const/16 v8, 0xc

    #@5f
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@62
    move-result v7

    #@63
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@66
    move-result v7

    #@67
    aput-byte v7, v1, v11

    #@69
    .line 241
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    #@6b
    const/16 v8, 0xd

    #@6d
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@70
    move-result v7

    #@71
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    #@74
    move-result v7

    #@75
    const/4 v8, 0x6

    #@76
    aput-byte v7, v1, v8

    #@78
    .line 243
    const-string/jumbo v7, "persist.sys.timezone"

    #@7b
    const-string/jumbo v8, ""

    #@7e
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    .line 244
    .local v3, "tz":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@85
    move-result v7

    #@86
    if-eqz v7, :cond_2

    #@88
    .line 245
    const/4 v7, -0x1

    #@89
    aput-byte v7, v1, v10

    #@8b
    .line 252
    :goto_0
    array-length v7, v1

    #@8c
    :goto_1
    if-ge v6, v7, :cond_3

    #@8e
    aget-byte v0, v1, v6

    #@90
    .line 253
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@93
    .line 252
    add-int/lit8 v6, v6, 0x1

    #@95
    goto :goto_1

    #@96
    .line 247
    .end local v0    # "b":B
    :cond_2
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@99
    move-result-object v4

    #@9a
    .line 248
    .local v4, "zone":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    #@9d
    move-result v7

    #@9e
    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    #@a1
    move-result v8

    #@a2
    add-int v5, v7, v8

    #@a4
    .line 249
    .local v5, "zoneOffset":I
    int-to-long v8, v5

    #@a5
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    #@a8
    move-result v7

    #@a9
    aput-byte v7, v1, v10

    #@ab
    goto :goto_0

    #@ac
    .line 209
    .end local v4    # "zone":Ljava/util/TimeZone;
    .end local v5    # "zoneOffset":I
    :cond_3
    return-void
.end method
