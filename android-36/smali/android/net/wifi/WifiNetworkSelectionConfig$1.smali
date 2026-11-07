.class Landroid/net/wifi/WifiNetworkSelectionConfig$1;
.super Ljava/lang/Object;
.source "WifiNetworkSelectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSelectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkSelectionConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSelectionConfig;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 534
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;-><init>(Landroid/net/wifi/WifiNetworkSelectionConfig-IA;)V

    .line 535
    .local v0, "config":Landroid/net/wifi/WifiNetworkSelectionConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmSufficiencyCheckEnabledWhenScreenOff(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmSufficiencyCheckEnabledWhenScreenOn(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmAssociatedNetworkSelectionOverride(Landroid/net/wifi/WifiNetworkSelectionConfig;I)V

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmUserConnectChoiceOverrideEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmLastSelectionWeightEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V

    .line 540
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fgetmRssi2Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;)[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 541
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fgetmRssi5Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;)[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 542
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fgetmRssi6Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;)[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 543
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->-$$Nest$fputmFrequencyWeights(Landroid/net/wifi/WifiNetworkSelectionConfig;Landroid/util/SparseArray;)V

    .line 544
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSelectionConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiNetworkSelectionConfig;
    .registers 3
    .param p1, "size"    # I

    .line 549
    new-array v0, p1, [Landroid/net/wifi/WifiNetworkSelectionConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig$1;->newArray(I)[Landroid/net/wifi/WifiNetworkSelectionConfig;

    move-result-object p1

    return-object p1
.end method
