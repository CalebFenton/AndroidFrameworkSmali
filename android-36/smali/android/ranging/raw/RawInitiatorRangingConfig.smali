.class public final Landroid/ranging/raw/RawInitiatorRangingConfig;
.super Landroid/ranging/RangingConfig;
.source "RawInitiatorRangingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/raw/RawInitiatorRangingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRawRangingDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/ranging/raw/RawRangingDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Landroid/ranging/raw/RawInitiatorRangingConfig$1;

    invoke-direct {v0}, Landroid/ranging/raw/RawInitiatorRangingConfig$1;-><init>()V

    sput-object v0, Landroid/ranging/raw/RawInitiatorRangingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Landroid/ranging/RangingConfig;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/ranging/raw/RawInitiatorRangingConfig;->setRangingSessionType(I)V

    .line 48
    sget-object v0, Landroid/ranging/raw/RawRangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig;->mRawRangingDevices:Ljava/util/List;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/raw/RawInitiatorRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/raw/RawInitiatorRangingConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;

    .line 41
    invoke-direct {p0}, Landroid/ranging/RangingConfig;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/ranging/raw/RawInitiatorRangingConfig;->setRangingSessionType(I)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;->-$$Nest$fgetmRawRangingDeviceList(Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig;->mRawRangingDevices:Ljava/util/List;

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;Landroid/ranging/raw/RawInitiatorRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/raw/RawInitiatorRangingConfig;-><init>(Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRawRangingDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/ranging/raw/RawRangingDevice;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig;->mRawRangingDevices:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawInitiatorRangingConfig{ mRawRangingDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawInitiatorRangingConfig;->mRawRangingDevices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    invoke-super {p0}, Landroid/ranging/RangingConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    invoke-virtual {p0}, Landroid/ranging/raw/RawInitiatorRangingConfig;->getRangingSessionType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig;->mRawRangingDevices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    return-void
.end method
