.class Landroid/net/wifi/SecurityParams$1;
.super Ljava/lang/Object;
.source "SecurityParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SecurityParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SecurityParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SecurityParams;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 576
    new-instance v0, Landroid/net/wifi/SecurityParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams-IA;)V

    .line 577
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmSecurityType(Landroid/net/wifi/SecurityParams;I)V

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmEnabled(Landroid/net/wifi/SecurityParams;Z)V

    .line 579
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedKeyManagement(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 580
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedProtocols(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 581
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedAuthAlgorithms(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 582
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedPairwiseCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 583
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedGroupCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 584
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedGroupManagementCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 585
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->-$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmAllowedSuiteBCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmRequirePmf(Landroid/net/wifi/SecurityParams;Z)V

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmIsAddedByAutoUpgrade(Landroid/net/wifi/SecurityParams;Z)V

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmIsSaeH2eOnlyMode(Landroid/net/wifi/SecurityParams;Z)V

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SecurityParams;->-$$Nest$fputmIsSaePkOnlyMode(Landroid/net/wifi/SecurityParams;Z)V

    .line 590
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

    .line 574
    invoke-virtual {p0, p1}, Landroid/net/wifi/SecurityParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SecurityParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/SecurityParams;
    .registers 3
    .param p1, "size"    # I

    .line 594
    new-array v0, p1, [Landroid/net/wifi/SecurityParams;

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

    .line 574
    invoke-virtual {p0, p1}, Landroid/net/wifi/SecurityParams$1;->newArray(I)[Landroid/net/wifi/SecurityParams;

    move-result-object p1

    return-object p1
.end method
