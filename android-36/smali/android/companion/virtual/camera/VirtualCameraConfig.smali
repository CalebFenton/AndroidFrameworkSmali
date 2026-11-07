.class public final Landroid/companion/virtual/camera/VirtualCameraConfig;
.super Ljava/lang/Object;
.source "VirtualCameraConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;,
        Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;,
        Landroid/companion/virtual/camera/VirtualCameraConfig$SensorOrientation;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/camera/VirtualCameraConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LENS_FACING_UNKNOWN:I = -0x1

.field public static final whitelist SENSOR_ORIENTATION_0:I = 0x0

.field public static final whitelist SENSOR_ORIENTATION_180:I = 0xb4

.field public static final whitelist SENSOR_ORIENTATION_270:I = 0x10e

.field public static final whitelist SENSOR_ORIENTATION_90:I = 0x5a


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

.field private final blacklist mLensFacing:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mSensorOrientation:I

.field private final blacklist mStreamConfigurations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisFormatSupported(I)Z
    .registers 1

    invoke-static {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->isFormatSupported(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 366
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/camera/VirtualCameraConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 117
    const-class v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 118
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;II)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/companion/virtual/camera/VirtualCameraCallback;
    .param p5, "sensorOrientation"    # I
    .param p6, "lensFacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/companion/virtual/camera/VirtualCameraCallback;",
            "II)V"
        }
    .end annotation

    .line 95
    .local p2, "streamConfigurations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/virtual/camera/VirtualCameraStreamConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "Missing name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    .line 97
    const/4 v0, -0x1

    if-eq p6, v0, :cond_4c

    .line 100
    iput p6, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    .line 101
    nop

    .line 102
    const-string v0, "Missing stream configurations"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    .line 103
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 107
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    .line 109
    const-string v1, "Missing callback"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/camera/VirtualCameraCallback;

    .line 110
    const-string v2, "Missing callback executor"

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 111
    iput p5, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    .line 112
    return-void

    .line 104
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one stream configuration is needed to create a virtual camera."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lens facing must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IILandroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;II)V

    return-void
.end method

.method private static blacklist isFormatSupported(I)Z
    .registers 2
    .param p0, "format"    # I

    .line 380
    sparse-switch p0, :sswitch_data_8

    .line 382
    const/4 v0, 0x0

    goto :goto_6

    .line 381
    :sswitch_5
    const/4 v0, 0x1

    .line 380
    :goto_6
    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x23 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    return-object v0
.end method

.method public whitelist getLensFacing()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSensorOrientation()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    return v0
.end method

.method public whitelist getStreamConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 135
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 135
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 137
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
