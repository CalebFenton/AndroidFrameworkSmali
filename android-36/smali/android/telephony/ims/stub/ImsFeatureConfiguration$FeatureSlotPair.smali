.class public final Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
.super Ljava/lang/Object;
.source "ImsFeatureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsFeatureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSlotPair"
.end annotation


# instance fields
.field public final whitelist featureType:I

.field public final whitelist slotId:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    .line 61
    iput p2, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 69
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 71
    .local v2, "that":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    iget v3, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v4, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 72
    :cond_1c
    iget v3, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    iget v4, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    .line 67
    .end local v2    # "that":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    :cond_25
    :goto_25
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 77
    iget v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    .line 78
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    add-int/2addr v1, v2

    .line 79
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget v2, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
