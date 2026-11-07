.class public final Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
.super Ljava/lang/Object;
.source "SatelliteSubscriberProvisionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mProvisioned:Z

.field private blacklist mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->-$$Nest$fgetmSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Landroid/telephony/satellite/SatelliteSubscriberInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    .line 48
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->-$$Nest$fgetmProvisioned(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    .line 49
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    const-class v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    .line 163
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 153
    :cond_4
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 154
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    .line 155
    .local v1, "that":Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-boolean v3, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    iget-boolean v4, v1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public blacklist getSatelliteSubscriberInfo()Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 147
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isProvisioned()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SatelliteSubscriberInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "ProvisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisioned:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    return-void
.end method
