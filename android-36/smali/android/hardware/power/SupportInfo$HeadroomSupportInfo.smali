.class public Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;
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
    name = "HeadroomSupportInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist cpuMaxCalculationWindowMillis:I

.field public blacklist cpuMaxTidCount:I

.field public blacklist cpuMinCalculationWindowMillis:I

.field public blacklist cpuMinIntervalMillis:I

.field public blacklist gpuMaxCalculationWindowMillis:I

.field public blacklist gpuMinCalculationWindowMillis:I

.field public blacklist gpuMinIntervalMillis:I

.field public blacklist isCpuSupported:Z

.field public blacklist isGpuSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo$1;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    .line 157
    iput-boolean v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    .line 158
    iput v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    .line 159
    iput v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    .line 160
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    .line 161
    const/16 v1, 0x2710

    iput v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    .line 162
    iput v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    .line 163
    iput v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    .line 164
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 200
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11e

    .line 203
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 203
    return-void

    .line 223
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 205
    return-void

    .line 223
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 207
    return-void

    .line 223
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 209
    return-void

    .line 223
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 211
    return-void

    .line 223
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 213
    return-void

    .line 223
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 215
    return-void

    .line 223
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 217
    return-void

    .line 223
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 219
    return-void

    .line 223
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_11c

    .line 222
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 225
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 226
    nop

    .line 227
    return-void

    .line 223
    :cond_116
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :catchall_11c
    move-exception v2

    goto :goto_126

    .line 202
    :cond_11e
    :try_start_11e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_11c

    .line 222
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_126
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12f

    .line 223
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_12f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 226
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 182
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-boolean v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 184
    iget-boolean v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v1, p0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 193
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 194
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    return-void
.end method
