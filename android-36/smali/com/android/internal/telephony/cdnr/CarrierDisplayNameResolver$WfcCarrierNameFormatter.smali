.class final Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;
.super Ljava/lang/Object;
.source "CarrierDisplayNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WfcCarrierNameFormatter"
.end annotation


# instance fields
.field final blacklist mDataFormat:Ljava/lang/String;

.field final blacklist mVoiceFormat:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/os/PersistableBundle;[Ljava/lang/String;Z)V
    .registers 10

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const-string v0, "wfc_spn_format_idx_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 586
    const-string v1, "wfc_data_spn_format_idx_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 587
    const-string v2, "wfc_flight_mode_spn_format_idx_int"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    .line 590
    const-string v3, "CDNR"

    if-ltz v0, :cond_1d

    array-length v4, p2

    if-lt v0, v4, :cond_32

    .line 591
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSpnDisplay: KEY_WFC_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_32
    if-ltz v1, :cond_37

    .line 596
    array-length v4, p2

    if-lt v1, v4, :cond_4c

    .line 597
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSpnDisplay: KEY_WFC_DATA_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_4c
    if-ltz p1, :cond_51

    .line 602
    array-length v2, p2

    if-lt p1, v2, :cond_52

    :cond_51
    move p1, v0

    :cond_52
    if-eqz p3, :cond_55

    move v0, p1

    .line 613
    :cond_55
    const-string p1, ""

    const/4 p3, -0x1

    if-eq v0, p3, :cond_5d

    aget-object v0, p2, v0

    goto :goto_5e

    :cond_5d
    move-object v0, p1

    :goto_5e
    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->mVoiceFormat:Ljava/lang/String;

    if-eq v1, p3, :cond_64

    .line 614
    aget-object p1, p2, v1

    :cond_64
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->mDataFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist formatDataName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 633
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 634
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->mDataFormat:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatVoiceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 624
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$WfcCarrierNameFormatter;->mVoiceFormat:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
