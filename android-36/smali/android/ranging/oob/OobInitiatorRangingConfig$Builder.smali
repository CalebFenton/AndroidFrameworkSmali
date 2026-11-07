.class public final Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
.super Ljava/lang/Object;
.source "OobInitiatorRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/oob/OobInitiatorRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDeviceHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/ranging/oob/DeviceHandle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFastestRangingInterval:Ljava/time/Duration;

.field private blacklist mRangingMode:I

.field private blacklist mSecurityLevel:I

.field private blacklist mSlowestRangingInterval:Ljava/time/Duration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceHandles(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mDeviceHandles:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFastestRangingInterval(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mFastestRangingInterval:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingMode(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mRangingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecurityLevel(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mSecurityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlowestRangingInterval(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mSlowestRangingInterval:Ljava/time/Duration;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mDeviceHandles:Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mSecurityLevel:I

    .line 236
    iput v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mRangingMode:I

    .line 239
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mFastestRangingInterval:Ljava/time/Duration;

    .line 240
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mSlowestRangingInterval:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public whitelist addDeviceHandle(Landroid/ranging/oob/DeviceHandle;)Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
    .registers 3
    .param p1, "deviceHandle"    # Landroid/ranging/oob/DeviceHandle;

    .line 279
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mDeviceHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-object p0
.end method

.method public whitelist addDeviceHandles(Ljava/util/List;)Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/ranging/oob/DeviceHandle;",
            ">;)",
            "Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;"
        }
    .end annotation

    .line 291
    .local p1, "deviceHandles":Ljava/util/List;, "Ljava/util/List<Landroid/ranging/oob/DeviceHandle;>;"
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mDeviceHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    return-object p0
.end method

.method public whitelist build()Landroid/ranging/oob/OobInitiatorRangingConfig;
    .registers 3

    .line 328
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mDeviceHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 331
    new-instance v0, Landroid/ranging/oob/OobInitiatorRangingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/oob/OobInitiatorRangingConfig;-><init>(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;Landroid/ranging/oob/OobInitiatorRangingConfig-IA;)V

    return-object v0

    .line 329
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device handle list cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFastestRangingInterval(Ljava/time/Duration;)Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
    .registers 2
    .param p1, "intervalMs"    # Ljava/time/Duration;

    .line 251
    iput-object p1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mFastestRangingInterval:Ljava/time/Duration;

    .line 252
    return-object p0
.end method

.method public whitelist setRangingMode(I)Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
    .registers 2
    .param p1, "rangingMode"    # I

    .line 317
    iput p1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mRangingMode:I

    .line 318
    return-object p0
.end method

.method public whitelist setSecurityLevel(I)Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
    .registers 2
    .param p1, "securityLevel"    # I

    .line 304
    iput p1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mSecurityLevel:I

    .line 305
    return-object p0
.end method

.method public whitelist setSlowestRangingInterval(Ljava/time/Duration;)Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;
    .registers 4
    .param p1, "intervalMs"    # Ljava/time/Duration;

    .line 264
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/time/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_f

    .line 267
    iput-object p1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->mSlowestRangingInterval:Ljava/time/Duration;

    .line 268
    return-object p0

    .line 265
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slowest duration cannot be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
