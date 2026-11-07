.class public final Landroid/ranging/oob/OobResponderRangingConfig$Builder;
.super Ljava/lang/Object;
.source "OobResponderRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/oob/OobResponderRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDeviceHandle:Landroid/ranging/oob/DeviceHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceHandle(Landroid/ranging/oob/OobResponderRangingConfig$Builder;)Landroid/ranging/oob/DeviceHandle;
    .registers 1

    iget-object p0, p0, Landroid/ranging/oob/OobResponderRangingConfig$Builder;->mDeviceHandle:Landroid/ranging/oob/DeviceHandle;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/ranging/oob/DeviceHandle;)V
    .registers 2
    .param p1, "deviceHandle"    # Landroid/ranging/oob/DeviceHandle;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Landroid/ranging/oob/OobResponderRangingConfig$Builder;->mDeviceHandle:Landroid/ranging/oob/DeviceHandle;

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/oob/OobResponderRangingConfig;
    .registers 3

    .line 109
    new-instance v0, Landroid/ranging/oob/OobResponderRangingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/oob/OobResponderRangingConfig;-><init>(Landroid/ranging/oob/OobResponderRangingConfig$Builder;Landroid/ranging/oob/OobResponderRangingConfig-IA;)V

    return-object v0
.end method
