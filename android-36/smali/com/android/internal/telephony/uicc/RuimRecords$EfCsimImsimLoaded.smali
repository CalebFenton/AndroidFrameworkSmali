.class public Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist decodeImsiDigits(II)I
    .registers 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    :goto_2
    if-ge p0, p2, :cond_13

    add-int/2addr p1, v0

    .line 416
    div-int v1, p1, v0

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_e

    mul-int/lit8 v1, v0, 0xa

    sub-int/2addr p1, v1

    :cond_e
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_13
    return p1
.end method


# virtual methods
.method public blacklist decodeImsi([B)Ljava/lang/String;
    .registers 12

    const/16 v0, 0x9

    .line 434
    aget-byte v1, p1, v0

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/16 v3, 0x8

    shl-int/2addr v1, v3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 435
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v1

    const/4 v4, 0x6

    .line 436
    aget-byte v5, p1, v4

    and-int/lit8 v5, v5, 0x7f

    const/4 v6, 0x2

    .line 437
    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v5

    .line 440
    aget-byte v6, p1, v6

    and-int/2addr v6, v2

    shl-int/2addr v6, v3

    const/4 v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    const/4 v7, 0x5

    .line 441
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v3

    const/4 v8, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v9, v8, 0xff

    or-int/2addr v7, v9

    shr-int/lit8 v4, v7, 0x6

    shr-int/lit8 v7, v8, 0x2

    and-int/lit8 v7, v7, 0xf

    if-le v7, v0, :cond_3b

    const/4 v7, 0x0

    :cond_3b
    and-int/lit8 v0, v8, 0x3

    shl-int/2addr v0, v3

    .line 444
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 446
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v0

    .line 447
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v3

    .line 448
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result p0

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%03d"

    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%02d"

    invoke-static {v2, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 384
    const-string p0, "EF_CSIM_IMSIM"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 6

    .line 389
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_98

    .line 390
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_d

    goto/16 :goto_98

    .line 394
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RuimRecords"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 397
    aget-byte v0, p1, v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_90

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsi([B)Ljava/lang/String;

    move-result-object p1

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 405
    :cond_63
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v1, 0x5

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmMin(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min present="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmMin(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void

    .line 408
    :cond_90
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string p1, "min not present"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void

    .line 391
    :cond_98
    :goto_98
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string p1, "Invalid IMSI from EF_CSIM_IMSIM"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void
.end method
