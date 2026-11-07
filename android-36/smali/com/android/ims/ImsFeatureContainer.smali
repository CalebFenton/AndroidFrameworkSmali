.class public final Lcom/android/ims/ImsFeatureContainer;
.super Ljava/lang/Object;
.source "ImsFeatureContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/ImsFeatureContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

.field public final blacklist imsFeature:Landroid/os/IBinder;

.field public final blacklist imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

.field private blacklist mCapabilities:J

.field private blacklist mState:I

.field public final blacklist sipTransport:Landroid/telephony/ims/aidl/ISipTransport;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 174
    new-instance v0, Lcom/android/ims/ImsFeatureContainer$1;

    invoke-direct {v0}, Lcom/android/ims/ImsFeatureContainer$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsFeatureContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;J)V
    .registers 8
    .param p1, "iFace"    # Landroid/os/IBinder;
    .param p2, "iConfig"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p3, "iReg"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p4, "transport"    # Landroid/telephony/ims/aidl/ISipTransport;
    .param p5, "initialCaps"    # J

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    .line 77
    iput-object p1, p0, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    .line 78
    iput-object p2, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    .line 79
    iput-object p3, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 80
    iput-object p4, p0, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    .line 81
    iput-wide p5, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/ISipTransport$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/ImsFeatureContainer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/ImsFeatureContainer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 130
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_52

    .line 131
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/ims/ImsFeatureContainer;

    .line 132
    .local v2, "that":Lcom/android/ims/ImsFeatureContainer;
    iget-object v3, p0, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    iget-object v4, v2, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    iget-object v4, v2, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    .line 133
    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    iget-object v4, v2, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 134
    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsRegistration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    iget-object v4, v2, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    .line 135
    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/ISipTransport;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget v3, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    .line 136
    invoke-virtual {v2}, Lcom/android/ims/ImsFeatureContainer;->getState()I

    move-result v4

    if-ne v3, v4, :cond_50

    iget-wide v3, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    .line 137
    invoke-virtual {v2}, Lcom/android/ims/ImsFeatureContainer;->getCapabilities()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v1

    .line 132
    :goto_51
    return v0

    .line 130
    .end local v2    # "that":Lcom/android/ims/ImsFeatureContainer;
    :cond_52
    :goto_52
    return v1
.end method

.method public blacklist getCapabilities()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    return-wide v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 142
    iget-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    iget-object v2, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    iget-object v3, p0, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    iget v4, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    .line 143
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 142
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setCapabilities(J)V
    .registers 3
    .param p1, "caps"    # J

    .line 109
    iput-wide p1, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    .line 110
    return-void
.end method

.method public blacklist setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 124
    iput p1, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    .line 125
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureContainer{imsFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsRegistration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sipTransport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    iget v2, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    .line 154
    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    iget-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 166
    iget-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 167
    iget-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 168
    iget-object v0, p0, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 169
    iget v0, p0, Lcom/android/ims/ImsFeatureContainer;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-wide v0, p0, Lcom/android/ims/ImsFeatureContainer;->mCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    return-void
.end method
