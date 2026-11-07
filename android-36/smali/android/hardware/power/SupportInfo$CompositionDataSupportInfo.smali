.class public Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
.super Ljava/lang/Object;
.source "SupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/SupportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositionDataSupportInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist alwaysBatch:Z

.field public blacklist disableGpuFences:Z

.field public blacklist isSupported:Z

.field public blacklist maxBatchSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo$1;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->isSupported:Z

    .line 97
    iput-boolean v0, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->disableGpuFences:Z

    .line 98
    iput v0, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->maxBatchSize:I

    .line 99
    iput-boolean v0, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->alwaysBatch:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 130
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_92

    .line 133
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    return-void

    .line 143
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->isSupported:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    return-void

    .line 143
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->disableGpuFences:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    return-void

    .line 143
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->maxBatchSize:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 139
    return-void

    .line 143
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->alwaysBatch:Z
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_90

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8a

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    nop

    .line 147
    return-void

    .line 143
    :cond_8a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :catchall_90
    move-exception v2

    goto :goto_9a

    .line 132
    :cond_92
    :try_start_92
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_90

    .line 142
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a3

    .line 143
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_a3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 117
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v1, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->isSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-boolean v1, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->disableGpuFences:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget v1, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->maxBatchSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean v1, p0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->alwaysBatch:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 123
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void
.end method
