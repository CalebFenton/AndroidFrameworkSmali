.class public Landroid/net/connectivity/android/net/netstats/StatsResult;
.super Ljava/lang/Object;
.source "StatsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/netstats/StatsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist rxBytes:J

.field public final blacklist rxPackets:J

.field public final blacklist txBytes:J

.field public final blacklist txPackets:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/netstats/StatsResult;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/net/connectivity/android/net/netstats/StatsResult$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/netstats/StatsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJ)V
    .registers 9
    .param p1, "rxBytes"    # J
    .param p3, "rxPackets"    # J
    .param p5, "txBytes"    # J
    .param p7, "txPackets"    # J

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    .line 73
    iput-wide p3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    .line 74
    iput-wide p5, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    .line 75
    iput-wide p7, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    .line 76
    return-void
.end method

.method private static blacklist internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/netstats/StatsResult;
    .registers 15
    .param p0, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;-><init>()V

    .line 80
    .local v0, "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 81
    .local v1, "_aidl_start_pos":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_aidl_parcelable_size":I
    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_be

    :try_start_15
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_35

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_bc

    .line 101
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2f

    .line 104
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v3

    return-object v3

    .line 102
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 87
    .local v6, "_aidl_temp_rxBytes":J
    invoke-virtual {v0, v6, v7}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->setRxBytes(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;

    .line 88
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_59

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_bc

    .line 101
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_53

    .line 104
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v3

    return-object v3

    .line 102
    :cond_53
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 91
    .local v8, "_aidl_temp_rxPackets":J
    invoke-virtual {v0, v8, v9}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->setRxPackets(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_7d

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_bc

    .line 101
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_77

    .line 104
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v3

    return-object v3

    .line 102
    :cond_77
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 95
    .local v10, "_aidl_temp_txBytes":J
    invoke-virtual {v0, v10, v11}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->setTxBytes(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;

    .line 96
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_a1

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_bc

    .line 101
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9b

    .line 104
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v3

    return-object v3

    .line 102
    :cond_9b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 99
    .local v12, "_aidl_temp_txPackets":J
    invoke-virtual {v0, v12, v13}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->setTxPackets(J)Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_bc

    .line 101
    nop

    .end local v6    # "_aidl_temp_rxBytes":J
    .end local v8    # "_aidl_temp_rxPackets":J
    .end local v10    # "_aidl_temp_txBytes":J
    .end local v12    # "_aidl_temp_txPackets":J
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_b6

    .line 104
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v3

    return-object v3

    .line 102
    :cond_b6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :catchall_bc
    move-exception v3

    goto :goto_c6

    .line 83
    :cond_be
    :try_start_be
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    .end local v1    # "_aidl_start_pos":I
    .end local v2    # "_aidl_parcelable_size":I
    .end local p0    # "_aidl_parcel":Landroid/os/Parcel;
    throw v3
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_bc

    .line 101
    .restart local v0    # "_aidl_parcelable_builder":Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;
    .restart local v1    # "_aidl_start_pos":I
    .restart local v2    # "_aidl_parcelable_size":I
    .restart local p0    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_c6
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_d3

    .line 104
    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/netstats/StatsResult$Builder;->build()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v3

    return-object v3

    .line 102
    :cond_d3
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "_mask":I
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 120
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 121
    :cond_8
    instance-of v2, p1, Landroid/net/connectivity/android/net/netstats/StatsResult;

    if-nez v2, :cond_d

    return v1

    .line 122
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/net/connectivity/android/net/netstats/StatsResult;

    .line 123
    .local v2, "that":Landroid/net/connectivity/android/net/netstats/StatsResult;
    iget-wide v3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 124
    :cond_23
    iget-wide v3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 125
    :cond_36
    iget-wide v3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    return v1

    .line 126
    :cond_49
    iget-wide v3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    return v1

    .line 127
    :cond_5c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 132
    iget-wide v0, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 110
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 111
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rxPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 60
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->rxPackets:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-wide v1, p0, Landroid/net/connectivity/android/net/netstats/StatsResult;->txPackets:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 66
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void
.end method
