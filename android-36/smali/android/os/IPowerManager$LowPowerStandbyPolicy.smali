.class public Landroid/os/IPowerManager$LowPowerStandbyPolicy;
.super Ljava/lang/Object;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowPowerStandbyPolicy"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IPowerManager$LowPowerStandbyPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist allowedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist allowedReasons:I

.field public blacklist exemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2768
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy$1;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPolicy$1;-><init>()V

    sput-object v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2766
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2816
    const/4 v0, 0x0

    .line 2817
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 2795
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2796
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2798
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_92

    .line 2799
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 2808
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 2811
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2799
    return-void

    .line 2809
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2800
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    .line 2801
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 2808
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 2811
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2801
    return-void

    .line 2809
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2802
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    .line 2803
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 2808
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 2811
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2803
    return-void

    .line 2809
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2804
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    .line 2805
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 2808
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 2811
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2805
    return-void

    .line 2809
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2806
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_90

    .line 2808
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8a

    .line 2811
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2812
    nop

    .line 2813
    return-void

    .line 2809
    :cond_8a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2808
    :catchall_90
    move-exception v2

    goto :goto_9a

    .line 2798
    :cond_92
    :try_start_92
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_90

    .line 2808
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a3

    .line 2809
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2811
    :cond_a3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2812
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 2782
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2783
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2784
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2785
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2786
    iget v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2788
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2789
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2790
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2791
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2792
    return-void
.end method
