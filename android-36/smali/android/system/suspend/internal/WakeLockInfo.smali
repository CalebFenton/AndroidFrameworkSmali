.class public Landroid/system/suspend/internal/WakeLockInfo;
.super Ljava/lang/Object;
.source "WakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/suspend/internal/WakeLockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeCount:J

.field public blacklist activeTime:J

.field public blacklist eventCount:J

.field public blacklist expireCount:J

.field public blacklist isActive:Z

.field public blacklist isKernelWakelock:Z

.field public blacklist lastChange:J

.field public blacklist maxTime:J

.field public blacklist name:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist preventSuspendTime:J

.field public blacklist totalTime:J

.field public blacklist wakeupCount:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/system/suspend/internal/WakeLockInfo$1;

    invoke-direct {v0}, Landroid/system/suspend/internal/WakeLockInfo$1;-><init>()V

    sput-object v0, Landroid/system/suspend/internal/WakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 42
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    .line 43
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    .line 44
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 46
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 47
    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 49
    iput v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    .line 51
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    .line 52
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    .line 53
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    .line 54
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 92
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_199

    .line 95
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 123
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 123
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 123
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 123
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 123
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 123
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_bc

    move v2, v5

    goto :goto_bd

    :cond_bc
    move v2, v6

    :goto_bd
    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d5

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cf

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 123
    :cond_cf
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_d5
    :try_start_d5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f1

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_eb

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 123
    :cond_eb
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_f1
    :try_start_f1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f8

    goto :goto_f9

    :cond_f8
    move v5, v6

    :goto_f9
    iput-boolean v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ff
    .catchall {:try_start_f1 .. :try_end_ff} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_111

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10b

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 123
    :cond_10b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_111
    :try_start_111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11b
    .catchall {:try_start_111 .. :try_end_11b} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12d

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_127

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 123
    :cond_127
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_12d
    :try_start_12d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_137
    .catchall {:try_start_12d .. :try_end_137} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_149

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_143

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void

    .line 123
    :cond_143
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_149
    :try_start_149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_153
    .catchall {:try_start_149 .. :try_end_153} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_165

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_15f

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 123
    :cond_15f
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_165
    :try_start_165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_16f
    .catchall {:try_start_165 .. :try_end_16f} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_181

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17b

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    return-void

    .line 123
    :cond_17b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_181
    :try_start_181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J
    :try_end_187
    .catchall {:try_start_181 .. :try_end_187} :catchall_197

    .line 122
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_191

    .line 125
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    nop

    .line 127
    return-void

    .line 123
    :cond_191
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :catchall_197
    move-exception v2

    goto :goto_1a1

    .line 94
    :cond_199
    :try_start_199
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/suspend/internal/WakeLockInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_1a1
    .catchall {:try_start_199 .. :try_end_1a1} :catchall_197

    .line 122
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/suspend/internal/WakeLockInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_1a1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1aa

    .line 123
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1aa
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 70
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-boolean v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-boolean v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 85
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void
.end method
