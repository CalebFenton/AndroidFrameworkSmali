.class public final Landroid/ranging/oob/DeviceHandle$Builder;
.super Ljava/lang/Object;
.source "DeviceHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/oob/DeviceHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRangingDevice:Landroid/ranging/RangingDevice;

.field private blacklist mTransportHandle:Landroid/ranging/oob/TransportHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRangingDevice(Landroid/ranging/oob/DeviceHandle$Builder;)Landroid/ranging/RangingDevice;
    .registers 1

    iget-object p0, p0, Landroid/ranging/oob/DeviceHandle$Builder;->mRangingDevice:Landroid/ranging/RangingDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportHandle(Landroid/ranging/oob/DeviceHandle$Builder;)Landroid/ranging/oob/TransportHandle;
    .registers 1

    iget-object p0, p0, Landroid/ranging/oob/DeviceHandle$Builder;->mTransportHandle:Landroid/ranging/oob/TransportHandle;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/ranging/RangingDevice;Landroid/ranging/oob/TransportHandle;)V
    .registers 3
    .param p1, "rangingDevice"    # Landroid/ranging/RangingDevice;
    .param p2, "transportHandle"    # Landroid/ranging/oob/TransportHandle;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Landroid/ranging/oob/DeviceHandle$Builder;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 117
    iput-object p2, p0, Landroid/ranging/oob/DeviceHandle$Builder;->mTransportHandle:Landroid/ranging/oob/TransportHandle;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/oob/DeviceHandle;
    .registers 3

    .line 128
    new-instance v0, Landroid/ranging/oob/DeviceHandle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/oob/DeviceHandle;-><init>(Landroid/ranging/oob/DeviceHandle$Builder;Landroid/ranging/oob/DeviceHandle-IA;)V

    return-object v0
.end method
