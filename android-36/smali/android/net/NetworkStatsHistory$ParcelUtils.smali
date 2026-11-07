.class public Landroid/net/NetworkStatsHistory$ParcelUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelUtils"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o readLongArray(Landroid/os/Parcel;)[J
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1113
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1114
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    .line 1115
    :cond_9
    new-array v1, v0, [J

    .line 1116
    .local v1, "values":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 1117
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1119
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method

.method public static greylist-max-o writeLongArray(Landroid/os/Parcel;[JI)V
    .registers 6
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "values"    # [J
    .param p2, "size"    # I

    .line 1123
    if-nez p1, :cond_7

    .line 1124
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    return-void

    .line 1127
    :cond_7
    array-length v0, p1

    if-gt p2, v0, :cond_19

    .line 1130
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p2, :cond_18

    .line 1132
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1134
    .end local v0    # "i":I
    :cond_18
    return-void

    .line 1128
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size larger than length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
