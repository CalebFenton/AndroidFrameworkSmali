.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$Entry;,
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 798
    new-instance v0, Landroid/net/NetworkStats$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 45
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 167
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    .line 168
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    #@8
    .line 169
    if-ltz p3, :cond_0

    #@a
    .line 170
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    #@c
    .line 171
    new-array v0, p3, [Ljava/lang/String;

    #@e
    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@10
    .line 172
    new-array v0, p3, [I

    #@12
    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@14
    .line 173
    new-array v0, p3, [I

    #@16
    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@18
    .line 174
    new-array v0, p3, [I

    #@1a
    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@1c
    .line 175
    new-array v0, p3, [J

    #@1e
    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@20
    .line 176
    new-array v0, p3, [J

    #@22
    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@24
    .line 177
    new-array v0, p3, [J

    #@26
    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@28
    .line 178
    new-array v0, p3, [J

    #@2a
    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@2c
    .line 179
    new-array v0, p3, [J

    #@2e
    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@30
    .line 166
    :goto_0
    return-void

    #@31
    .line 182
    :cond_0
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@33
    .line 183
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@35
    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@37
    .line 184
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@39
    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@3b
    .line 185
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@3d
    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@3f
    .line 186
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@41
    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@43
    .line 187
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@45
    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@47
    .line 188
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@49
    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@4b
    .line 189
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@4d
    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@4f
    .line 190
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@51
    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@53
    .line 191
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@55
    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@57
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@9
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    #@f
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@15
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@1b
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@21
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@27
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@2d
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@33
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@39
    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@3f
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@45
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@4b
    .line 195
    return-void
.end method

.method private addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 10
    .param p1, "tunIface"    # Ljava/lang/String;
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p4, "pool"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 901
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@4
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@7
    .line 902
    .local v1, "moved":Landroid/net/NetworkStats$Entry;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    #@9
    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@c
    .line 903
    .local v2, "tmpEntry":Landroid/net/NetworkStats$Entry;
    iput-object p2, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@e
    .line 904
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@11
    if-ge v0, v3, :cond_6

    #@13
    .line 905
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@15
    aget-object v3, v3, v0

    #@17
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 906
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@1f
    cmp-long v3, v4, v8

    #@21
    if-lez v3, :cond_1

    #@23
    .line 907
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@25
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@27
    aget-wide v6, v3, v0

    #@29
    mul-long/2addr v4, v6

    #@2a
    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@2c
    div-long/2addr v4, v6

    #@2d
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@2f
    .line 911
    :goto_1
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@31
    cmp-long v3, v4, v8

    #@33
    if-lez v3, :cond_2

    #@35
    .line 912
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@37
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@39
    aget-wide v6, v3, v0

    #@3b
    mul-long/2addr v4, v6

    #@3c
    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@3e
    div-long/2addr v4, v6

    #@3f
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@41
    .line 916
    :goto_2
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@43
    cmp-long v3, v4, v8

    #@45
    if-lez v3, :cond_3

    #@47
    .line 917
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@49
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@4b
    aget-wide v6, v3, v0

    #@4d
    mul-long/2addr v4, v6

    #@4e
    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@50
    div-long/2addr v4, v6

    #@51
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@53
    .line 921
    :goto_3
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@55
    cmp-long v3, v4, v8

    #@57
    if-lez v3, :cond_4

    #@59
    .line 922
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@5b
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@5d
    aget-wide v6, v3, v0

    #@5f
    mul-long/2addr v4, v6

    #@60
    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@62
    div-long/2addr v4, v6

    #@63
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@65
    .line 926
    :goto_4
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->operations:J

    #@67
    cmp-long v3, v4, v8

    #@69
    if-lez v3, :cond_5

    #@6b
    .line 928
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->operations:J

    #@6d
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    #@6f
    aget-wide v6, v3, v0

    #@71
    mul-long/2addr v4, v6

    #@72
    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->operations:J

    #@74
    div-long/2addr v4, v6

    #@75
    .line 927
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    #@77
    .line 932
    :goto_5
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    #@79
    aget v3, v3, v0

    #@7b
    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    #@7d
    .line 933
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@7f
    aget v3, v3, v0

    #@81
    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    #@83
    .line 934
    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    #@85
    aget v3, v3, v0

    #@87
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    #@89
    .line 935
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@8c
    .line 936
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@8e
    aget v3, v3, v0

    #@90
    if-nez v3, :cond_0

    #@92
    .line 937
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    #@95
    .line 939
    const/16 v3, 0x3e9

    #@97
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    #@99
    .line 940
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@9c
    .line 904
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@9e
    goto/16 :goto_0

    #@a0
    .line 909
    :cond_1
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@a2
    goto :goto_1

    #@a3
    .line 914
    :cond_2
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@a5
    goto :goto_2

    #@a6
    .line 919
    :cond_3
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@a8
    goto :goto_3

    #@a9
    .line 924
    :cond_4
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@ab
    goto :goto_4

    #@ac
    .line 930
    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    #@ae
    goto :goto_5

    #@af
    .line 944
    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 5
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 949
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    #@4
    .line 950
    const/16 v2, 0x3ea

    #@6
    iput v2, p3, Landroid/net/NetworkStats$Entry;->set:I

    #@8
    .line 951
    iput v3, p3, Landroid/net/NetworkStats$Entry;->tag:I

    #@a
    .line 952
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@c
    .line 953
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@f
    .line 957
    invoke-virtual {p0, p2, p1, v3, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    #@12
    move-result v0

    #@13
    .line 958
    .local v0, "idxVpnBackground":I
    if-eq v0, v4, :cond_0

    #@15
    .line 959
    invoke-static {v0, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    #@18
    .line 962
    :cond_0
    const/4 v2, 0x1

    #@19
    invoke-virtual {p0, p2, p1, v2, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    #@1c
    move-result v1

    #@1d
    .line 963
    .local v1, "idxVpnForeground":I
    if-eq v1, v4, :cond_1

    #@1f
    .line 964
    invoke-static {v1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    #@22
    .line 947
    :cond_1
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 9
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const-wide/16 v6, 0x0

    #@4
    .line 499
    if-eqz p1, :cond_3

    #@6
    move-object v0, p1

    #@7
    .line 501
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@9
    iput-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@b
    .line 502
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@d
    .line 503
    iput v8, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@f
    .line 504
    iput v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@11
    .line 505
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@13
    .line 506
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@15
    .line 507
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@17
    .line 508
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@19
    .line 509
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1b
    .line 511
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    #@1e
    if-ge v1, v4, :cond_6

    #@20
    .line 512
    if-eq p3, v8, :cond_0

    #@22
    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    #@24
    aget v4, v4, v1

    #@26
    if-ne p3, v4, :cond_4

    #@28
    :cond_0
    const/4 v3, 0x1

    #@29
    .line 513
    .local v3, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_5

    #@2b
    iget-object v4, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@2d
    aget-object v4, v4, v1

    #@2f
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    .line 515
    :goto_3
    if-eqz v3, :cond_2

    #@35
    if-eqz v2, :cond_2

    #@37
    .line 517
    iget-object v4, p0, Landroid/net/NetworkStats;->tag:[I

    #@39
    aget v4, v4, v1

    #@3b
    if-eqz v4, :cond_1

    #@3d
    if-eqz p4, :cond_2

    #@3f
    .line 519
    :cond_1
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@41
    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@43
    aget-wide v6, v6, v1

    #@45
    add-long/2addr v4, v6

    #@46
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@48
    .line 520
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@4a
    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@4c
    aget-wide v6, v6, v1

    #@4e
    add-long/2addr v4, v6

    #@4f
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@51
    .line 521
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@53
    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@55
    aget-wide v6, v6, v1

    #@57
    add-long/2addr v4, v6

    #@58
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5a
    .line 522
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@5c
    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@5e
    aget-wide v6, v6, v1

    #@60
    add-long/2addr v4, v6

    #@61
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@63
    .line 523
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@65
    iget-object v6, p0, Landroid/net/NetworkStats;->operations:[J

    #@67
    aget-wide v6, v6, v1

    #@69
    add-long/2addr v4, v6

    #@6a
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@6c
    .line 511
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 499
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v3    # "matchesUid":Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@71
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@74
    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_0

    #@75
    .line 512
    .restart local v1    # "i":I
    :cond_4
    const/4 v3, 0x0

    #@76
    .restart local v3    # "matchesUid":Z
    goto :goto_2

    #@77
    .line 513
    :cond_5
    const/4 v2, 0x1

    #@78
    .local v2, "matchesIface":Z
    goto :goto_3

    #@79
    .line 526
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_6
    return-object v0
.end method

.method public static setMatches(II)Z
    .locals 3
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 772
    if-ne p0, p1, :cond_0

    #@4
    .line 773
    return v0

    #@5
    .line 776
    :cond_0
    const/4 v2, -0x1

    #@6
    if-ne p0, v2, :cond_1

    #@8
    const/16 v2, 0x3e8

    #@a
    if-ge p1, v2, :cond_1

    #@c
    :goto_0
    return v0

    #@d
    :cond_1
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    #@0
    .prologue
    .line 752
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 764
    const-string/jumbo v0, "unk"

    #@6
    return-object v0

    #@7
    .line 754
    :sswitch_0
    const-string/jumbo v0, "all"

    #@a
    return-object v0

    #@b
    .line 756
    :sswitch_1
    const-string/jumbo v0, "def"

    #@e
    return-object v0

    #@f
    .line 758
    :sswitch_2
    const-string/jumbo v0, "fg"

    #@12
    return-object v0

    #@13
    .line 760
    :sswitch_3
    const-string/jumbo v0, "vpnin"

    #@16
    return-object v0

    #@17
    .line 762
    :sswitch_4
    const-string/jumbo v0, "vpnout"

    #@1a
    return-object v0

    #@1b
    .line 752
    nop

    #@1c
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    #@0
    .prologue
    .line 732
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 744
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 734
    :sswitch_0
    const-string/jumbo v0, "ALL"

    #@a
    return-object v0

    #@b
    .line 736
    :sswitch_1
    const-string/jumbo v0, "DEFAULT"

    #@e
    return-object v0

    #@f
    .line 738
    :sswitch_2
    const-string/jumbo v0, "FOREGROUND"

    #@12
    return-object v0

    #@13
    .line 740
    :sswitch_3
    const-string/jumbo v0, "DBG_VPN_IN"

    #@16
    return-object v0

    #@17
    .line 742
    :sswitch_4
    const-string/jumbo v0, "DBG_VPN_OUT"

    #@1a
    return-object v0

    #@1b
    .line 732
    nop

    #@1c
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    #@0
    .prologue
    .line 559
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 15
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
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    #@0
    .prologue
    .line 576
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    move-object/from16 v0, p1

    #@4
    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    sub-long v12, v2, v4

    #@8
    .line 577
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    #@a
    cmp-long v2, v12, v2

    #@c
    if-gez v2, :cond_1

    #@e
    .line 578
    if-eqz p2, :cond_0

    #@10
    .line 579
    const/4 v4, -0x1

    #@11
    const/4 v6, -0x1

    #@12
    move-object/from16 v2, p2

    #@14
    move-object v3, p0

    #@15
    move-object/from16 v5, p1

    #@17
    move-object/from16 v7, p3

    #@19
    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    #@1c
    .line 581
    :cond_0
    const-wide/16 v12, 0x0

    #@1e
    .line 585
    :cond_1
    new-instance v11, Landroid/net/NetworkStats$Entry;

    #@20
    invoke-direct {v11}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@23
    .line 587
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_3

    #@25
    move-object/from16 v0, p4

    #@27
    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    #@29
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@2b
    if-lt v2, v3, :cond_3

    #@2d
    .line 588
    move-object/from16 v14, p4

    #@2f
    .line 589
    .local v14, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    #@30
    iput v2, v14, Landroid/net/NetworkStats;->size:I

    #@32
    .line 590
    iput-wide v12, v14, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@34
    .line 594
    :goto_0
    const/4 v7, 0x0

    #@35
    .local v7, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@37
    if-ge v7, v2, :cond_8

    #@39
    .line 595
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@3b
    aget-object v2, v2, v7

    #@3d
    iput-object v2, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@3f
    .line 596
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    #@41
    aget v2, v2, v7

    #@43
    iput v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    #@45
    .line 597
    iget-object v2, p0, Landroid/net/NetworkStats;->set:[I

    #@47
    aget v2, v2, v7

    #@49
    iput v2, v11, Landroid/net/NetworkStats$Entry;->set:I

    #@4b
    .line 598
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    #@4d
    aget v2, v2, v7

    #@4f
    iput v2, v11, Landroid/net/NetworkStats$Entry;->tag:I

    #@51
    .line 601
    iget-object v3, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@53
    iget v4, v11, Landroid/net/NetworkStats$Entry;->uid:I

    #@55
    iget v5, v11, Landroid/net/NetworkStats$Entry;->set:I

    #@57
    iget v6, v11, Landroid/net/NetworkStats$Entry;->tag:I

    #@59
    move-object/from16 v2, p1

    #@5b
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    #@5e
    move-result v9

    #@5f
    .line 602
    .local v9, "j":I
    const/4 v2, -0x1

    #@60
    if-ne v9, v2, :cond_4

    #@62
    .line 604
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@64
    aget-wide v2, v2, v7

    #@66
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@68
    .line 605
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@6a
    aget-wide v2, v2, v7

    #@6c
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@6e
    .line 606
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@70
    aget-wide v2, v2, v7

    #@72
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@74
    .line 607
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@76
    aget-wide v2, v2, v7

    #@78
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@7a
    .line 608
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    #@7c
    aget-wide v2, v2, v7

    #@7e
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    #@80
    .line 630
    :cond_2
    :goto_2
    invoke-virtual {v14, v11}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@83
    .line 594
    add-int/lit8 v7, v7, 0x1

    #@85
    goto :goto_1

    #@86
    .line 592
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "result":Landroid/net/NetworkStats;
    :cond_3
    new-instance v14, Landroid/net/NetworkStats;

    #@88
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@8a
    invoke-direct {v14, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    #@8d
    .restart local v14    # "result":Landroid/net/NetworkStats;
    goto :goto_0

    #@8e
    .line 611
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@90
    aget-wide v2, v2, v7

    #@92
    move-object/from16 v0, p1

    #@94
    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    #@96
    aget-wide v4, v4, v9

    #@98
    sub-long/2addr v2, v4

    #@99
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@9b
    .line 612
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@9d
    aget-wide v2, v2, v7

    #@9f
    move-object/from16 v0, p1

    #@a1
    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    #@a3
    aget-wide v4, v4, v9

    #@a5
    sub-long/2addr v2, v4

    #@a6
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@a8
    .line 613
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@aa
    aget-wide v2, v2, v7

    #@ac
    move-object/from16 v0, p1

    #@ae
    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    #@b0
    aget-wide v4, v4, v9

    #@b2
    sub-long/2addr v2, v4

    #@b3
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@b5
    .line 614
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@b7
    aget-wide v2, v2, v7

    #@b9
    move-object/from16 v0, p1

    #@bb
    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    #@bd
    aget-wide v4, v4, v9

    #@bf
    sub-long/2addr v2, v4

    #@c0
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@c2
    .line 615
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    #@c4
    aget-wide v2, v2, v7

    #@c6
    move-object/from16 v0, p1

    #@c8
    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    #@ca
    aget-wide v4, v4, v9

    #@cc
    sub-long/2addr v2, v4

    #@cd
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    #@cf
    .line 617
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@d1
    const-wide/16 v4, 0x0

    #@d3
    cmp-long v2, v2, v4

    #@d5
    if-ltz v2, :cond_5

    #@d7
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@d9
    const-wide/16 v4, 0x0

    #@db
    cmp-long v2, v2, v4

    #@dd
    if-gez v2, :cond_7

    #@df
    .line 619
    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    #@e1
    move-object/from16 v5, p2

    #@e3
    move-object v6, p0

    #@e4
    move-object/from16 v8, p1

    #@e6
    move-object/from16 v10, p3

    #@e8
    .line 620
    invoke-interface/range {v5 .. v10}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    #@eb
    .line 622
    :cond_6
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@ed
    const-wide/16 v4, 0x0

    #@ef
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@f2
    move-result-wide v2

    #@f3
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@f5
    .line 623
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@f7
    const-wide/16 v4, 0x0

    #@f9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@fc
    move-result-wide v2

    #@fd
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@ff
    .line 624
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@101
    const-wide/16 v4, 0x0

    #@103
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@106
    move-result-wide v2

    #@107
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@109
    .line 625
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@10b
    const-wide/16 v4, 0x0

    #@10d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@110
    move-result-wide v2

    #@111
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@113
    .line 626
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    #@115
    const-wide/16 v4, 0x0

    #@117
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@11a
    move-result-wide v2

    #@11b
    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    #@11d
    goto/16 :goto_2

    #@11f
    .line 617
    :cond_7
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@121
    const-wide/16 v4, 0x0

    #@123
    cmp-long v2, v2, v4

    #@125
    if-ltz v2, :cond_5

    #@127
    .line 618
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@129
    const-wide/16 v4, 0x0

    #@12b
    cmp-long v2, v2, v4

    #@12d
    if-ltz v2, :cond_5

    #@12f
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    #@131
    const-wide/16 v4, 0x0

    #@133
    cmp-long v2, v2, v4

    #@135
    if-gez v2, :cond_2

    #@137
    goto :goto_3

    #@138
    .line 633
    .end local v9    # "j":I
    :cond_8
    return-object v14
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 866
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@2
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@5
    .line 867
    .local v1, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@8
    if-ge v0, v2, :cond_5

    #@a
    .line 868
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@d
    .line 869
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    #@f
    const/4 v3, -0x1

    #@10
    if-ne v2, v3, :cond_0

    #@12
    .line 870
    new-instance v2, Ljava/lang/IllegalStateException;

    #@14
    .line 871
    const-string/jumbo v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    #@17
    .line 870
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 872
    :cond_0
    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    #@1d
    const/16 v3, 0x3e9

    #@1f
    if-eq v2, v3, :cond_1

    #@21
    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    #@23
    const/16 v3, 0x3ea

    #@25
    if-ne v2, v3, :cond_2

    #@27
    .line 873
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@29
    .line 874
    const-string/jumbo v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    #@2c
    .line 873
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 877
    :cond_2
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    #@32
    if-ne v2, p1, :cond_3

    #@34
    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    #@36
    if-nez v2, :cond_3

    #@38
    .line 878
    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@3a
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 877
    if-eqz v2, :cond_3

    #@40
    .line 879
    invoke-virtual {p5, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    #@43
    .line 882
    :cond_3
    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    #@45
    if-nez v2, :cond_4

    #@47
    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@49
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_4

    #@4f
    .line 884
    invoke-virtual {p4, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    #@52
    .line 867
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 865
    :cond_5
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p0, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 890
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@5
    .line 891
    .local v0, "pool":Landroid/net/NetworkStats$Entry;
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@7
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@f
    .line 892
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@11
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@13
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@19
    .line 893
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@1b
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@1d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@20
    move-result-wide v2

    #@21
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@23
    .line 894
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@25
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@27
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@2a
    move-result-wide v2

    #@2b
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@2d
    .line 895
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@2f
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@31
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@34
    move-result-wide v2

    #@35
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@37
    .line 896
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 969
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    #@2
    aget-wide v8, v8, p0

    #@4
    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@6
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@9
    move-result-wide v0

    #@a
    .line 970
    .local v0, "rxBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    #@c
    aget-wide v10, v8, p0

    #@e
    sub-long/2addr v10, v0

    #@f
    aput-wide v10, v8, p0

    #@11
    .line 971
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@13
    sub-long/2addr v8, v0

    #@14
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@16
    .line 973
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    #@18
    aget-wide v8, v8, p0

    #@1a
    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@1c
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@1f
    move-result-wide v2

    #@20
    .line 974
    .local v2, "rxPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    #@22
    aget-wide v10, v8, p0

    #@24
    sub-long/2addr v10, v2

    #@25
    aput-wide v10, v8, p0

    #@27
    .line 975
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@29
    sub-long/2addr v8, v2

    #@2a
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@2c
    .line 977
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    #@2e
    aget-wide v8, v8, p0

    #@30
    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@32
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@35
    move-result-wide v4

    #@36
    .line 978
    .local v4, "txBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    #@38
    aget-wide v10, v8, p0

    #@3a
    sub-long/2addr v10, v4

    #@3b
    aput-wide v10, v8, p0

    #@3d
    .line 979
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@3f
    sub-long/2addr v8, v4

    #@40
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@42
    .line 981
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    #@44
    aget-wide v8, v8, p0

    #@46
    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@48
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@4b
    move-result-wide v6

    #@4c
    .line 982
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    #@4e
    aget-wide v10, v8, p0

    #@50
    sub-long/2addr v10, v6

    #@51
    aput-wide v10, v8, p0

    #@53
    .line 983
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@55
    sub-long/2addr v8, v6

    #@56
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@58
    .line 968
    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    #@0
    .prologue
    .line 241
    const/4 v3, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const-wide/16 v14, 0x0

    #@5
    move-object/from16 v1, p0

    #@7
    move-object/from16 v2, p1

    #@9
    move-wide/from16 v6, p2

    #@b
    move-wide/from16 v8, p4

    #@d
    move-wide/from16 v10, p6

    #@f
    move-wide/from16 v12, p8

    #@11
    .line 240
    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 256
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@2
    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 257
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@8
    const/16 v2, 0xa

    #@a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v1

    #@e
    mul-int/lit8 v1, v1, 0x3

    #@10
    div-int/lit8 v0, v1, 0x2

    #@12
    .line 258
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@14
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, [Ljava/lang/String;

    #@1a
    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@1c
    .line 259
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@1e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@24
    .line 260
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@2c
    .line 261
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@2e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@34
    .line 262
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@36
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@3c
    .line 263
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@3e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@44
    .line 264
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@46
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@4c
    .line 265
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@4e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@51
    move-result-object v1

    #@52
    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@54
    .line 266
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@56
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@59
    move-result-object v1

    #@5a
    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@5c
    .line 267
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@5e
    .line 270
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@60
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@62
    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@64
    aput-object v3, v1, v2

    #@66
    .line 271
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@68
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@6a
    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    #@6c
    aput v3, v1, v2

    #@6e
    .line 272
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@70
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@72
    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    #@74
    aput v3, v1, v2

    #@76
    .line 273
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@78
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@7a
    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    #@7c
    aput v3, v1, v2

    #@7e
    .line 274
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@80
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@82
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@84
    aput-wide v4, v1, v2

    #@86
    .line 275
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@88
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@8a
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@8c
    aput-wide v4, v1, v2

    #@8e
    .line 276
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@90
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@92
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@94
    aput-wide v4, v1, v2

    #@96
    .line 277
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@98
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@9a
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@9c
    aput-wide v4, v1, v2

    #@9e
    .line 278
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@a0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@a2
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@a4
    aput-wide v4, v1, v2

    #@a6
    .line 279
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@a8
    add-int/lit8 v1, v1, 0x1

    #@aa
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    #@ac
    .line 281
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    #@0
    .prologue
    .line 247
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@2
    move-object/from16 v4, p1

    #@4
    move/from16 v5, p2

    #@6
    move/from16 v6, p3

    #@8
    move/from16 v7, p4

    #@a
    move-wide/from16 v8, p5

    #@c
    move-wide/from16 v10, p7

    #@e
    move-wide/from16 v12, p9

    #@10
    move-wide/from16 v14, p11

    #@12
    move-wide/from16 v16, p13

    #@14
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    #@0
    .prologue
    .line 228
    new-instance v0, Landroid/net/NetworkStats;

    #@2
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@4
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@6
    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@9
    .line 229
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    #@a
    .line 230
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    #@b
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@d
    if-ge v2, v3, :cond_0

    #@f
    .line 231
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@12
    move-result-object v1

    #@13
    .line 232
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@16
    .line 230
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 234
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    #@0
    .prologue
    .line 363
    const/4 v0, 0x0

    #@1
    .line 364
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    #@2
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 365
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@9
    move-result-object v0

    #@a
    .line 366
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@d
    .line 364
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 362
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 345
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@2
    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    #@4
    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    #@6
    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    #@8
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    #@b
    move-result v0

    #@c
    .line 346
    .local v0, "i":I
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 348
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@12
    .line 356
    :goto_0
    return-object p0

    #@13
    .line 350
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@15
    aget-wide v2, v1, v0

    #@17
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@19
    add-long/2addr v2, v4

    #@1a
    aput-wide v2, v1, v0

    #@1c
    .line 351
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@1e
    aget-wide v2, v1, v0

    #@20
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@22
    add-long/2addr v2, v4

    #@23
    aput-wide v2, v1, v0

    #@25
    .line 352
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@27
    aget-wide v2, v1, v0

    #@29
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@2b
    add-long/2addr v2, v4

    #@2c
    aput-wide v2, v1, v0

    #@2e
    .line 353
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@30
    aget-wide v2, v1, v0

    #@32
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@34
    add-long/2addr v2, v4

    #@35
    aput-wide v2, v1, v0

    #@37
    .line 354
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@39
    aget-wide v2, v1, v0

    #@3b
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@3d
    add-long/2addr v2, v4

    #@3e
    aput-wide v2, v1, v0

    #@40
    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    #@0
    .prologue
    .line 335
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@2
    move-object/from16 v4, p1

    #@4
    move/from16 v5, p2

    #@6
    move/from16 v6, p3

    #@8
    move/from16 v7, p4

    #@a
    move-wide/from16 v8, p5

    #@c
    move-wide/from16 v10, p7

    #@e
    move-wide/from16 v12, p9

    #@10
    move-wide/from16 v14, p11

    #@12
    move-wide/from16 v16, p13

    #@14
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
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

    #@0
    .prologue
    .line 330
    const/4 v4, 0x0

    #@1
    move-object/from16 v1, p0

    #@3
    move-object/from16 v2, p1

    #@5
    move/from16 v3, p2

    #@7
    move/from16 v5, p3

    #@9
    move-wide/from16 v6, p4

    #@b
    move-wide/from16 v8, p6

    #@d
    move-wide/from16 v10, p8

    #@f
    move-wide/from16 v12, p10

    #@11
    move-wide/from16 v14, p12

    #@13
    .line 329
    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 795
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 711
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 712
    const-string/jumbo v1, "NetworkStats: elapsedRealtime="

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@b
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@e
    .line 713
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 714
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 715
    const-string/jumbo v1, "  ["

    #@19
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1f
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 716
    const-string/jumbo v1, " iface="

    #@28
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@2d
    aget-object v1, v1, v0

    #@2f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 717
    const-string/jumbo v1, " uid="

    #@35
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@3a
    aget v1, v1, v0

    #@3c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@3f
    .line 718
    const-string/jumbo v1, " set="

    #@42
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@47
    aget v1, v1, v0

    #@49
    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 719
    const-string/jumbo v1, " tag="

    #@53
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@58
    aget v1, v1, v0

    #@5a
    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    .line 720
    const-string/jumbo v1, " rxBytes="

    #@64
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@69
    aget-wide v2, v1, v0

    #@6b
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@6e
    .line 721
    const-string/jumbo v1, " rxPackets="

    #@71
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@76
    aget-wide v2, v1, v0

    #@78
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@7b
    .line 722
    const-string/jumbo v1, " txBytes="

    #@7e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@83
    aget-wide v2, v1, v0

    #@85
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@88
    .line 723
    const-string/jumbo v1, " txPackets="

    #@8b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@90
    aget-wide v2, v1, v0

    #@92
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@95
    .line 724
    const-string/jumbo v1, " operations="

    #@98
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@9d
    aget-wide v2, v1, v0

    #@9f
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@a2
    .line 713
    add-int/lit8 v0, v0, 0x1

    #@a4
    goto/16 :goto_0

    #@a6
    .line 710
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    #@0
    .prologue
    .line 374
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 375
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne p2, v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@d
    aget v1, v1, v0

    #@f
    if-ne p3, v1, :cond_0

    #@11
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@13
    aget v1, v1, v0

    #@15
    if-ne p4, v1, :cond_0

    #@17
    .line 376
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@19
    aget-object v1, v1, v0

    #@1b
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 375
    if-eqz v1, :cond_0

    #@21
    .line 377
    return v0

    #@22
    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 380
    :cond_1
    const/4 v1, -0x1

    #@26
    return v1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    #@0
    .prologue
    .line 389
    const/4 v2, 0x0

    #@1
    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@3
    if-ge v2, v3, :cond_2

    #@5
    .line 390
    div-int/lit8 v0, v2, 0x2

    #@7
    .line 394
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    #@9
    if-nez v3, :cond_0

    #@b
    .line 395
    add-int v3, p5, v0

    #@d
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    #@f
    rem-int v1, v3, v4

    #@11
    .line 400
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    #@13
    aget v3, v3, v1

    #@15
    if-ne p2, v3, :cond_1

    #@17
    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    #@19
    aget v3, v3, v1

    #@1b
    if-ne p3, v3, :cond_1

    #@1d
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@1f
    aget v3, v3, v1

    #@21
    if-ne p4, v3, :cond_1

    #@23
    .line 401
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@25
    aget-object v3, v3, v1

    #@27
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    .line 400
    if-eqz v3, :cond_1

    #@2d
    .line 402
    return v1

    #@2e
    .line 397
    .end local v1    # "i":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@30
    add-int/2addr v3, p5

    #@31
    sub-int/2addr v3, v0

    #@32
    add-int/lit8 v3, v3, -0x1

    #@34
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    #@36
    rem-int v1, v3, v4

    #@38
    .restart local v1    # "i":I
    goto :goto_1

    #@39
    .line 389
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 405
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, -0x1

    #@3d
    return v3
.end method

.method public getElapsedRealtime()J
    .locals 2

    #@0
    .prologue
    .line 302
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    #@0
    .prologue
    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    sub-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 467
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    #@0
    .prologue
    .line 475
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    #@0
    .prologue
    .line 483
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    #@0
    .prologue
    .line 459
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@4
    move-result-object v0

    #@5
    .line 460
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@7
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@9
    add-long/2addr v2, v4

    #@a
    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 487
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v2, 0x1

    #@3
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    #@0
    .prologue
    .line 533
    const-wide/16 v2, 0x0

    #@2
    .line 534
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 535
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@a
    aget-wide v4, v1, v0

    #@c
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@e
    aget-wide v6, v1, v0

    #@10
    add-long/2addr v4, v6

    #@11
    add-long/2addr v2, v4

    #@12
    .line 534
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 537
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 428
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 429
    .local v1, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@7
    const/4 v2, 0x0

    #@8
    array-length v4, v3

    #@9
    :goto_0
    if-ge v2, v4, :cond_1

    #@b
    aget-object v0, v3, v2

    #@d
    .line 430
    .local v0, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@f
    if-eq v0, v5, :cond_0

    #@11
    .line 431
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 429
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 434
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    #@1a
    move-result v2

    #@1b
    new-array v2, v2, [Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, [Ljava/lang/String;

    #@23
    return-object v2
.end method

.method public getUniqueUids()[I
    .locals 9

    #@0
    .prologue
    .line 441
    new-instance v4, Landroid/util/SparseBooleanArray;

    #@2
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    #@5
    .line 442
    .local v4, "uids":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    #@7
    const/4 v5, 0x0

    #@8
    array-length v7, v6

    #@9
    :goto_0
    if-ge v5, v7, :cond_0

    #@b
    aget v3, v6, v5

    #@d
    .line 443
    .local v3, "uid":I
    const/4 v8, 0x1

    #@e
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@11
    .line 442
    add-int/lit8 v5, v5, 0x1

    #@13
    goto :goto_0

    #@14
    .line 446
    .end local v3    # "uid":I
    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    #@17
    move-result v2

    #@18
    .line 447
    .local v2, "size":I
    new-array v1, v2, [I

    #@1a
    .line 448
    .local v1, "result":[I
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@1d
    .line 449
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@20
    move-result v5

    #@21
    aput v5, v1, v0

    #@23
    .line 448
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 451
    :cond_1
    return-object v1
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 288
    if-eqz p2, :cond_0

    #@2
    move-object v0, p2

    #@3
    .line 289
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@5
    aget-object v1, v1, p1

    #@7
    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@9
    .line 290
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@b
    aget v1, v1, p1

    #@d
    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@f
    .line 291
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@11
    aget v1, v1, p1

    #@13
    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@15
    .line 292
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@17
    aget v1, v1, p1

    #@19
    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@1b
    .line 293
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@1d
    aget-wide v2, v1, p1

    #@1f
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@21
    .line 294
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@23
    aget-wide v2, v1, p1

    #@25
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@27
    .line 295
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@29
    aget-wide v2, v1, p1

    #@2b
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@2d
    .line 296
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@2f
    aget-wide v2, v1, p1

    #@31
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@33
    .line 297
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@35
    aget-wide v2, v1, p1

    #@37
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@39
    .line 298
    return-object v0

    #@3a
    .line 288
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@3c
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@3f
    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 641
    new-instance v2, Landroid/net/NetworkStats;

    #@4
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    const/16 v3, 0xa

    #@8
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@b
    .line 643
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@d
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@10
    .line 644
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@12
    .line 645
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@14
    .line 646
    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@16
    .line 647
    const-wide/16 v4, 0x0

    #@18
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1a
    .line 649
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@1d
    if-ge v1, v3, :cond_1

    #@1f
    .line 651
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@21
    aget v3, v3, v1

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 649
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 653
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@2a
    aget-object v3, v3, v1

    #@2c
    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@2e
    .line 654
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@30
    aget-wide v4, v3, v1

    #@32
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@34
    .line 655
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@36
    aget-wide v4, v3, v1

    #@38
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@3a
    .line 656
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@3c
    aget-wide v4, v3, v1

    #@3e
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@40
    .line 657
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@42
    aget-wide v4, v3, v1

    #@44
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@46
    .line 658
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@49
    goto :goto_1

    #@4a
    .line 661
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 669
    new-instance v2, Landroid/net/NetworkStats;

    #@3
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@5
    const/16 v3, 0xa

    #@7
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@a
    .line 671
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@c
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@f
    .line 672
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@11
    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@13
    .line 673
    const/4 v3, -0x1

    #@14
    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@16
    .line 674
    iput v6, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@18
    .line 676
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@1b
    if-ge v1, v3, :cond_1

    #@1d
    .line 678
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@1f
    aget v3, v3, v1

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 676
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 680
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    #@28
    aget v3, v3, v1

    #@2a
    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@2c
    .line 681
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@2e
    aget-wide v4, v3, v1

    #@30
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@32
    .line 682
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@34
    aget-wide v4, v3, v1

    #@36
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@38
    .line 683
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@3a
    aget-wide v4, v3, v1

    #@3c
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@3e
    .line 684
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@40
    aget-wide v4, v3, v1

    #@42
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@44
    .line 685
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    #@46
    aget-wide v4, v3, v1

    #@48
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@4a
    .line 686
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@4d
    goto :goto_1

    #@4e
    .line 689
    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    #@0
    .prologue
    .line 323
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@2
    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 833
    new-instance v4, Landroid/net/NetworkStats$Entry;

    #@3
    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@6
    .line 834
    .local v4, "tunIfaceTotal":Landroid/net/NetworkStats$Entry;
    new-instance v5, Landroid/net/NetworkStats$Entry;

    #@8
    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@b
    .local v5, "underlyingIfaceTotal":Landroid/net/NetworkStats$Entry;
    move-object v0, p0

    #@c
    move v1, p1

    #@d
    move-object v2, p2

    #@e
    move-object v3, p3

    #@f
    .line 836
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    #@12
    .line 841
    invoke-static {v4, v5}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@15
    move-result-object v7

    #@16
    .line 842
    .local v7, "pool":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v7}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 843
    return v8

    #@1d
    .line 845
    :cond_0
    invoke-direct {p0, p2, p3, v4, v7}, Landroid/net/NetworkStats;->addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@20
    move-result-object v6

    #@21
    .line 846
    .local v6, "moved":Landroid/net/NetworkStats$Entry;
    invoke-direct {p0, p1, p3, v6}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    #@24
    .line 848
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 849
    const-string/jumbo v0, "NetworkStats"

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "Failed to deduct underlying network traffic from VPN package. Moved="

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 851
    const/4 v0, 0x0

    #@45
    return v0

    #@46
    .line 853
    :cond_1
    return v8
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 306
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    .line 305
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 318
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    #@2
    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "stats"    # Landroid/net/NetworkStats;

    #@0
    .prologue
    .line 414
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@3
    if-ge v0, v2, :cond_1

    #@5
    .line 415
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@7
    aget-object v2, v2, v0

    #@9
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    #@b
    aget v3, v3, v0

    #@d
    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    #@f
    aget v4, v4, v0

    #@11
    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    #@13
    aget v5, v5, v0

    #@15
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    #@18
    move-result v1

    #@19
    .line 416
    .local v1, "j":I
    const/4 v2, -0x1

    #@1a
    if-ne v1, v2, :cond_0

    #@1c
    .line 417
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    #@1e
    const-wide/16 v4, 0x0

    #@20
    aput-wide v4, v2, v0

    #@22
    .line 414
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 419
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    #@27
    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    #@29
    aget-wide v4, v3, v1

    #@2b
    aput-wide v4, v2, v0

    #@2d
    goto :goto_1

    #@2e
    .line 413
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "right"    # Landroid/net/NetworkStats;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 546
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 788
    new-instance v0, Ljava/io/CharArrayWriter;

    #@2
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    #@5
    .line 789
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string/jumbo v1, ""

    #@8
    new-instance v2, Ljava/io/PrintWriter;

    #@a
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@d
    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@10
    .line 790
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 697
    new-instance v2, Landroid/net/NetworkStats;

    #@2
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@4
    const/16 v3, 0xa

    #@6
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@9
    .line 699
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@b
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@e
    .line 700
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 701
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@16
    move-result-object v0

    #@17
    .line 702
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@19
    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 703
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@22
    .line 700
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 707
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 212
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 213
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 214
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 215
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 216
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@19
    .line 217
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1e
    .line 218
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@23
    .line 219
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@28
    .line 220
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@2d
    .line 221
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@32
    .line 222
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@37
    .line 223
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@3c
    .line 211
    return-void
.end method
