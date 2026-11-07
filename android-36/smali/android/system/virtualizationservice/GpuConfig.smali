.class public Landroid/system/virtualizationservice/GpuConfig;
.super Ljava/lang/Object;
.source "GpuConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/GpuConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist backend:Ljava/lang/String;

.field public blacklist contextTypes:[Ljava/lang/String;

.field public blacklist pciAddress:Ljava/lang/String;

.field public blacklist rendererFeatures:Ljava/lang/String;

.field public blacklist rendererUseEgl:Z

.field public blacklist rendererUseGles:Z

.field public blacklist rendererUseGlx:Z

.field public blacklist rendererUseSurfaceless:Z

.field public blacklist rendererUseVulkan:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/system/virtualizationservice/GpuConfig$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/GpuConfig$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/GpuConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseEgl:Z

    .line 17
    iput-boolean v0, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGles:Z

    .line 18
    iput-boolean v0, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGlx:Z

    .line 19
    iput-boolean v0, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseSurfaceless:Z

    .line 20
    iput-boolean v0, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseVulkan:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11e

    .line 57
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 77
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/GpuConfig;->backend:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 77
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/GpuConfig;->contextTypes:[Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 77
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/GpuConfig;->pciAddress:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 77
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererFeatures:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 77
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseEgl:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 77
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGles:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 77
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGlx:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 77
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseSurfaceless:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 77
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseVulkan:Z
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_11c

    .line 76
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 79
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    nop

    .line 81
    return-void

    .line 77
    :cond_116
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :catchall_11c
    move-exception v2

    goto :goto_126

    .line 56
    :cond_11e
    :try_start_11e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/virtualizationservice/GpuConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_11c

    .line 76
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/virtualizationservice/GpuConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_126
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12f

    .line 77
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_12f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/system/virtualizationservice/GpuConfig;->backend:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Landroid/system/virtualizationservice/GpuConfig;->contextTypes:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Landroid/system/virtualizationservice/GpuConfig;->pciAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererFeatures:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-boolean v1, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseEgl:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    iget-boolean v1, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGles:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 43
    iget-boolean v1, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGlx:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-boolean v1, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseSurfaceless:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    iget-boolean v1, p0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseVulkan:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 47
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void
.end method
