.class public final Landroid/telephony/data/ThrottleStatus;
.super Ljava/lang/Object;
.source "ThrottleStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/ThrottleStatus$Builder;,
        Landroid/telephony/data/ThrottleStatus$RetryType;,
        Landroid/telephony/data/ThrottleStatus$ThrottleType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RETRY_TYPE_HANDOVER:I = 0x3

.field public static final whitelist RETRY_TYPE_NEW_CONNECTION:I = 0x2

.field public static final whitelist RETRY_TYPE_NONE:I = 0x1

.field public static final whitelist THROTTLE_TYPE_ELAPSED_TIME:I = 0x2

.field public static final whitelist THROTTLE_TYPE_NONE:I = 0x1


# instance fields
.field private final blacklist mApnType:I

.field private final blacklist mRetryType:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mThrottleExpiryTimeMillis:J

.field private final blacklist mThrottleType:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 192
    new-instance v0, Landroid/telephony/data/ThrottleStatus$1;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/data/ThrottleStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIJI)V
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "transportType"    # I
    .param p3, "apnTypes"    # I
    .param p4, "throttleType"    # I
    .param p5, "throttleExpiryTimeMillis"    # J
    .param p7, "retryType"    # I

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    .line 166
    iput p2, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    .line 167
    iput p3, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    .line 168
    iput p4, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    .line 169
    iput-wide p5, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    .line 170
    iput p7, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    .line 171
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJILandroid/telephony/data/ThrottleStatus-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telephony/data/ThrottleStatus;-><init>(IIIIJI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    .line 180
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/ThrottleStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/ThrottleStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 219
    return v0

    .line 220
    :cond_4
    instance-of v1, p1, Landroid/telephony/data/ThrottleStatus;

    if-eqz v1, :cond_33

    .line 221
    move-object v1, p1

    check-cast v1, Landroid/telephony/data/ThrottleStatus;

    .line 222
    .local v1, "other":Landroid/telephony/data/ThrottleStatus;
    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    if-ne v2, v3, :cond_32

    iget-wide v2, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    iget-wide v4, v1, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_32

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    if-ne v2, v3, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 229
    .end local v1    # "other":Landroid/telephony/data/ThrottleStatus;
    :cond_33
    return v0
.end method

.method public whitelist getApnType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    return v0
.end method

.method public whitelist getRetryType()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    return v0
.end method

.method public whitelist getSlotIndex()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    return v0
.end method

.method public whitelist getThrottleExpiryTimeMillis()J
    .registers 3

    .line 156
    iget-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    return-wide v0
.end method

.method public whitelist getThrottleType()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    return v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 212
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    .line 213
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThrottleStatus{mSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    .line 238
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThrottleExpiryTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRetryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThrottleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return-void
.end method
