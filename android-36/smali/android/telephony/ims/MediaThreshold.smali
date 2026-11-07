.class public final Landroid/telephony/ims/MediaThreshold;
.super Ljava/lang/Object;
.source "MediaThreshold.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/MediaThreshold$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/MediaThreshold;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRtpInactivityTimeMillis:[J

.field private final blacklist mRtpJitter:[I

.field private final blacklist mRtpPacketLossRate:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/telephony/ims/MediaThreshold$1;

    invoke-direct {v0}, Landroid/telephony/ims/MediaThreshold$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/MediaThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/MediaThreshold-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/MediaThreshold;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([I[I[J)V
    .registers 4
    .param p1, "packetLossRateThresholds"    # [I
    .param p2, "jitterThresholds"    # [I
    .param p3, "inactivityTimeThresholds"    # [J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    .line 85
    iput-object p2, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    .line 86
    iput-object p3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>([I[I[JLandroid/telephony/ims/MediaThreshold-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/MediaThreshold;-><init>([I[I[J)V

    return-void
.end method

.method public static blacklist isValidJitterMillis(I)Z
    .registers 2
    .param p0, "jitter"    # I

    .line 138
    if-ltz p0, :cond_8

    const/16 v0, 0x2710

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isValidRtpInactivityTimeMillis(J)Z
    .registers 4
    .param p0, "inactivityTime"    # J

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_f

    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isValidRtpPacketLossRate(I)Z
    .registers 2
    .param p0, "packetLossRate"    # I

    .line 127
    if-ltz p0, :cond_8

    const/16 v0, 0x64

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 160
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 161
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/MediaThreshold;

    .line 162
    .local v2, "that":Landroid/telephony/ims/MediaThreshold;
    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    iget-object v4, v2, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    iget-object v4, v2, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    .line 163
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    iget-object v4, v2, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    .line 164
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 162
    :goto_35
    return v0

    .line 160
    .end local v2    # "that":Landroid/telephony/ims/MediaThreshold;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getThresholdsRtpInactivityTimeMillis()[J
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    return-object v0
.end method

.method public whitelist getThresholdsRtpJitterMillis()[I
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    return-object v0
.end method

.method public whitelist getThresholdsRtpPacketLossRate()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 169
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    .line 170
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MediaThreshold{mRtpPacketLossRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    const-string v5, " "

    if-ge v4, v2, :cond_1f

    aget v6, v1, v4

    .line 178
    .local v6, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .end local v6    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 180
    :cond_1f
    const-string v1, ", mRtpJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    array-length v2, v1

    move v4, v3

    :goto_28
    if-ge v4, v2, :cond_36

    aget v6, v1, v4

    .line 182
    .local v6, "b":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .end local v6    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 184
    :cond_36
    const-string v1, ", mRtpInactivityTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    array-length v2, v1

    :goto_3e
    if-ge v3, v2, :cond_4c

    aget-wide v6, v1, v3

    .line 186
    .local v6, "i":J
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .end local v6    # "i":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 188
    :cond_4c
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 102
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 103
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 104
    return-void
.end method
