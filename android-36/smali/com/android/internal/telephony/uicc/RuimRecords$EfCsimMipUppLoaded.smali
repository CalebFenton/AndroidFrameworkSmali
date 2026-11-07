.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method blacklist checkLengthLegal(II)Z
    .registers 4

    if-ge p1, p2, :cond_22

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CSIM MIPUPP format error, length = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "expected length at least ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimRecords"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 524
    const-string p0, "EF_CSIM_MIPUPP"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 13

    .line 540
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 542
    array-length v0, p1

    const-string v1, "RuimRecords"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_10

    .line 543
    const-string p0, "MIPUPP read error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;-><init>([B)V

    const/16 p1, 0x8

    .line 549
    :try_start_17
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    .line 553
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_fd

    .line 557
    :cond_25
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v2, :cond_3c

    const/16 v4, 0xb

    .line 561
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v5

    if-nez v5, :cond_37

    goto/16 :goto_fd

    .line 564
    :cond_37
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v5, v3, -0xc

    :cond_3c
    const/4 v3, 0x4

    .line 569
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_fd

    .line 572
    :cond_45
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v4

    add-int/lit8 v5, v5, -0x4

    const/4 v6, 0x0

    move v7, v6

    :goto_4d
    if-ge v7, v4, :cond_fd

    .line 577
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_57

    goto/16 :goto_fd

    .line 580
    :cond_57
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    add-int/lit8 v9, v5, -0x4

    .line 583
    invoke-virtual {p0, v9, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v9

    if-nez v9, :cond_65

    goto/16 :goto_fd

    .line 586
    :cond_65
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v9

    add-int/lit8 v5, v5, -0xc

    if-nez v8, :cond_b3

    shl-int/lit8 v2, v9, 0x3

    .line 591
    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v2

    if-nez v2, :cond_77

    goto/16 :goto_fd

    .line 594
    :cond_77
    new-array v2, v9, [C

    :goto_79
    if-ge v6, v9, :cond_87

    .line 596
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 598
    :cond_87
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmNai(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 599
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIPUPP Nai = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmNai(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b3
    shl-int/lit8 v8, v9, 0x3

    add-int/lit8 v9, v8, 0x66

    .line 605
    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v10

    if-nez v10, :cond_be

    goto :goto_fd

    :cond_be
    add-int/lit8 v8, v8, 0x65

    .line 608
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 609
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    sub-int/2addr v5, v9

    const/16 v9, 0x20

    if-ne v8, v2, :cond_d8

    .line 613
    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_d3

    goto :goto_fd

    .line 616
    :cond_d3
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v5, v5, -0x20

    :cond_d8
    const/4 v8, 0x5

    .line 621
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_e0

    goto :goto_fd

    .line 624
    :cond_e0
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 626
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    add-int/lit8 v10, v5, -0x5

    if-ne v8, v2, :cond_f8

    .line 630
    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_f2

    goto :goto_fd

    .line 633
    :cond_f2
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_f5} :catch_fe

    add-int/lit8 v5, v5, -0x25

    goto :goto_f9

    :cond_f8
    move v5, v10

    :goto_f9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4d

    :cond_fd
    :goto_fd
    return-void

    .line 639
    :catch_fe
    const-string p0, "MIPUPP read Exception error!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
