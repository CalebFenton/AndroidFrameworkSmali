.class public Landroid/hardware/gnss/GnssData$GnssAgc;
.super Ljava/lang/Object;
.source "GnssData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/GnssData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssAgc"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssData$GnssAgc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist agcLevelDb:D

.field public blacklist carrierFrequencyHz:J

.field public blacklist constellation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/hardware/gnss/GnssData$GnssAgc$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssData$GnssAgc$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssData$GnssAgc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->agcLevelDb:D

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->constellation:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->carrierFrequencyHz:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 122
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_76

    .line 125
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 132
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 135
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    return-void

    .line 133
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->agcLevelDb:D

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 132
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 135
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    return-void

    .line 133
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->constellation:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 132
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 135
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    return-void

    .line 133
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->carrierFrequencyHz:J
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_74

    .line 132
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6e

    .line 135
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    nop

    .line 137
    return-void

    .line 133
    :cond_6e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :catchall_74
    move-exception v2

    goto :goto_7e

    .line 124
    :cond_76
    :try_start_76
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/GnssData$GnssAgc;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_74

    .line 132
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/GnssData$GnssAgc;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_7e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_87

    .line 133
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_87
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 110
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-wide v1, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->agcLevelDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 112
    iget v1, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-wide v1, p0, Landroid/hardware/gnss/GnssData$GnssAgc;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 115
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void
.end method
