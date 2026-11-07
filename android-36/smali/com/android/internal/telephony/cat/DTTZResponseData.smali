.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private blacklist mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Calendar;)V
    .registers 2

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private blacklist byteToBCD(I)B
    .registers 4

    if-gez p1, :cond_21

    const/16 v0, 0x63

    if-le p1, v0, :cond_21

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Value has to be between 0 and 99"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 283
    :cond_21
    div-int/lit8 p0, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private blacklist getTZOffSetByte(J)B
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-wide/32 v2, 0xdbba0

    .line 295
    div-long/2addr p1, v2

    if-eqz v0, :cond_11

    const/4 v1, -0x1

    :cond_11
    int-to-long v1, v1

    mul-long/2addr v1, p1

    long-to-int p1, v1

    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result p0

    if-eqz v0, :cond_1d

    or-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    :cond_1d
    return p0
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 9

    if-nez p1, :cond_4

    goto/16 :goto_a9

    .line 234
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 235
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v0, 0x8

    .line 237
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 239
    aput-byte v3, v1, v2

    .line 241
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    if-nez v4, :cond_21

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 245
    :cond_21
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v5

    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    const/4 v6, 0x3

    aput-byte v4, v1, v6

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    const/4 v6, 0x4

    aput-byte v4, v1, v6

    .line 257
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v5

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    const/4 v5, 0x6

    aput-byte v4, v1, v5

    .line 262
    const-string v4, "persist.sys.timezone"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8a

    const/4 p0, -0x1

    .line 264
    aput-byte p0, v1, v3

    goto :goto_9f

    .line 266
    :cond_8a
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 267
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    .line 268
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    move-result p0

    aput-byte p0, v1, v3

    :goto_9f
    if-ge v2, v0, :cond_a9

    .line 271
    aget-byte p0, v1, v2

    .line 272
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_a9
    :goto_a9
    return-void
.end method
