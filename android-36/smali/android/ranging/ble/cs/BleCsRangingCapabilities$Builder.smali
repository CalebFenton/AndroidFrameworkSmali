.class public final Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;
.super Ljava/lang/Object;
.source "BleCsRangingCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/ble/cs/BleCsRangingCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBluetoothAddress:Ljava/lang/String;

.field private blacklist mSupportedSecurityLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothAddress(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;->mBluetoothAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedSecurityLevels(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;->mSupportedSecurityLevels:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/ranging/ble/cs/BleCsRangingCapabilities;
    .registers 3

    .line 186
    new-instance v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities;-><init>(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;Landroid/ranging/ble/cs/BleCsRangingCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setBluetoothAddress(Ljava/lang/String;)Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 175
    iput-object p1, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;->mBluetoothAddress:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public blacklist setSupportedSecurityLevels(Ljava/util/List;)Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;"
        }
    .end annotation

    .line 163
    .local p1, "supportedSecurityLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;->mSupportedSecurityLevels:Ljava/util/List;

    .line 164
    return-object p0
.end method
