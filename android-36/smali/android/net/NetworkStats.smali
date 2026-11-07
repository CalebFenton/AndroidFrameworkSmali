.class public final Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Iterable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$Entry;,
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$StatsType;,
        Landroid/net/NetworkStats$DefaultNetwork;,
        Landroid/net/NetworkStats$Roaming;,
        Landroid/net/NetworkStats$Meteredness;,
        Landroid/net/NetworkStats$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Iterable<",
        "Landroid/net/NetworkStats$Entry;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_NETWORK_ALL:I = -0x1

.field public static final whitelist DEFAULT_NETWORK_NO:I = 0x0

.field public static final whitelist DEFAULT_NETWORK_YES:I = 0x1

.field public static final greylist-max-o IFACE_ALL:Ljava/lang/String;

.field public static final whitelist IFACE_VT:Ljava/lang/String; = "vt_data0"

.field public static final greylist-max-o INTERFACES_ALL:[Ljava/lang/String;

.field private static final greylist-max-o IPV4V6_HEADER_DELTA:I = 0x14

.field public static final whitelist METERED_ALL:I = -0x1

.field public static final whitelist METERED_NO:I = 0x0

.field public static final whitelist METERED_YES:I = 0x1

.field public static final whitelist ROAMING_ALL:I = -0x1

.field public static final whitelist ROAMING_NO:I = 0x0

.field public static final whitelist ROAMING_YES:I = 0x1

.field public static final whitelist SET_ALL:I = -0x1

.field public static final greylist-max-o SET_DBG_VPN_IN:I = 0x3e9

.field public static final greylist-max-o SET_DBG_VPN_OUT:I = 0x3ea

.field public static final greylist-max-o SET_DEBUG_START:I = 0x3e8

.field public static final whitelist SET_DEFAULT:I = 0x0

.field public static final whitelist SET_FOREGROUND:I = 0x1

.field public static final greylist-max-o STATS_PER_IFACE:I = 0x0

.field public static final greylist-max-o STATS_PER_UID:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkStats"

.field public static final greylist-max-o TAG_ALL:I = -0x1

.field public static final whitelist TAG_NONE:I = 0x0

.field public static final whitelist UID_ALL:I = -0x1

.field public static final whitelist UID_TETHERING:I = -0x5


# instance fields
.field private greylist-max-r capacity:I

.field private greylist-max-r defaultNetwork:[I

.field private greylist-max-o elapsedRealtime:J

.field private greylist-max-r iface:[Ljava/lang/String;

.field private greylist-max-r metered:[I

.field private greylist-max-r operations:[J

.field private greylist-max-r roaming:[I

.field private greylist rxBytes:[J

.field private greylist-max-r rxPackets:[J

.field private greylist set:[I

.field private greylist-max-r size:I

.field private greylist tag:[I

.field private greylist txBytes:[J

.field private greylist-max-r txPackets:[J

.field private greylist uid:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsize(Landroid/net/NetworkStats;)I
    .registers 1

    iget p0, p0, Landroid/net/NetworkStats;->size:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 128
    sput-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    .line 1561
    new-instance v0, Landroid/net/NetworkStats$2;

    invoke-direct {v0}, Landroid/net/NetworkStats$2;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JI)V
    .registers 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 539
    if-lez p3, :cond_3d

    .line 540
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 541
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 542
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 543
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 544
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 545
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 546
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 547
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 548
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 549
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 550
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 551
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 552
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_40

    .line 555
    :cond_3d
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clear()V

    .line 557
    :goto_40
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 577
    return-void
.end method

.method private blacklist addTrafficToApplications(ILjava/lang/String;Ljava/util/List;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)[Landroid/net/NetworkStats$Entry;
    .registers 37
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "perInterfaceTotal"    # [Landroid/net/NetworkStats$Entry;
    .param p6, "underlyingIfacesTotal"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "[",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ")[",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .line 1715
    .local p3, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/NetworkStats$Entry;

    .line 1716
    .local v4, "moved":[Landroid/net/NetworkStats$Entry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1f

    .line 1717
    new-instance v6, Landroid/net/NetworkStats$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    aput-object v6, v4, v5

    .line 1716
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1720
    .end local v5    # "i":I
    :cond_1f
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1721
    .local v5, "tmpEntry":Landroid/net/NetworkStats$Entry;
    iget v6, v0, Landroid/net/NetworkStats;->size:I

    .line 1722
    .local v6, "origSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_27
    if-ge v7, v6, :cond_209

    .line 1723
    iget-object v8, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v8, v8, v7

    move-object/from16 v9, p2

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 1725
    move-object/from16 v8, p3

    move/from16 v27, v6

    move/from16 v24, v7

    goto/16 :goto_1ff

    .line 1728
    :cond_3d
    iget-object v8, v0, Landroid/net/NetworkStats;->uid:[I

    aget v8, v8, v7

    if-ne v8, v1, :cond_4f

    const/16 v8, 0x3e8

    if-eq v1, v8, :cond_4f

    .line 1734
    move-object/from16 v8, p3

    move/from16 v27, v6

    move/from16 v24, v7

    goto/16 :goto_1ff

    .line 1736
    :cond_4f
    iget-object v8, v0, Landroid/net/NetworkStats;->uid:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1737
    iget-object v8, v0, Landroid/net/NetworkStats;->tag:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1738
    iget-object v8, v0, Landroid/net/NetworkStats;->metered:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1739
    iget-object v8, v0, Landroid/net/NetworkStats;->roaming:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1740
    iget-object v8, v0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1746
    const-wide/16 v10, 0x0

    .line 1747
    .local v10, "totalRxBytes":J
    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-lez v8, :cond_93

    .line 1751
    iget-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v18, v8, v7

    move-wide/from16 v22, v14

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1752
    move-wide/from16 v16, v12

    move-wide/from16 v20, v14

    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v12

    .line 1755
    .local v12, "rxBytesAcrossUnderlyingIfaces":J
    iget-object v8, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v14, v8, v7

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v14, v10

    goto :goto_96

    .line 1747
    .end local v12    # "rxBytesAcrossUnderlyingIfaces":J
    :cond_93
    move-wide/from16 v22, v14

    move-wide v14, v10

    .line 1757
    .end local v10    # "totalRxBytes":J
    .local v14, "totalRxBytes":J
    :goto_96
    const-wide/16 v10, 0x0

    .line 1758
    .local v10, "totalRxPackets":J
    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v8, v12, v22

    if-lez v8, :cond_ba

    .line 1759
    iget-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v18, v8, v7

    move v8, v6

    move/from16 v24, v7

    .end local v6    # "origSize":I
    .end local v7    # "i":I
    .local v8, "origSize":I
    .local v24, "i":I
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1760
    move-wide/from16 v20, v6

    move-wide/from16 v16, v12

    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v6

    .line 1762
    .local v6, "rxPacketsAcrossUnderlyingIfaces":J
    iget-object v12, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v12, v12, v24

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_bd

    .line 1758
    .end local v8    # "origSize":I
    .end local v24    # "i":I
    .local v6, "origSize":I
    .restart local v7    # "i":I
    :cond_ba
    move v8, v6

    move/from16 v24, v7

    .line 1764
    .end local v6    # "origSize":I
    .end local v7    # "i":I
    .restart local v8    # "origSize":I
    .restart local v24    # "i":I
    :goto_bd
    const-wide/16 v6, 0x0

    .line 1765
    .local v6, "totalTxBytes":J
    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v12, v12, v22

    if-lez v12, :cond_e1

    .line 1766
    iget-wide v12, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v1, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v18, v1, v24

    move-wide/from16 v25, v6

    .end local v6    # "totalTxBytes":J
    .local v25, "totalTxBytes":J
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1767
    move-wide/from16 v20, v6

    move-wide/from16 v16, v12

    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v6

    .line 1769
    .local v6, "txBytesAcrossUnderlyingIfaces":J
    iget-object v1, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v12, v1, v24

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-wide v6, v12

    .end local v25    # "totalTxBytes":J
    .local v12, "totalTxBytes":J
    goto :goto_e3

    .line 1765
    .end local v12    # "totalTxBytes":J
    .local v6, "totalTxBytes":J
    :cond_e1
    move-wide/from16 v25, v6

    .line 1771
    :goto_e3
    const-wide/16 v12, 0x0

    .line 1772
    .local v12, "totalTxPackets":J
    move-wide/from16 v25, v6

    .end local v6    # "totalTxBytes":J
    .restart local v25    # "totalTxBytes":J
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v1, v6, v22

    if-lez v1, :cond_108

    .line 1773
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v1, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v18, v1, v24

    move-wide/from16 v16, v6

    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1774
    move-wide/from16 v20, v6

    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v6

    .line 1776
    .local v6, "txPacketsAcrossUnderlyingIfaces":J
    iget-object v1, v0, Landroid/net/NetworkStats;->txPackets:[J

    move/from16 v27, v8

    .end local v8    # "origSize":I
    .local v27, "origSize":I
    aget-wide v8, v1, v24

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_10a

    .line 1772
    .end local v6    # "txPacketsAcrossUnderlyingIfaces":J
    .end local v27    # "origSize":I
    .restart local v8    # "origSize":I
    :cond_108
    move/from16 v27, v8

    .line 1778
    .end local v8    # "origSize":I
    .restart local v27    # "origSize":I
    :goto_10a
    const-wide/16 v6, 0x0

    .line 1779
    .local v6, "totalOperations":J
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v1, v8, v22

    if-lez v1, :cond_12e

    .line 1780
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v1, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v18, v1, v24

    move-wide/from16 v28, v6

    .end local v6    # "totalOperations":J
    .local v28, "totalOperations":J
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1781
    move-wide/from16 v20, v6

    move-wide/from16 v16, v8

    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v6

    .line 1783
    .local v6, "operationsAcrossUnderlyingIfaces":J
    iget-object v1, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v1, v24

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v6, v8

    .end local v28    # "totalOperations":J
    .local v8, "totalOperations":J
    goto :goto_130

    .line 1779
    .end local v8    # "totalOperations":J
    .local v6, "totalOperations":J
    :cond_12e
    move-wide/from16 v28, v6

    .line 1787
    :goto_130
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_131
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1fa

    .line 1788
    move-object/from16 v8, p3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1789
    move v9, v1

    move-wide/from16 v1, v22

    .end local v1    # "j":I
    .local v9, "j":I
    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1791
    iget-object v1, v0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v24

    iput v1, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 1792
    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v1, v1, v22

    if-lez v1, :cond_162

    .line 1793
    aget-object v1, p5, v9

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1794
    move-wide/from16 v18, v1

    invoke-static/range {v14 .. v19}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1798
    :cond_162
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1799
    move-wide/from16 v22, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v1, v1, v22

    if-lez v1, :cond_180

    .line 1800
    aget-object v1, p5, v9

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1801
    move-wide/from16 v20, v1

    move-wide/from16 v16, v10

    .end local v10    # "totalRxPackets":J
    .local v16, "totalRxPackets":J
    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v1

    .end local v16    # "totalRxPackets":J
    .restart local v10    # "totalRxPackets":J
    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1805
    :cond_180
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1806
    move-wide/from16 v22, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v1, v1, v22

    if-lez v1, :cond_19e

    .line 1807
    aget-object v1, p5, v9

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v18, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1808
    move-wide/from16 v20, v1

    move-wide/from16 v16, v25

    .end local v25    # "totalTxBytes":J
    .local v16, "totalTxBytes":J
    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v1

    .end local v16    # "totalTxBytes":J
    .restart local v25    # "totalTxBytes":J
    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1812
    :cond_19e
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1813
    move-wide/from16 v22, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v1, v1, v22

    if-lez v1, :cond_1bc

    .line 1814
    aget-object v1, p5, v9

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v18, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1815
    move-wide/from16 v20, v1

    move-wide/from16 v16, v12

    .end local v12    # "totalTxPackets":J
    .local v16, "totalTxPackets":J
    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v1

    .end local v16    # "totalTxPackets":J
    .restart local v12    # "totalTxPackets":J
    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1819
    :cond_1bc
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1820
    move-wide/from16 v22, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v1, v1, v22

    if-lez v1, :cond_1db

    .line 1821
    aget-object v1, p5, v9

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v18, v1

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1822
    move-wide/from16 v20, v1

    move-wide/from16 v16, v6

    .end local v6    # "totalOperations":J
    .local v16, "totalOperations":J
    invoke-static/range {v16 .. v21}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_1dd

    .line 1820
    .end local v16    # "totalOperations":J
    .restart local v6    # "totalOperations":J
    :cond_1db
    move-wide/from16 v16, v6

    .line 1828
    .end local v6    # "totalOperations":J
    .restart local v16    # "totalOperations":J
    :goto_1dd
    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1829
    iget-object v1, v0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v24

    if-nez v1, :cond_1f2

    .line 1831
    aget-object v1, v4, v9

    invoke-virtual {v1, v5}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1833
    const/16 v1, 0x3e9

    iput v1, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 1834
    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1787
    :cond_1f2
    add-int/lit8 v1, v9, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v6, v16

    .end local v9    # "j":I
    .restart local v1    # "j":I
    goto/16 :goto_131

    .end local v16    # "totalOperations":J
    .restart local v6    # "totalOperations":J
    :cond_1fa
    move-object/from16 v8, p3

    move v9, v1

    move-wide/from16 v16, v6

    .line 1722
    .end local v1    # "j":I
    .end local v6    # "totalOperations":J
    .end local v10    # "totalRxPackets":J
    .end local v12    # "totalTxPackets":J
    .end local v14    # "totalRxBytes":J
    .end local v25    # "totalTxBytes":J
    :goto_1ff
    add-int/lit8 v7, v24, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v6, v27

    .end local v24    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_27

    .line 1838
    .end local v7    # "i":I
    .end local v27    # "origSize":I
    .local v6, "origSize":I
    :cond_209
    return-object v4
.end method

.method public static greylist-max-o apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V
    .registers 11
    .param p0, "baseTraffic"    # Landroid/net/NetworkStats;
    .param p1, "stackedTraffic"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1226
    .local p2, "stackedIfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1227
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_35

    .line 1228
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1229
    if-nez v0, :cond_d

    goto :goto_32

    .line 1230
    :cond_d
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_32

    .line 1231
    :cond_12
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string v3, "v4-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_32

    .line 1243
    :cond_1d
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v6, 0x14

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1244
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1245
    invoke-direct {p1, v1, v0}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 1227
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1247
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method private blacklist deductTrafficFromVpnApp(ILjava/util/List;[Landroid/net/NetworkStats$Entry;)V
    .registers 15
    .param p1, "tunUid"    # I
    .param p3, "moved"    # [Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/net/NetworkStats$Entry;",
            ")V"
        }
    .end annotation

    .line 1845
    .local p2, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 1848
    return-void

    .line 1851
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 1852
    aget-object v1, p3, v0

    iput p1, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1854
    aget-object v1, p3, v0

    const/16 v2, 0x3ea

    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 1855
    aget-object v1, p3, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1856
    aget-object v1, p3, v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1857
    aget-object v1, p3, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1858
    aget-object v1, p3, v0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1859
    aget-object v1, p3, v0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1860
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1869
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    .end local p1    # "tunUid":I
    .local v5, "tunUid":I
    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result p1

    .line 1871
    .local p1, "idxVpnBackground":I
    if-eq p1, v2, :cond_50

    .line 1874
    aget-object v1, p3, v0

    invoke-static {p1, p0, v1}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1877
    :cond_50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    .line 1879
    .local v1, "idxVpnForeground":I
    if-eq v1, v2, :cond_67

    .line 1880
    aget-object v2, p3, v0

    invoke-static {v1, p0, v2}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1851
    .end local v1    # "idxVpnForeground":I
    .end local p1    # "idxVpnBackground":I
    :cond_67
    add-int/lit8 v0, v0, 0x1

    move p1, v5

    goto :goto_6

    .line 1883
    .end local v0    # "i":I
    .end local v5    # "tunUid":I
    .local p1, "tunUid":I
    :cond_6b
    return-void
.end method

.method public static greylist-max-o defaultNetworkToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "defaultNetwork"    # I

    .line 1536
    packed-switch p0, :pswitch_data_10

    .line 1544
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1542
    :pswitch_6
    const-string v0, "YES"

    return-object v0

    .line 1540
    :pswitch_9
    const-string v0, "NO"

    return-object v0

    .line 1538
    :pswitch_c
    const-string v0, "ALL"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist filter(Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/net/NetworkStats$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1399
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/net/NetworkStats$Entry;>;"
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1400
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 1401
    .local v1, "nextOutputEntry":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1f

    .line 1402
    invoke-virtual {p0, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1403
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1404
    if-eq v1, v2, :cond_1a

    .line 1405
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 1407
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 1401
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1410
    .end local v2    # "i":I
    :cond_1f
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 1411
    return-void
.end method

.method private greylist-max-o getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .registers 15
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .line 1050
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1052
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_9
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1053
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1054
    const/4 v1, -0x1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 1055
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1056
    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1057
    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1058
    iput v1, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1059
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1060
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1061
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1062
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1063
    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1065
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v3, v4, :cond_84

    .line 1066
    const/4 v4, 0x1

    if-eq p3, v1, :cond_38

    iget-object v5, p0, Landroid/net/NetworkStats;->uid:[I

    aget v5, v5, v3

    if-ne p3, v5, :cond_36

    goto :goto_38

    :cond_36
    move v5, v2

    goto :goto_39

    :cond_38
    :goto_38
    move v5, v4

    .line 1067
    .local v5, "matchesUid":Z
    :goto_39
    if-eqz p2, :cond_47

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_47

    :cond_46
    move v4, v2

    .line 1069
    .local v4, "matchesIface":Z
    :cond_47
    :goto_47
    if-eqz v5, :cond_81

    if-eqz v4, :cond_81

    .line 1071
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v3

    if-eqz v6, :cond_54

    if-nez p4, :cond_54

    goto :goto_81

    .line 1073
    :cond_54
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1074
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1075
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1076
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1077
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1065
    .end local v4    # "matchesIface":Z
    .end local v5    # "matchesUid":Z
    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1080
    .end local v3    # "i":I
    :cond_84
    return-object v0
.end method

.method static synthetic blacklist lambda$filter$5(II[Ljava/lang/String;Landroid/net/NetworkStats$Entry;)Z
    .registers 6
    .param p0, "limitUid"    # I
    .param p1, "limitTag"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "e"    # Landroid/net/NetworkStats$Entry;

    .line 1382
    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p0, v1, :cond_1a

    :cond_7
    if-eq p1, v0, :cond_d

    iget v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p1, v0, :cond_1a

    :cond_d
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-eq p2, v0, :cond_1c

    iget-object v0, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1385
    invoke-static {p2, v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 1382
    :goto_1d
    return v0
.end method

.method static synthetic blacklist lambda$filterDebugEntries$6(Landroid/net/NetworkStats$Entry;)Z
    .registers 3
    .param p0, "e"    # Landroid/net/NetworkStats$Entry;

    .line 1395
    iget v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$groupedByIface$0(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 11
    .param p0, "temp"    # Landroid/net/NetworkStats$Entry;
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1278
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1279
    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_18

    :cond_9
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getIface()Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    .end local p0    # "temp":Landroid/net/NetworkStats$Entry;
    .local v1, "temp":Landroid/net/NetworkStats$Entry;
    invoke-static/range {v1 .. v8}, Landroid/net/NetworkStats$Entry;->-$$Nest$msetKeys(Landroid/net/NetworkStats$Entry;Ljava/lang/String;IIIIII)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1278
    :goto_18
    return-object v0
.end method

.method static synthetic blacklist lambda$groupedByUid$1(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 11
    .param p0, "temp"    # Landroid/net/NetworkStats$Entry;
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1303
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1304
    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_19

    :cond_9
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v3

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    .end local p0    # "temp":Landroid/net/NetworkStats$Entry;
    .local v1, "temp":Landroid/net/NetworkStats$Entry;
    invoke-static/range {v1 .. v8}, Landroid/net/NetworkStats$Entry;->-$$Nest$msetKeys(Landroid/net/NetworkStats$Entry;Ljava/lang/String;IIIIII)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1303
    :goto_19
    return-object v0
.end method

.method static synthetic blacklist lambda$removeEmptyEntries$3(Landroid/net/NetworkStats$Entry;)Z
    .registers 5
    .param p0, "e"    # Landroid/net/NetworkStats$Entry;

    .line 1325
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method static synthetic blacklist lambda$removeUids$2([ILandroid/net/NetworkStats$Entry;)Z
    .registers 3
    .param p0, "uids"    # [I
    .param p1, "e"    # Landroid/net/NetworkStats$Entry;

    .line 1314
    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$withoutInterfaces$4(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 10
    .param p0, "temp"    # Landroid/net/NetworkStats$Entry;
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1338
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1339
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v4

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getRoaming()I

    move-result v6

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getDefaultNetwork()I

    move-result v7

    .line 1338
    move-object v0, p0

    .end local p0    # "temp":Landroid/net/NetworkStats$Entry;
    .local v0, "temp":Landroid/net/NetworkStats$Entry;
    invoke-static/range {v0 .. v7}, Landroid/net/NetworkStats$Entry;->-$$Nest$msetKeys(Landroid/net/NetworkStats$Entry;Ljava/lang/String;IIIIII)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method private blacklist mapKeysNotNull(Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1354
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;>;"
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1355
    .local v0, "ret":Landroid/net/NetworkStats;
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 1356
    .local v2, "e":Landroid/net/NetworkStats$Entry;
    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/net/NetworkStats$Entry;

    .line 1357
    .local v5, "transformed":Landroid/net/NetworkStats$Entry;
    if-nez v5, :cond_24

    goto :goto_c

    .line 1358
    :cond_24
    if-eq v5, v2, :cond_41

    .line 1361
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    .line 1362
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v12

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getOperations()J

    move-result-wide v14

    .line 1361
    invoke-static/range {v5 .. v15}, Landroid/net/NetworkStats$Entry;->-$$Nest$msetValues(Landroid/net/NetworkStats$Entry;JJJJJ)Landroid/net/NetworkStats$Entry;

    .line 1363
    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1364
    .end local v2    # "e":Landroid/net/NetworkStats$Entry;
    .end local v5    # "transformed":Landroid/net/NetworkStats$Entry;
    goto :goto_c

    .line 1359
    .restart local v2    # "e":Landroid/net/NetworkStats$Entry;
    .restart local v5    # "transformed":Landroid/net/NetworkStats$Entry;
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "A new entry must be created."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    .end local v2    # "e":Landroid/net/NetworkStats$Entry;
    .end local v5    # "transformed":Landroid/net/NetworkStats$Entry;
    :cond_49
    move-object/from16 v3, p1

    return-object v0
.end method

.method private blacklist maybeCopyEntry(II)V
    .registers 6
    .param p1, "dest"    # I
    .param p2, "src"    # I

    .line 760
    if-ne p1, p2, :cond_3

    return-void

    .line 761
    :cond_3
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p2

    aput-object v1, v0, p1

    .line 762
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p2

    aput v1, v0, p1

    .line 763
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p2

    aput v1, v0, p1

    .line 764
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p2

    aput v1, v0, p1

    .line 765
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, p2

    aput v1, v0, p1

    .line 766
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, p2

    aput v1, v0, p1

    .line 767
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, p2

    aput v1, v0, p1

    .line 768
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p2

    aput-wide v1, v0, p1

    .line 769
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p2

    aput-wide v1, v0, p1

    .line 770
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p2

    aput-wide v1, v0, p1

    .line 771
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p2

    aput-wide v1, v0, p1

    .line 772
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p2

    aput-wide v1, v0, p1

    .line 773
    return-void
.end method

.method public static greylist-max-o meteredToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "metered"    # I

    .line 1502
    packed-switch p0, :pswitch_data_10

    .line 1510
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1508
    :pswitch_6
    const-string v0, "YES"

    return-object v0

    .line 1506
    :pswitch_9
    const-string v0, "NO"

    return-object v0

    .line 1504
    :pswitch_c
    const-string v0, "ALL"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o roamingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "roaming"    # I

    .line 1519
    packed-switch p0, :pswitch_data_10

    .line 1527
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1525
    :pswitch_6
    const-string v0, "YES"

    return-object v0

    .line 1523
    :pswitch_9
    const-string v0, "NO"

    return-object v0

    .line 1521
    :pswitch_c
    const-string v0, "ALL"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o setMatches(II)Z
    .registers 4
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    .line 1482
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1483
    return v0

    .line 1486
    :cond_4
    const/4 v1, -0x1

    if-ne p0, v1, :cond_c

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o setToCheckinString(I)Ljava/lang/String;
    .registers 2
    .param p0, "set"    # I

    .line 1461
    sparse-switch p0, :sswitch_data_16

    .line 1473
    const-string v0, "unk"

    return-object v0

    .line 1471
    :sswitch_6
    const-string v0, "vpnout"

    return-object v0

    .line 1469
    :sswitch_9
    const-string v0, "vpnin"

    return-object v0

    .line 1467
    :sswitch_c
    const-string v0, "fg"

    return-object v0

    .line 1465
    :sswitch_f
    const-string v0, "def"

    return-object v0

    .line 1463
    :sswitch_12
    const-string v0, "all"

    return-object v0

    nop

    :sswitch_data_16
    .sparse-switch
        -0x1 -> :sswitch_12
        0x0 -> :sswitch_f
        0x1 -> :sswitch_c
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_6
    .end sparse-switch
.end method

.method public static greylist-max-o setToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "set"    # I

    .line 1440
    sparse-switch p0, :sswitch_data_16

    .line 1452
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1450
    :sswitch_6
    const-string v0, "DBG_VPN_OUT"

    return-object v0

    .line 1448
    :sswitch_9
    const-string v0, "DBG_VPN_IN"

    return-object v0

    .line 1446
    :sswitch_c
    const-string v0, "FOREGROUND"

    return-object v0

    .line 1444
    :sswitch_f
    const-string v0, "DEFAULT"

    return-object v0

    .line 1442
    :sswitch_12
    const-string v0, "ALL"

    return-object v0

    nop

    :sswitch_data_16
    .sparse-switch
        -0x1 -> :sswitch_12
        0x0 -> :sswitch_f
        0x1 -> :sswitch_c
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_6
    .end sparse-switch
.end method

.method private greylist-max-o setValues(ILandroid/net/NetworkStats$Entry;)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 690
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 691
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    aput v1, v0, p1

    .line 692
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->set:I

    aput v1, v0, p1

    .line 693
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->tag:I

    aput v1, v0, p1

    .line 694
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->metered:I

    aput v1, v0, p1

    .line 695
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v1, v0, p1

    .line 696
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    aput v1, v0, p1

    .line 697
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v1, v0, p1

    .line 698
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v1, v0, p1

    .line 699
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v1, v0, p1

    .line 700
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v1, v0, p1

    .line 701
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v1, v0, p1

    .line 702
    return-void
.end method

.method public static greylist-max-o subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .registers 5
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1118
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 22
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1136
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p4

    iget-wide v4, v1, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v6, v3, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v6, v4, v6

    .line 1137
    .local v6, "deltaRealtime":J
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-gez v0, :cond_24

    .line 1138
    if-eqz p2, :cond_1f

    .line 1139
    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    move-object v12, v1

    goto :goto_20

    .line 1138
    :cond_1f
    move-object v12, v1

    .line 1141
    :goto_20
    const-wide/16 v6, 0x0

    move-wide v13, v6

    goto :goto_26

    .line 1137
    :cond_24
    move-object v12, v1

    move-wide v13, v6

    .line 1145
    .end local v6    # "deltaRealtime":J
    .local v13, "deltaRealtime":J
    :goto_26
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v15, v0

    .line 1147
    .local v15, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v9, :cond_3c

    iget v0, v9, Landroid/net/NetworkStats;->capacity:I

    iget v1, v12, Landroid/net/NetworkStats;->size:I

    if-lt v0, v1, :cond_3c

    .line 1148
    move-object/from16 v0, p4

    .line 1149
    .local v0, "result":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/NetworkStats;->size:I

    .line 1150
    iput-wide v13, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    goto :goto_43

    .line 1152
    .end local v0    # "result":Landroid/net/NetworkStats;
    :cond_3c
    new-instance v0, Landroid/net/NetworkStats;

    iget v1, v12, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v13, v14, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1154
    .restart local v0    # "result":Landroid/net/NetworkStats;
    :goto_43
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_45
    iget v1, v12, Landroid/net/NetworkStats;->size:I

    if-ge v2, v1, :cond_11d

    .line 1155
    iget-object v1, v12, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, v15, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1156
    iget-object v1, v12, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v2

    iput v1, v15, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1157
    iget-object v1, v12, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v2

    iput v1, v15, Landroid/net/NetworkStats$Entry;->set:I

    .line 1158
    iget-object v1, v12, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v2

    iput v1, v15, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1159
    iget-object v1, v12, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v2

    iput v1, v15, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1160
    iget-object v1, v12, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v2

    iput v1, v15, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1161
    iget-object v1, v12, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v2

    iput v1, v15, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1162
    iget-object v1, v12, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v1, v2

    iput-wide v3, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1163
    iget-object v1, v12, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v1, v2

    iput-wide v3, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1164
    iget-object v1, v12, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v1, v2

    iput-wide v3, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1165
    iget-object v1, v12, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v1, v2

    iput-wide v3, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1166
    iget-object v1, v12, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v1, v2

    iput-wide v3, v15, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1170
    iget-object v1, v15, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move v8, v2

    .end local v2    # "i":I
    .local v8, "i":I
    iget v2, v15, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v15, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, v15, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, v15, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, v15, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v7, v15, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "result":Landroid/net/NetworkStats;
    .local v16, "result":Landroid/net/NetworkStats;
    invoke-virtual/range {v0 .. v8}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIIII)I

    move-result v4

    .line 1172
    move-object v3, v0

    .local v4, "j":I
    const/4 v0, -0x1

    if-eq v4, v0, :cond_d9

    .line 1174
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v2, v3, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v5, v2, v4

    sub-long/2addr v0, v5

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1175
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v2, v3, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v5, v2, v4

    sub-long/2addr v0, v5

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1176
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v2, v3, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v5, v2, v4

    sub-long/2addr v0, v5

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1177
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v2, v3, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v5, v2, v4

    sub-long/2addr v0, v5

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1178
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v2, v3, Landroid/net/NetworkStats;->operations:[J

    aget-wide v5, v2, v4

    sub-long/2addr v0, v5

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1181
    :cond_d9
    invoke-virtual {v15}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 1182
    if-eqz p2, :cond_ea

    .line 1183
    move-object/from16 v0, p2

    move-object/from16 v5, p3

    move v2, v8

    move-object v1, v12

    .end local v8    # "i":I
    .restart local v2    # "i":I
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 1185
    .end local v2    # "i":I
    .restart local v8    # "i":I
    :cond_ea
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1186
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1187
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1188
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1189
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1192
    :cond_112
    move-object/from16 v0, v16

    .end local v16    # "result":Landroid/net/NetworkStats;
    .restart local v0    # "result":Landroid/net/NetworkStats;
    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1154
    .end local v4    # "j":I
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v12, p0

    .end local v8    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_45

    .line 1195
    .end local v2    # "i":I
    :cond_11d
    return-object v0
.end method

.method public static greylist-max-o tagToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # I

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist tunAdjustmentInit(ILjava/lang/String;Ljava/util/List;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .registers 12
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "perInterfaceTotal"    # [Landroid/net/NetworkStats$Entry;
    .param p6, "underlyingIfacesTotal"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "[",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ")V"
        }
    .end annotation

    .line 1643
    .local p3, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1644
    .local v0, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_81

    .line 1645
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1646
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_79

    .line 1650
    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_71

    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_71

    .line 1654
    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v2, :cond_23

    .line 1656
    goto :goto_6e

    .line 1659
    :cond_23
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_3f

    .line 1666
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1667
    invoke-virtual {p4, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1668
    invoke-virtual {p6, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1673
    array-length v2, p5

    if-lez v2, :cond_6e

    .line 1679
    const/4 v2, 0x0

    aget-object v2, p5, v2

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    goto :goto_6e

    .line 1682
    :cond_3f
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_63

    .line 1684
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_44
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    .line 1685
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1686
    aget-object v3, p5, v2

    invoke-virtual {v3, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1687
    invoke-virtual {p6, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1688
    goto :goto_62

    .line 1684
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .end local v2    # "j":I
    :cond_62
    :goto_62
    goto :goto_6e

    .line 1691
    :cond_63
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1693
    invoke-virtual {p4, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1644
    :cond_6e
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1651
    :cond_71
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1647
    :cond_79
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1696
    .end local v1    # "i":I
    :cond_81
    return-void
.end method

.method private static greylist-max-o tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .registers 14
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    .line 1886
    iget-object v0, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, p0

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1887
    .local v0, "rxBytes":J
    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v2, p0

    sub-long/2addr v3, v0

    aput-wide v3, v2, p0

    .line 1888
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v2, v0

    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1890
    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, p0

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1891
    .local v2, "rxPackets":J
    iget-object v4, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v5, v4, p0

    sub-long/2addr v5, v2

    aput-wide v5, v4, p0

    .line 1892
    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v4, v2

    iput-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1894
    iget-object v4, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, p0

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1895
    .local v4, "txBytes":J
    iget-object v6, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v6, p0

    sub-long/2addr v7, v4

    aput-wide v7, v6, p0

    .line 1896
    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v6, v4

    iput-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1898
    iget-object v6, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1899
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v9, v8, p0

    sub-long/2addr v9, v6

    aput-wide v9, v8, p0

    .line 1900
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1901
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    .line 882
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    .line 883
    .local v0, "ret":Landroid/net/NetworkStats;
    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 884
    return-object v0
.end method

.method public whitelist addEntries(Ljava/util/List;)Landroid/net/NetworkStats;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 857
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkStats$Entry;>;"
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    .line 858
    .local v0, "newStats":Landroid/net/NetworkStats;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 859
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 860
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_e

    .line 861
    :cond_1e
    return-object v0
.end method

.method public whitelist addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 873
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o apply464xlatAdjustments(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1259
    .local p1, "stackedIfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p0, p1}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V

    .line 1260
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 618
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 619
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 620
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 621
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 622
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 623
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 624
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 625
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 626
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 627
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 628
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 629
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 630
    return-void
.end method

.method public whitelist clone()Landroid/net/NetworkStats;
    .registers 5

    .line 603
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 604
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 605
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_19

    .line 606
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 607
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 609
    .end local v2    # "i":I
    :cond_19
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public blacklist combineAllValues(Landroid/net/NetworkStats;)V
    .registers 5
    .param p1, "another"    # Landroid/net/NetworkStats;

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_10

    .line 894
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 895
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 897
    .end local v1    # "i":I
    :cond_10
    return-void
.end method

.method public blacklist combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 10
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 834
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v7, p1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    .line 836
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 838
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_47

    .line 840
    :cond_1a
    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v2, v1

    iget-wide v5, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 841
    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v2, v1

    iget-wide v5, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 842
    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v2, v1

    iget-wide v5, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 843
    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v2, v1

    iget-wide v5, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 844
    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v2, v1

    iget-wide v5, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 846
    :goto_47
    return-object v0
.end method

.method public greylist-max-o combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 33
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .line 818
    new-instance v0, Landroid/net/NetworkStats$Entry;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .registers 29
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v3

    return-object v3
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1558
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    const-string v0, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_ca

    .line 1418
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1419
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1422
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    const-string v1, " metered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1425
    const-string v1, " roaming="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    const-string v1, " defaultNetwork="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1428
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1429
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1430
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1431
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1433
    .end local v0    # "i":I
    :cond_ca
    return-void
.end method

.method public greylist-max-o filter(I[Ljava/lang/String;I)V
    .registers 5
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I

    .line 1379
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    if-ne p3, v0, :cond_a

    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p2, v0, :cond_a

    .line 1380
    return-void

    .line 1382
    :cond_a
    new-instance v0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p3, p2}, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;-><init>(II[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    .line 1386
    return-void
.end method

.method public blacklist filterDebugEntries()V
    .registers 2

    .line 1395
    new-instance v0, Landroid/net/NetworkStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/NetworkStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    .line 1396
    return-void
.end method

.method public greylist-max-o findIndex(Ljava/lang/String;IIIIII)I
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I

    .line 905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_37

    .line 906
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    if-ne p6, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    if-ne p7, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 909
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 910
    return v0

    .line 905
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    .end local v0    # "i":I
    :cond_37
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o findIndexHinted(Ljava/lang/String;IIIIIII)I
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I
    .param p8, "hintIndex"    # I

    .line 924
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_4c

    .line 925
    div-int/lit8 v1, v0, 0x2

    .line 929
    .local v1, "halfOffset":I
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_11

    .line 930
    add-int v2, p8, v1

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    rem-int/2addr v2, v3

    .local v2, "i":I
    goto :goto_1a

    .line 932
    .end local v2    # "i":I
    :cond_11
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v2, p8

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    rem-int/2addr v2, v3

    .line 935
    .restart local v2    # "i":I
    :goto_1a
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v2

    if-ne p2, v3, :cond_49

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v2

    if-ne p3, v3, :cond_49

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-ne p4, v3, :cond_49

    iget-object v3, p0, Landroid/net/NetworkStats;->metered:[I

    aget v3, v3, v2

    if-ne p5, v3, :cond_49

    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v3, v3, v2

    if-ne p6, v3, :cond_49

    iget-object v3, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v3, v3, v2

    if-ne p7, v3, :cond_49

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 938
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 939
    return v2

    .line 924
    .end local v1    # "halfOffset":I
    .end local v2    # "i":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 942
    .end local v0    # "offset":I
    :cond_4c
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getElapsedRealtime()J
    .registers 3

    .line 777
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public greylist-max-o getElapsedRealtimeAge()J
    .registers 5

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .line 1013
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .line 1023
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .line 1032
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTotalBytes()J
    .registers 6

    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1004
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public greylist getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .line 1038
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTotalPackets()J
    .registers 8

    .line 1088
    const-wide/16 v0, 0x0

    .line 1089
    .local v0, "total":J
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_15

    .line 1090
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1089
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1092
    .end local v2    # "i":I
    :cond_15
    return-wide v0
.end method

.method public greylist-max-o getUniqueIfaces()[Ljava/lang/String;
    .registers 7

    .line 968
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 969
    .local v0, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 970
    .local v4, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v4, v5, :cond_14

    .line 971
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 969
    .end local v4    # "iface":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 974
    :cond_17
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public greylist getUniqueUids()[I
    .registers 7

    .line 983
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 984
    .local v0, "uids":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_14

    aget v4, v1, v3

    .line 985
    .local v4, "uid":I
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 984
    .end local v4    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 988
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 989
    .local v1, "size":I
    new-array v2, v1, [I

    .line 990
    .local v2, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v1, :cond_26

    .line 991
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 990
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 993
    .end local v3    # "i":I
    :cond_26
    return-object v2
.end method

.method public greylist getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .line 739
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 740
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_9
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 742
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 743
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 744
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 745
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 746
    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 747
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 748
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 749
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 750
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 751
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 752
    return-object v0
.end method

.method public greylist-max-o groupedByIface()Landroid/net/NetworkStats;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1270
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1277
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1278
    .local v0, "temp":Landroid/net/NetworkStats$Entry;
    new-instance v1, Landroid/net/NetworkStats$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/NetworkStats$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkStats$Entry;)V

    invoke-direct {p0, v1}, Landroid/net/NetworkStats;->mapKeysNotNull(Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1282
    .local v1, "mappedStats":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget v3, v1, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_22

    .line 1283
    iget-object v3, v1, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 1282
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1285
    .end local v2    # "i":I
    :cond_22
    return-object v1

    .line 1271
    .end local v0    # "temp":Landroid/net/NetworkStats$Entry;
    .end local v1    # "mappedStats":Landroid/net/NetworkStats;
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "groupedByIface is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o groupedByUid()Landroid/net/NetworkStats;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1296
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1302
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1303
    .local v0, "temp":Landroid/net/NetworkStats$Entry;
    new-instance v1, Landroid/net/NetworkStats$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/net/NetworkStats$$ExternalSyntheticLambda2;-><init>(Landroid/net/NetworkStats$Entry;)V

    invoke-direct {p0, v1}, Landroid/net/NetworkStats;->mapKeysNotNull(Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1

    .line 1297
    .end local v0    # "temp":Landroid/net/NetworkStats$Entry;
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "groupedByUid is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 4
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 666
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    iget v1, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v0, v1, :cond_76

    .line 667
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 668
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 669
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 670
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 671
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 672
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 673
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 674
    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 675
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 676
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 677
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 678
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 679
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 680
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 683
    .end local v0    # "newLength":I
    :cond_76
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 684
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 686
    return-object p0
.end method

.method public blacklist insertEntry(Ljava/lang/String;IIIIIIJJJJJ)Landroid/net/NetworkStats;
    .registers 36
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I
    .param p8, "rxBytes"    # J
    .param p10, "rxPackets"    # J
    .param p12, "txBytes"    # J
    .param p14, "txPackets"    # J
    .param p16, "operations"    # J

    .line 655
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public blacklist insertEntry(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 33
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .line 645
    new-instance v0, Landroid/net/NetworkStats$Entry;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public blacklist insertEntry(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .registers 29
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .line 636
    const/4 v8, 0x0

    const-wide/16 v17, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    invoke-virtual/range {v1 .. v18}, Landroid/net/NetworkStats;->insertEntry(Ljava/lang/String;IIIIIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o internalSize()I
    .registers 2

    .line 803
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/net/NetworkStats$Entry;",
            ">;"
        }
    .end annotation

    .line 718
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0, p0}, Landroid/net/NetworkStats$1;-><init>(Landroid/net/NetworkStats;)V

    return-object v0
.end method

.method public blacklist migrateTun(ILjava/lang/String;Ljava/util/List;)V
    .registers 12
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1598
    .local p3, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v5, v0

    .line 1600
    .local v5, "tunIfaceTotal":Landroid/net/NetworkStats$Entry;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/net/NetworkStats$Entry;

    .line 1602
    .local v6, "perInterfaceTotal":[Landroid/net/NetworkStats$Entry;
    new-instance v7, Landroid/net/NetworkStats$Entry;

    invoke-direct {v7}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1604
    .local v7, "underlyingIfacesTotal":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v1, v6

    if-ge v0, v1, :cond_1f

    .line 1605
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    aput-object v1, v6, v0

    .line 1604
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1608
    .end local v0    # "i":I
    :cond_1f
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "tunUid":I
    .end local p2    # "tunIface":Ljava/lang/String;
    .end local p3    # "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "tunUid":I
    .local v3, "tunIface":Ljava/lang/String;
    .local v4, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/util/List;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 1614
    nop

    .line 1615
    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;Ljava/util/List;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)[Landroid/net/NetworkStats$Entry;

    move-result-object p1

    .line 1617
    .local p1, "moved":[Landroid/net/NetworkStats$Entry;
    invoke-direct {p0, v2, v4, p1}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/util/List;[Landroid/net/NetworkStats$Entry;)V

    .line 1618
    return-void
.end method

.method public blacklist removeEmptyEntries()Landroid/net/NetworkStats;
    .registers 3

    .line 1324
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1325
    .local v0, "ret":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/net/NetworkStats$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v1}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    .line 1327
    return-object v0
.end method

.method public blacklist removeUids([I)V
    .registers 3
    .param p1, "uids"    # [I

    .line 1314
    new-instance v0, Landroid/net/NetworkStats$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/net/NetworkStats$$ExternalSyntheticLambda4;-><init>([I)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    .line 1315
    return-void
.end method

.method public greylist-max-o setElapsedRealtime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 782
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 783
    return-void
.end method

.method public greylist size()I
    .registers 2

    .line 797
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public greylist-max-o spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .registers 12
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 952
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_3c

    .line 953
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v5, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v7, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v8, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v9, v1, v0

    move-object v2, p1

    .end local p1    # "stats":Landroid/net/NetworkStats;
    .local v2, "stats":Landroid/net/NetworkStats;
    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result p1

    .line 955
    .local p1, "j":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_30

    .line 956
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    goto :goto_38

    .line 958
    :cond_30
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, v2, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, p1

    aput-wide v3, v1, v0

    .line 952
    .end local p1    # "j":I
    :goto_38
    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_1

    .line 961
    .end local v0    # "i":I
    .end local v2    # "stats":Landroid/net/NetworkStats;
    .local p1, "stats":Landroid/net/NetworkStats;
    :cond_3c
    return-void
.end method

.method public whitelist subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "right"    # Landroid/net/NetworkStats;

    .line 1104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1551
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 1552
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1553
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist withoutInterfaces()Landroid/net/NetworkStats;
    .registers 3

    .line 1337
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1338
    .local v0, "temp":Landroid/net/NetworkStats$Entry;
    new-instance v1, Landroid/net/NetworkStats$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroid/net/NetworkStats$$ExternalSyntheticLambda3;-><init>(Landroid/net/NetworkStats$Entry;)V

    invoke-direct {p0, v1}, Landroid/net/NetworkStats;->mapKeysNotNull(Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 581
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 582
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 586
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 587
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 588
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 589
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 590
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 591
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 592
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 593
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 594
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 595
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 596
    return-void
.end method
