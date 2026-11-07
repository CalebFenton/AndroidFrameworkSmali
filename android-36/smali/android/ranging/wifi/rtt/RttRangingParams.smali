.class public final Landroid/ranging/wifi/rtt/RttRangingParams;
.super Ljava/lang/Object;
.source "RttRangingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/wifi/rtt/RttRangingParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/wifi/rtt/RttRangingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMatchFilter:[B

.field private final blacklist mPeriodicRangingHwFeatureEnabled:Z

.field private final blacklist mRangingUpdateRate:I

.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/ranging/wifi/rtt/RttRangingParams$1;

    invoke-direct {v0}, Landroid/ranging/wifi/rtt/RttRangingParams$1;-><init>()V

    sput-object v0, Landroid/ranging/wifi/rtt/RttRangingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/wifi/rtt/RttRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/wifi/rtt/RttRangingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/wifi/rtt/RttRangingParams$Builder;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->-$$Nest$fgetmServiceName(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->-$$Nest$fgetmMatchFilter(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    .line 133
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->-$$Nest$fgetmRangingUpdateRate(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    .line 134
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->-$$Nest$fgetmPeriodicRangingHwFeatureEnabled(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;Landroid/ranging/wifi/rtt/RttRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/wifi/rtt/RttRangingParams;-><init>(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 235
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 236
    :cond_4
    instance-of v1, p1, Landroid/ranging/wifi/rtt/RttRangingParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Landroid/ranging/wifi/rtt/RttRangingParams;

    .line 237
    .local v1, "that":Landroid/ranging/wifi/rtt/RttRangingParams;
    iget v3, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    iget v4, v1, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    if-ne v3, v4, :cond_2d

    iget-boolean v3, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    iget-boolean v4, v1, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    if-ne v3, v4, :cond_2d

    iget-object v3, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    .line 239
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    iget-object v4, v1, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    .line 240
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 237
    :goto_2e
    return v0

    .line 236
    .end local v1    # "that":Landroid/ranging/wifi/rtt/RttRangingParams;
    :cond_2f
    return v2
.end method

.method public whitelist getMatchFilter()[B
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    return-object v0
.end method

.method public whitelist getRangingUpdateRate()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    return v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 248
    iget-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    .line 249
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 248
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isPeriodicRangingHwFeatureEnabled()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RttRangingParams{ mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    .line 222
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingUpdateRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeriodicRangingHwFeatureEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    iget v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mRangingUpdateRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams;->mPeriodicRangingHwFeatureEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 71
    return-void
.end method
