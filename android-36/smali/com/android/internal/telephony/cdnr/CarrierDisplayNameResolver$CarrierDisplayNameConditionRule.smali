.class final Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;
.super Ljava/lang/Object;
.source "CarrierDisplayNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarrierDisplayNameConditionRule"
.end annotation


# instance fields
.field private blacklist mDisplayConditionBitmask:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->mDisplayConditionBitmask:I

    return-void
.end method


# virtual methods
.method blacklist shouldShowPlmn(Ljava/lang/String;)Z
    .registers 4

    .line 555
    iget p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->mDisplayConditionBitmask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_9

    move p0, v0

    goto :goto_a

    :cond_9
    move p0, v1

    .line 559
    :goto_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p0, :cond_13

    return v0

    :cond_13
    return v1
.end method

.method blacklist shouldShowSpn(Ljava/lang/String;)Z
    .registers 5

    .line 546
    iget p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->mDisplayConditionBitmask:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_a

    move p0, v2

    goto :goto_b

    :cond_a
    move p0, v1

    .line 550
    :goto_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    if-eqz p0, :cond_14

    return v2

    :cond_14
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 564
    iget v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->mDisplayConditionBitmask:I

    and-int/lit8 v0, v0, 0x2

    .line 565
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver$CarrierDisplayNameConditionRule;->mDisplayConditionBitmask:I

    and-int/lit8 p0, p0, 0x1

    .line 567
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 564
    const-string v0, "{ SPN_bit = %d, PLMN_bit = %d }"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
