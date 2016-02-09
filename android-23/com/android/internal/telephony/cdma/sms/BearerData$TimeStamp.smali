.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Landroid/text/format/Time;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 234
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@b
    .line 233
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .locals 11
    .param p0, "data"    # [B

    #@0
    .prologue
    const/16 v10, 0x3b

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 238
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@7
    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    #@a
    .line 240
    .local v5, "ts":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    aget-byte v7, p0, v7

    #@c
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@f
    move-result v6

    #@10
    .line 241
    .local v6, "year":I
    const/16 v7, 0x63

    #@12
    if-gt v6, v7, :cond_0

    #@14
    if-gez v6, :cond_1

    #@16
    :cond_0
    return-object v8

    #@17
    .line 242
    :cond_1
    const/16 v7, 0x60

    #@19
    if-lt v6, v7, :cond_3

    #@1b
    add-int/lit16 v7, v6, 0x76c

    #@1d
    :goto_0
    iput v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    #@1f
    .line 243
    aget-byte v7, p0, v9

    #@21
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@24
    move-result v3

    #@25
    .line 244
    .local v3, "month":I
    if-lt v3, v9, :cond_2

    #@27
    const/16 v7, 0xc

    #@29
    if-le v3, v7, :cond_4

    #@2b
    :cond_2
    return-object v8

    #@2c
    .line 242
    .end local v3    # "month":I
    :cond_3
    add-int/lit16 v7, v6, 0x7d0

    #@2e
    goto :goto_0

    #@2f
    .line 245
    .restart local v3    # "month":I
    :cond_4
    add-int/lit8 v7, v3, -0x1

    #@31
    iput v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    #@33
    .line 246
    const/4 v7, 0x2

    #@34
    aget-byte v7, p0, v7

    #@36
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@39
    move-result v0

    #@3a
    .line 247
    .local v0, "day":I
    if-lt v0, v9, :cond_5

    #@3c
    const/16 v7, 0x1f

    #@3e
    if-le v0, v7, :cond_6

    #@40
    :cond_5
    return-object v8

    #@41
    .line 248
    :cond_6
    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    #@43
    .line 249
    const/4 v7, 0x3

    #@44
    aget-byte v7, p0, v7

    #@46
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@49
    move-result v1

    #@4a
    .line 250
    .local v1, "hour":I
    if-ltz v1, :cond_7

    #@4c
    const/16 v7, 0x17

    #@4e
    if-le v1, v7, :cond_8

    #@50
    :cond_7
    return-object v8

    #@51
    .line 251
    :cond_8
    iput v1, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    #@53
    .line 252
    const/4 v7, 0x4

    #@54
    aget-byte v7, p0, v7

    #@56
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@59
    move-result v2

    #@5a
    .line 253
    .local v2, "minute":I
    if-ltz v2, :cond_9

    #@5c
    if-le v2, v10, :cond_a

    #@5e
    :cond_9
    return-object v8

    #@5f
    .line 254
    :cond_a
    iput v2, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    #@61
    .line 255
    const/4 v7, 0x5

    #@62
    aget-byte v7, p0, v7

    #@64
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@67
    move-result v4

    #@68
    .line 256
    .local v4, "second":I
    if-ltz v4, :cond_b

    #@6a
    if-le v4, v10, :cond_c

    #@6c
    :cond_b
    return-object v8

    #@6d
    .line 257
    :cond_c
    iput v4, v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    #@6f
    .line 258
    return-object v5
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 264
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TimeStamp "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 265
    const-string/jumbo v1, "{ year="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 266
    const-string/jumbo v1, ", month="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 267
    const-string/jumbo v1, ", day="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 268
    const-string/jumbo v1, ", hour="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 269
    const-string/jumbo v1, ", minute="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    .line 270
    const-string/jumbo v1, ", second="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    .line 271
    const-string/jumbo v1, " }"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1
.end method
