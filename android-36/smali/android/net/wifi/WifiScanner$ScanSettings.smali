.class public Landroid/net/wifi/WifiScanner$ScanSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist band:I

.field public whitelist channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public final whitelist hiddenNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist hideFromAppOps:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist ignoreLocationSettings:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public greylist-max-o isPnoScan:Z

.field private blacklist mEnable6GhzPsc:Z

.field private blacklist mRnrSetting:I

.field private blacklist mVendorIes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist maxPeriodInMs:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist maxScansToCache:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist numBssidsPerScan:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist periodInMs:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist reportEvents:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist stepCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist type:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmVendorIes(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnable6GhzPsc(Landroid/net/wifi/WifiScanner$ScanSettings;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRnrSetting(Landroid/net/wifi/WifiScanner$ScanSettings;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 836
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    .line 537
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    .line 631
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 760
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .registers 9
    .param p1, "that"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    .line 537
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    .line 631
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 767
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 768
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 769
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 770
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 771
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 772
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 773
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 774
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 775
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 776
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    .line 777
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hideFromAppOps:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hideFromAppOps:Z

    .line 778
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    iput v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    .line 779
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    .line 780
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v1, :cond_7c

    .line 781
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_58
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_7b

    .line 783
    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    iget-object v4, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(IZI)V

    .line 785
    .local v1, "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v1, v2, v0

    .line 782
    .end local v1    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .end local v0    # "i":I
    :cond_7b
    goto :goto_80

    .line 788
    :cond_7c
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 790
    :goto_80
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 791
    .local v1, "hiddenNetwork":Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iget-object v4, v1, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v1    # "hiddenNetwork":Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    goto :goto_86

    .line 793
    :cond_9f
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 794
    .local v1, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    new-instance v3, Landroid/net/wifi/ScanResult$InformationElement;

    iget v4, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iget v5, v1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    iget-object v6, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-direct {v3, v4, v5, v6}, Landroid/net/wifi/ScanResult$InformationElement;-><init>(II[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v1    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_a5

    .line 796
    :cond_c2
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRnrSetting()I
    .registers 2

    .line 709
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 712
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    return v0

    .line 710
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getVendorIes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 754
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 757
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    return-object v0

    .line 755
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist is6GhzPscOnlyEnabled()Z
    .registers 2

    .line 681
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 684
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    return v0

    .line 682
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist set6GhzPscOnlyEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 670
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 673
    iput-boolean p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    .line 674
    return-void

    .line 671
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setRnrSetting(I)V
    .registers 4
    .param p1, "rnrSetting"    # I

    .line 694
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 697
    if-ltz p1, :cond_e

    const/4 v0, 0x2

    if-gt p1, v0, :cond_e

    .line 701
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    .line 702
    return-void

    .line 699
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rnrSetting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setVendorIes(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 722
    .local p1, "vendorIes":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 726
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "totalBytes":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    .line 729
    .local v2, "e":Landroid/net/wifi/ScanResult$InformationElement;
    iget v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_48

    .line 734
    iget-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-eqz v3, :cond_40

    iget-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v3, v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_40

    .line 739
    iget-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 740
    const/16 v3, 0x200

    if-gt v0, v3, :cond_38

    .line 745
    .end local v2    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_10

    .line 741
    .restart local v2    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "received InformationElement whose total size is greater than 512."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "received InformationElement whose payload is null or size is greater than 255."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "received InformationElement which is not a Vendor Specific IE (VSIE). VSIEs have an ID = ScanResult.InformationElement.EID_VSA."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    .end local v2    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_50
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    return-void

    .line 723
    .end local v0    # "totalBytes":I
    :cond_56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 805
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hideFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v0, :cond_70

    .line 819
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_6f

    .line 821
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .end local v0    # "i":I
    :cond_6f
    goto :goto_74

    .line 826
    :cond_70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    :goto_74
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 830
    .local v1, "hiddenNetwork":Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    iget-object v2, v1, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 831
    .end local v1    # "hiddenNetwork":Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    goto :goto_83

    .line 832
    :cond_95
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mVendorIes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 833
    return-void
.end method
