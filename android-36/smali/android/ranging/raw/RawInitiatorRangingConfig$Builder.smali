.class public final Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;
.super Ljava/lang/Object;
.source "RawInitiatorRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/raw/RawInitiatorRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRawRangingDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/ranging/raw/RawRangingDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRawRangingDeviceList(Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;->mRawRangingDeviceList:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;->mRawRangingDeviceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addRawRangingDevice(Landroid/ranging/raw/RawRangingDevice;)Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;
    .registers 3
    .param p1, "rangingDevice"    # Landroid/ranging/raw/RawRangingDevice;

    .line 103
    iget-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;->mRawRangingDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-object p0
.end method

.method public whitelist addRawRangingDevices(Ljava/util/List;)Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/ranging/raw/RawRangingDevice;",
            ">;)",
            "Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;"
        }
    .end annotation

    .line 116
    .local p1, "rangingDevices":Ljava/util/List;, "Ljava/util/List<Landroid/ranging/raw/RawRangingDevice;>;"
    iget-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;->mRawRangingDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-object p0
.end method

.method public whitelist build()Landroid/ranging/raw/RawInitiatorRangingConfig;
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;->mRawRangingDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 131
    new-instance v0, Landroid/ranging/raw/RawInitiatorRangingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/raw/RawInitiatorRangingConfig;-><init>(Landroid/ranging/raw/RawInitiatorRangingConfig$Builder;Landroid/ranging/raw/RawInitiatorRangingConfig-IA;)V

    return-object v0

    .line 129
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging device list cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
