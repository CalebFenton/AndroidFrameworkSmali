.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkKey"
.end annotation


# instance fields
.field private final blacklist mDataRat:Ljava/lang/String;

.field private final blacklist mPlmn:Ljava/lang/String;

.field private final blacklist mTac:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    .line 1140
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    .line 1141
    iput-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1145
    instance-of v0, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_13

    goto :goto_32

    :cond_13
    const/4 v2, 0x1

    if-ne p0, p1, :cond_17

    return v2

    .line 1153
    :cond_17
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    iget p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    iget v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    if-ne p1, v3, :cond_32

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    iget-object p1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    .line 1155
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v2

    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plmn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Tac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
