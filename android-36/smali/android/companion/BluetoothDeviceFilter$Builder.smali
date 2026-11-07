.class public final Landroid/companion/BluetoothDeviceFilter$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/BluetoothDeviceFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mAddress:Ljava/lang/String;

.field private greylist-max-o mNamePattern:Ljava/util/regex/Pattern;

.field private greylist-max-o mServiceUuid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mServiceUuidMask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/companion/BluetoothDeviceFilter$Builder;
    .registers 4
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceUuidMask"    # Landroid/os/ParcelUuid;

    .line 214
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter$Builder;->checkNotUsed()V

    .line 215
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mServiceUuid:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mServiceUuid:Ljava/util/ArrayList;

    .line 216
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mServiceUuidMask:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mServiceUuidMask:Ljava/util/ArrayList;

    .line 217
    return-object p0
.end method

.method public whitelist build()Landroid/companion/BluetoothDeviceFilter;
    .registers 7

    .line 224
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter$Builder;->markUsed()V

    .line 225
    new-instance v0, Landroid/companion/BluetoothDeviceFilter;

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mAddress:Ljava/lang/String;

    iget-object v3, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mServiceUuid:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mServiceUuidMask:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/companion/BluetoothDeviceFilter;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/companion/BluetoothDeviceFilter-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter$Builder;->build()Landroid/companion/BluetoothDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAddress(Ljava/lang/String;)Landroid/companion/BluetoothDeviceFilter$Builder;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter$Builder;->checkNotUsed()V

    .line 199
    iput-object p1, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mAddress:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public whitelist setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothDeviceFilter$Builder;
    .registers 2
    .param p1, "regex"    # Ljava/util/regex/Pattern;

    .line 187
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter$Builder;->checkNotUsed()V

    .line 188
    iput-object p1, p0, Landroid/companion/BluetoothDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 189
    return-object p0
.end method
