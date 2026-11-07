.class public final Landroid/ranging/raw/RawResponderRangingConfig;
.super Landroid/ranging/RangingConfig;
.source "RawResponderRangingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/raw/RawResponderRangingConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/raw/RawResponderRangingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/ranging/raw/RawResponderRangingConfig$1;

    invoke-direct {v0}, Landroid/ranging/raw/RawResponderRangingConfig$1;-><init>()V

    sput-object v0, Landroid/ranging/raw/RawResponderRangingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Landroid/ranging/RangingConfig;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/ranging/raw/RawResponderRangingConfig;->setRangingSessionType(I)V

    .line 46
    const-class v0, Landroid/ranging/raw/RawRangingDevice;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/ranging/raw/RawRangingDevice;

    iput-object v0, p0, Landroid/ranging/raw/RawResponderRangingConfig;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/raw/RawResponderRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/raw/RawResponderRangingConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/raw/RawResponderRangingConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/raw/RawResponderRangingConfig$Builder;

    .line 39
    invoke-direct {p0}, Landroid/ranging/RangingConfig;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/ranging/raw/RawResponderRangingConfig;->setRangingSessionType(I)V

    .line 41
    invoke-static {p1}, Landroid/ranging/raw/RawResponderRangingConfig$Builder;->-$$Nest$fgetmRawRangingDevice(Landroid/ranging/raw/RawResponderRangingConfig$Builder;)Landroid/ranging/raw/RawRangingDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawResponderRangingConfig;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/raw/RawResponderRangingConfig$Builder;Landroid/ranging/raw/RawResponderRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/raw/RawResponderRangingConfig;-><init>(Landroid/ranging/raw/RawResponderRangingConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRawRangingDevice()Landroid/ranging/raw/RawRangingDevice;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/ranging/raw/RawResponderRangingConfig;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawResponderRangingParams{ mRawRangingDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawResponderRangingConfig;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-super {p0}, Landroid/ranging/RangingConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    invoke-virtual {p0}, Landroid/ranging/raw/RawResponderRangingConfig;->getRangingSessionType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/ranging/raw/RawResponderRangingConfig;->mRawRangingDevice:Landroid/ranging/raw/RawRangingDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    return-void
.end method
