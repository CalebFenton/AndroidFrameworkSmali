.class public final Landroid/ranging/RangingPreference;
.super Ljava/lang/Object;
.source "RangingPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingPreference$Builder;,
        Landroid/ranging/RangingPreference$DeviceRole;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/RangingPreference;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_ROLE_INITIATOR:I = 0x1

.field public static final whitelist DEVICE_ROLE_RESPONDER:I


# instance fields
.field private final blacklist mDeviceRole:I

.field private final blacklist mRangingParams:Landroid/ranging/RangingConfig;

.field private final blacklist mSessionConfig:Landroid/ranging/SessionConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/ranging/RangingPreference$1;

    invoke-direct {v0}, Landroid/ranging/RangingPreference$1;-><init>()V

    sput-object v0, Landroid/ranging/RangingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingPreference;->mDeviceRole:I

    .line 77
    const-class v0, Landroid/ranging/RangingConfig;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/RangingConfig;

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingConfig;

    iput-object v0, p0, Landroid/ranging/RangingPreference;->mRangingParams:Landroid/ranging/RangingConfig;

    .line 80
    const-class v0, Landroid/ranging/SessionConfig;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/SessionConfig;

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/SessionConfig;

    iput-object v0, p0, Landroid/ranging/RangingPreference;->mSessionConfig:Landroid/ranging/SessionConfig;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/RangingPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingPreference;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/RangingPreference$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/RangingPreference$Builder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/ranging/RangingPreference$Builder;->-$$Nest$fgetmDeviceRole(Landroid/ranging/RangingPreference$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingPreference;->mDeviceRole:I

    .line 71
    invoke-static {p1}, Landroid/ranging/RangingPreference$Builder;->-$$Nest$fgetmRangingConfig(Landroid/ranging/RangingPreference$Builder;)Landroid/ranging/RangingConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingPreference;->mRangingParams:Landroid/ranging/RangingConfig;

    .line 72
    invoke-static {p1}, Landroid/ranging/RangingPreference$Builder;->-$$Nest$fgetmSessionConfig(Landroid/ranging/RangingPreference$Builder;)Landroid/ranging/SessionConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingPreference;->mSessionConfig:Landroid/ranging/SessionConfig;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/RangingPreference$Builder;Landroid/ranging/RangingPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingPreference;-><init>(Landroid/ranging/RangingPreference$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceRole()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/ranging/RangingPreference;->mDeviceRole:I

    return v0
.end method

.method public whitelist getRangingParams()Landroid/ranging/RangingConfig;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/ranging/RangingPreference;->mRangingParams:Landroid/ranging/RangingConfig;

    return-object v0
.end method

.method public whitelist getSessionConfig()Landroid/ranging/SessionConfig;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/ranging/RangingPreference;->mSessionConfig:Landroid/ranging/SessionConfig;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingPreference{ mDeviceRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/RangingPreference;->mDeviceRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingPreference;->mRangingParams:Landroid/ranging/RangingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingPreference;->mSessionConfig:Landroid/ranging/SessionConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Landroid/ranging/RangingPreference;->mDeviceRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Landroid/ranging/RangingPreference;->mRangingParams:Landroid/ranging/RangingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget-object v0, p0, Landroid/ranging/RangingPreference;->mSessionConfig:Landroid/ranging/SessionConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    return-void
.end method
