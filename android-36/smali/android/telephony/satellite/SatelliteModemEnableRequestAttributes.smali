.class public final Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;
.super Ljava/lang/Object;
.source "SatelliteModemEnableRequestAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsEnabled:Z

.field private final blacklist mIsForDemoMode:Z

.field private final blacklist mIsForEmergencyMode:Z

.field private final blacklist mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    .line 78
    const-class v0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZZZLandroid/telephony/satellite/SatelliteSubscriptionInfo;)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .param p2, "isForDemoMode"    # Z
    .param p3, "isForEmergencyMode"    # Z
    .param p4, "satelliteSubscriptionInfo"    # Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    .line 69
    iput-boolean p2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    .line 70
    iput-boolean p3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    .line 71
    iput-object p4, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 123
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;

    .line 124
    .local v2, "that":Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;
    iget-boolean v3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    iget-boolean v4, v2, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    iget-boolean v4, v2, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    iget-object v4, v2, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 126
    invoke-virtual {v3, v4}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 124
    :goto_33
    return v0

    .line 122
    .end local v2    # "that":Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;
    :cond_34
    :goto_34
    return v1
.end method

.method public blacklist getSatelliteSubscriptionInfo()Landroid/telephony/satellite/SatelliteSubscriptionInfo;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 131
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    return v0
.end method

.method public blacklist isForDemoMode()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    return v0
.end method

.method public blacklist isForEmergencyMode()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteModemEnableRequestAttributes{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string v1, ", mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string v1, ", mIsForDemoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, ", mIsForEmergencyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string v1, "mSatelliteSubscriptionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForDemoMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mIsForEmergencyMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 92
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->mSatelliteSubscriptionInfo:Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    return-void
.end method
