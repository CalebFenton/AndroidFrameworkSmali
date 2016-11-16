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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readLongArray(Landroid/os/Parcel;)[J
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 747
    .local v1, "size":I
    const/4 v3, -0x1

    #@5
    if-ne v1, v3, :cond_0

    #@7
    const/4 v3, 0x0

    #@8
    return-object v3

    #@9
    .line 748
    :cond_0
    new-array v2, v1, [J

    #@b
    .line 749
    .local v2, "values":[J
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@d
    if-ge v0, v3, :cond_1

    #@f
    .line 750
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v4

    #@13
    aput-wide v4, v2, v0

    #@15
    .line 749
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 752
    :cond_1
    return-object v2
.end method

.method public static writeLongArray(Landroid/os/Parcel;[JI)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "values"    # [J
    .param p2, "size"    # I

    #@0
    .prologue
    .line 756
    if-nez p1, :cond_0

    #@2
    .line 757
    const/4 v1, -0x1

    #@3
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 758
    return-void

    #@7
    .line 760
    :cond_0
    array-length v1, p1

    #@8
    if-le p2, v1, :cond_1

    #@a
    .line 761
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "size larger than length"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 763
    :cond_1
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 764
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    #@19
    .line 765
    aget-wide v2, p1, v0

    #@1b
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 764
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 755
    :cond_2
    return-void
.end method
