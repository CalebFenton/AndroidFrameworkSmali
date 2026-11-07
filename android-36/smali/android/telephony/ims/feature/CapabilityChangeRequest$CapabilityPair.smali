.class public Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
.super Ljava/lang/Object;
.source "CapabilityChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/CapabilityChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityPair"
.end annotation


# instance fields
.field private final greylist-max-o mCapability:I

.field private final greylist-max-o radioTech:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    .line 53
    iput p2, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 62
    :cond_4
    instance-of v1, p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 64
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 66
    .local v1, "that":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    if-eq v3, v4, :cond_18

    return v2

    .line 67
    :cond_18
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v4

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    return v0
.end method

.method public whitelist getCapability()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    return v0
.end method

.method public whitelist getRadioTech()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 75
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    .line 76
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilityPair{mCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->mCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->radioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
