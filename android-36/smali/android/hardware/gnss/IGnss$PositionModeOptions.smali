.class public Landroid/hardware/gnss/IGnss$PositionModeOptions;
.super Ljava/lang/Object;
.source "IGnss.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionModeOptions"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnss$PositionModeOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist lowPowerMode:Z

.field public blacklist minIntervalMs:I

.field public blacklist mode:I

.field public blacklist preferredAccuracyMeters:I

.field public blacklist preferredTimeMs:I

.field public blacklist recurrence:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1147
    new-instance v0, Landroid/hardware/gnss/IGnss$PositionModeOptions$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnss$PositionModeOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->minIntervalMs:I

    .line 1142
    iput v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredAccuracyMeters:I

    .line 1143
    iput v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredTimeMs:I

    .line 1144
    iput-boolean v0, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->lowPowerMode:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 1146
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1177
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1179
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ca

    .line 1180
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1180
    return-void

    .line 1194
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1181
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->mode:I

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1182
    return-void

    .line 1194
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1183
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->recurrence:I

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1184
    return-void

    .line 1194
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1185
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->minIntervalMs:I

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1186
    return-void

    .line 1194
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1187
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredAccuracyMeters:I

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1188
    return-void

    .line 1194
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1189
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredTimeMs:I

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1190
    return-void

    .line 1194
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1191
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->lowPowerMode:Z
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_c8

    .line 1193
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    .line 1196
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1197
    nop

    .line 1198
    return-void

    .line 1194
    :cond_c2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1193
    :catchall_c8
    move-exception v2

    goto :goto_d2

    .line 1179
    :cond_ca
    :try_start_ca
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnss$PositionModeOptions;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_c8

    .line 1193
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnss$PositionModeOptions;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_db

    .line 1194
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1196
    :cond_db
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1197
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 1161
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1162
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget v1, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->mode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget v1, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->recurrence:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget v1, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->minIntervalMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget v1, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredAccuracyMeters:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    iget v1, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->preferredTimeMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget-boolean v1, p0, Landroid/hardware/gnss/IGnss$PositionModeOptions;->lowPowerMode:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1170
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1171
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1173
    return-void
.end method
