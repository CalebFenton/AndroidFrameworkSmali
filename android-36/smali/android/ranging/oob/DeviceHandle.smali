.class public final Landroid/ranging/oob/DeviceHandle;
.super Ljava/lang/Object;
.source "DeviceHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/oob/DeviceHandle$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/oob/DeviceHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRangingDevice:Landroid/ranging/RangingDevice;

.field private final blacklist mTransportHandle:Landroid/ranging/oob/TransportHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/ranging/oob/DeviceHandle$1;

    invoke-direct {v0}, Landroid/ranging/oob/DeviceHandle$1;-><init>()V

    sput-object v0, Landroid/ranging/oob/DeviceHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Landroid/ranging/RangingDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingDevice;

    iput-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mTransportHandle:Landroid/ranging/oob/TransportHandle;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/oob/DeviceHandle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/oob/DeviceHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/oob/DeviceHandle$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/oob/DeviceHandle$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/ranging/oob/DeviceHandle$Builder;->-$$Nest$fgetmRangingDevice(Landroid/ranging/oob/DeviceHandle$Builder;)Landroid/ranging/RangingDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 44
    invoke-static {p1}, Landroid/ranging/oob/DeviceHandle$Builder;->-$$Nest$fgetmTransportHandle(Landroid/ranging/oob/DeviceHandle$Builder;)Landroid/ranging/oob/TransportHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mTransportHandle:Landroid/ranging/oob/TransportHandle;

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/oob/DeviceHandle$Builder;Landroid/ranging/oob/DeviceHandle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/oob/DeviceHandle;-><init>(Landroid/ranging/oob/DeviceHandle$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRangingDevice()Landroid/ranging/RangingDevice;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    return-object v0
.end method

.method public whitelist getTransportHandle()Landroid/ranging/oob/TransportHandle;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mTransportHandle:Landroid/ranging/oob/TransportHandle;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceHandle{ mRangingDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/oob/DeviceHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/oob/DeviceHandle;->mTransportHandle:Landroid/ranging/oob/TransportHandle;

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

    .line 93
    iget-object v0, p0, Landroid/ranging/oob/DeviceHandle;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    return-void
.end method
