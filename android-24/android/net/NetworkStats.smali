.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$1;,
        Landroid/net/NetworkStats$Entry;,
        Landroid/net/NetworkStats$NonMonotonicObserver;
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

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

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

.field private roaming:[I

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
    .line 860
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
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 191
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    .line 192
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    #@8
    .line 193
    if-ltz p3, :cond_0

    #@a
    .line 194
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    #@c
    .line 195
    new-array v0, p3, [Ljava/lang/String;

    #@e
    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@10
    .line 196
    new-array v0, p3, [I

    #@12
    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@14
    .line 197
    new-array v0, p3, [I

    #@16
    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@18
    .line 198
    new-array v0, p3, [I

    #@1a
    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@1c
    .line 199
    new-array v0, p3, [I

    #@1e
    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    #@20
    .line 200
    new-array v0, p3, [J

    #@22
    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@24
    .line 201
    new-array v0, p3, [J

    #@26
    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@28
    .line 202
    new-array v0, p3, [J

    #@2a
    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@2c
    .line 203
    new-array v0, p3, [J

    #@2e
    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@30
    .line 204
    new-array v0, p3, [J

    #@32
    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@34
    .line 190
    :goto_0
    return-void

    #@35
    .line 207
    :cond_0
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@37
    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@39
    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@3b
    .line 209
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@3d
    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@3f
    .line 210
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@41
    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@43
    .line 211
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@45
    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@47
    .line 212
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@49
    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    #@4b
    .line 213
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@4d
    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@4f
    .line 214
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@51
    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@53
    .line 215
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@55
    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@57
    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@59
    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@5b
    .line 217
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@5d
    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@5f
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@9
    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    #@f
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@15
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@1b
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@21
    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@27
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@2d
    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    #@33
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@39
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@3f
    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@45
    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@4b
    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@51
    .line 221
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
    .line 963
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@4
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@7
    .line 964
    .local v1, "moved":Landroid/net/NetworkStats$Entry;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    #@9
    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@c
    .line 965
    .local v2, "tmpEntry":Landroid/net/NetworkStats$Entry;
    iput-object p2, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@e
    .line 966
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@11
    if-ge v0, v3, :cond_6

    #@13
    .line 967
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
    .line 968
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@1f
    cmp-long v3, v4, v8

    #@21
    if-lez v3, :cond_1

    #@23
    .line 969
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
    .line 973
    :goto_1
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@31
    cmp-long v3, v4, v8

    #@33
    if-lez v3, :cond_2

    #@35
    .line 974
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
    .line 978
    :goto_2
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@43
    cmp-long v3, v4, v8

    #@45
    if-lez v3, :cond_3

    #@47
    .line 979
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
    .line 983
    :goto_3
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@55
    cmp-long v3, v4, v8

    #@57
    if-lez v3, :cond_4

    #@59
    .line 984
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
    .line 988
    :goto_4
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->operations:J

    #@67
    cmp-long v3, v4, v8

    #@69
    if-lez v3, :cond_5

    #@6b
    .line 990
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
    .line 989
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    #@77
    .line 994
    :goto_5
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    #@79
    aget v3, v3, v0

    #@7b
    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    #@7d
    .line 995
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@7f
    aget v3, v3, v0

    #@81
    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    #@83
    .line 996
    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    #@85
    aget v3, v3, v0

    #@87
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    #@89
    .line 997
    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    #@8b
    aget v3, v3, v0

    #@8d
    iput v3, v2, Landroid/net/NetworkStats$Entry;->roaming:I

    #@8f
    .line 998
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@92
    .line 999
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@94
    aget v3, v3, v0

    #@96
    if-nez v3, :cond_0

    #@98
    .line 1000
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    #@9b
    .line 1002
    const/16 v3, 0x3e9

    #@9d
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    #@9f
    .line 1003
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@a2
    .line 966
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@a4
    goto/16 :goto_0

    #@a6
    .line 971
    :cond_1
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@a8
    goto :goto_1

    #@a9
    .line 976
    :cond_2
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@ab
    goto :goto_2

    #@ac
    .line 981
    :cond_3
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@ae
    goto :goto_3

    #@af
    .line 986
    :cond_4
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@b1
    goto :goto_4

    #@b2
    .line 992
    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    #@b4
    goto :goto_5

    #@b5
    .line 1007
    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 8
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 1012
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    #@2
    .line 1013
    const/16 v0, 0x3ea

    #@4
    iput v0, p3, Landroid/net/NetworkStats$Entry;->set:I

    #@6
    .line 1014
    const/4 v0, 0x0

    #@7
    iput v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    #@9
    .line 1015
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@b
    .line 1016
    const/4 v0, -0x1

    #@c
    iput v0, p3, Landroid/net/NetworkStats$Entry;->roaming:I

    #@e
    .line 1017
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@11
    .line 1026
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x0

    #@13
    .line 1027
    const/4 v5, 0x0

    #@14
    move-object v0, p0

    #@15
    move-object v1, p2

    #@16
    move v2, p1

    #@17
    .line 1026
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    #@1a
    move-result v6

    #@1b
    .line 1028
    .local v6, "idxVpnBackground":I
    const/4 v0, -0x1

    #@1c
    if-eq v6, v0, :cond_0

    #@1e
    .line 1029
    invoke-static {v6, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    #@21
    .line 1032
    :cond_0
    const/4 v3, 0x1

    #@22
    const/4 v4, 0x0

    #@23
    .line 1033
    const/4 v5, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v1, p2

    #@26
    move v2, p1

    #@27
    .line 1032
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    #@2a
    move-result v7

    #@2b
    .line 1034
    .local v7, "idxVpnForeground":I
    const/4 v0, -0x1

    #@2c
    if-eq v7, v0, :cond_1

    #@2e
    .line 1035
    invoke-static {v7, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    #@31
    .line 1010
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
    .line 539
    if-eqz p1, :cond_3

    #@6
    move-object v0, p1

    #@7
    .line 541
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@9
    iput-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@b
    .line 542
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@d
    .line 543
    iput v8, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@f
    .line 544
    iput v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@11
    .line 545
    iput v8, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@13
    .line 546
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@15
    .line 547
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@17
    .line 548
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@19
    .line 549
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@1b
    .line 550
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1d
    .line 552
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    #@20
    if-ge v1, v4, :cond_6

    #@22
    .line 553
    if-eq p3, v8, :cond_0

    #@24
    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    #@26
    aget v4, v4, v1

    #@28
    if-ne p3, v4, :cond_4

    #@2a
    :cond_0
    const/4 v3, 0x1

    #@2b
    .line 554
    .local v3, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_5

    #@2d
    iget-object v4, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@2f
    aget-object v4, v4, v1

    #@31
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    .line 556
    :goto_3
    if-eqz v3, :cond_2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 558
    iget-object v4, p0, Landroid/net/NetworkStats;->tag:[I

    #@3b
    aget v4, v4, v1

    #@3d
    if-eqz v4, :cond_1

    #@3f
    if-eqz p4, :cond_2

    #@41
    .line 560
    :cond_1
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@43
    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@45
    aget-wide v6, v6, v1

    #@47
    add-long/2addr v4, v6

    #@48
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@4a
    .line 561
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@4c
    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@4e
    aget-wide v6, v6, v1

    #@50
    add-long/2addr v4, v6

    #@51
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@53
    .line 562
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@55
    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@57
    aget-wide v6, v6, v1

    #@59
    add-long/2addr v4, v6

    #@5a
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5c
    .line 563
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@5e
    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@60
    aget-wide v6, v6, v1

    #@62
    add-long/2addr v4, v6

    #@63
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@65
    .line 564
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@67
    iget-object v6, p0, Landroid/net/NetworkStats;->operations:[J

    #@69
    aget-wide v6, v6, v1

    #@6b
    add-long/2addr v4, v6

    #@6c
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@6e
    .line 552
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@70
    goto :goto_1

    #@71
    .line 539
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v3    # "matchesUid":Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@73
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@76
    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_0

    #@77
    .line 553
    .restart local v1    # "i":I
    :cond_4
    const/4 v3, 0x0

    #@78
    .restart local v3    # "matchesUid":Z
    goto :goto_2

    #@79
    .line 554
    :cond_5
    const/4 v2, 0x1

    #@7a
    .local v2, "matchesIface":Z
    goto :goto_3

    #@7b
    .line 567
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_6
    return-object v0
.end method

.method public static roamingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roaming"    # I

    #@0
    .prologue
    .line 836
    packed-switch p0, :pswitch_data_0

    #@3
    .line 844
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 838
    :pswitch_0
    const-string/jumbo v0, "ALL"

    #@a
    return-object v0

    #@b
    .line 840
    :pswitch_1
    const-string/jumbo v0, "NO"

    #@e
    return-object v0

    #@f
    .line 842
    :pswitch_2
    const-string/jumbo v0, "YES"

    #@12
    return-object v0

    #@13
    .line 836
    nop

    #@14
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 818
    if-ne p0, p1, :cond_0

    #@4
    .line 819
    return v0

    #@5
    .line 822
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
    .line 798
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 810
    const-string/jumbo v0, "unk"

    #@6
    return-object v0

    #@7
    .line 800
    :sswitch_0
    const-string/jumbo v0, "all"

    #@a
    return-object v0

    #@b
    .line 802
    :sswitch_1
    const-string/jumbo v0, "def"

    #@e
    return-object v0

    #@f
    .line 804
    :sswitch_2
    const-string/jumbo v0, "fg"

    #@12
    return-object v0

    #@13
    .line 806
    :sswitch_3
    const-string/jumbo v0, "vpnin"

    #@16
    return-object v0

    #@17
    .line 808
    :sswitch_4
    const-string/jumbo v0, "vpnout"

    #@1a
    return-object v0

    #@1b
    .line 798
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
    .line 778
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 790
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 780
    :sswitch_0
    const-string/jumbo v0, "ALL"

    #@a
    return-object v0

    #@b
    .line 782
    :sswitch_1
    const-string/jumbo v0, "DEFAULT"

    #@e
    return-object v0

    #@f
    .line 784
    :sswitch_2
    const-string/jumbo v0, "FOREGROUND"

    #@12
    return-object v0

    #@13
    .line 786
    :sswitch_3
    const-string/jumbo v0, "DBG_VPN_IN"

    #@16
    return-object v0

    #@17
    .line 788
    :sswitch_4
    const-string/jumbo v0, "DBG_VPN_OUT"

    #@1a
    return-object v0

    #@1b
    .line 778
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
    .line 600
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
    .locals 16
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
    .line 617
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@4
    move-object/from16 v0, p1

    #@6
    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@8
    sub-long v12, v2, v4

    #@a
    .line 618
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    #@c
    cmp-long v2, v12, v2

    #@e
    if-gez v2, :cond_1

    #@10
    .line 619
    if-eqz p2, :cond_0

    #@12
    .line 620
    const/4 v4, -0x1

    #@13
    const/4 v6, -0x1

    #@14
    move-object/from16 v2, p2

    #@16
    move-object/from16 v3, p0

    #@18
    move-object/from16 v5, p1

    #@1a
    move-object/from16 v7, p3

    #@1c
    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    #@1f
    .line 622
    :cond_0
    const-wide/16 v12, 0x0

    #@21
    .line 626
    :cond_1
    new-instance v14, Landroid/net/NetworkStats$Entry;

    #@23
    invoke-direct {v14}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@26
    .line 628
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_3

    #@28
    move-object/from16 v0, p4

    #@2a
    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget v3, v0, Landroid/net/NetworkStats;->size:I

    #@30
    if-lt v2, v3, :cond_3

    #@32
    .line 629
    move-object/from16 v15, p4

    #@34
    .line 630
    .local v15, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    #@35
    move-object/from16 v0, p4

    #@37
    iput v2, v0, Landroid/net/NetworkStats;->size:I

    #@39
    .line 631
    move-object/from16 v0, p4

    #@3b
    iput-wide v12, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@3d
    .line 635
    :goto_0
    const/4 v8, 0x0

    #@3e
    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@40
    iget v2, v0, Landroid/net/NetworkStats;->size:I

    #@42
    if-ge v8, v2, :cond_8

    #@44
    .line 636
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@48
    aget-object v2, v2, v8

    #@4a
    iput-object v2, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@4c
    .line 637
    move-object/from16 v0, p0

    #@4e
    iget-object v2, v0, Landroid/net/NetworkStats;->uid:[I

    #@50
    aget v2, v2, v8

    #@52
    iput v2, v14, Landroid/net/NetworkStats$Entry;->uid:I

    #@54
    .line 638
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/net/NetworkStats;->set:[I

    #@58
    aget v2, v2, v8

    #@5a
    iput v2, v14, Landroid/net/NetworkStats$Entry;->set:I

    #@5c
    .line 639
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Landroid/net/NetworkStats;->tag:[I

    #@60
    aget v2, v2, v8

    #@62
    iput v2, v14, Landroid/net/NetworkStats$Entry;->tag:I

    #@64
    .line 640
    move-object/from16 v0, p0

    #@66
    iget-object v2, v0, Landroid/net/NetworkStats;->roaming:[I

    #@68
    aget v2, v2, v8

    #@6a
    iput v2, v14, Landroid/net/NetworkStats$Entry;->roaming:I

    #@6c
    .line 643
    iget-object v3, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@6e
    iget v4, v14, Landroid/net/NetworkStats$Entry;->uid:I

    #@70
    iget v5, v14, Landroid/net/NetworkStats$Entry;->set:I

    #@72
    iget v6, v14, Landroid/net/NetworkStats$Entry;->tag:I

    #@74
    .line 644
    iget v7, v14, Landroid/net/NetworkStats$Entry;->roaming:I

    #@76
    move-object/from16 v2, p1

    #@78
    .line 643
    invoke-virtual/range {v2 .. v8}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIII)I

    #@7b
    move-result v10

    #@7c
    .line 645
    .local v10, "j":I
    const/4 v2, -0x1

    #@7d
    if-ne v10, v2, :cond_4

    #@7f
    .line 647
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    #@83
    aget-wide v2, v2, v8

    #@85
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@87
    .line 648
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    #@8b
    aget-wide v2, v2, v8

    #@8d
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@8f
    .line 649
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    #@93
    aget-wide v2, v2, v8

    #@95
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@97
    .line 650
    move-object/from16 v0, p0

    #@99
    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    #@9b
    aget-wide v2, v2, v8

    #@9d
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@9f
    .line 651
    move-object/from16 v0, p0

    #@a1
    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    #@a3
    aget-wide v2, v2, v8

    #@a5
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    #@a7
    .line 673
    :cond_2
    :goto_2
    invoke-virtual {v15, v14}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@aa
    .line 635
    add-int/lit8 v8, v8, 0x1

    #@ac
    goto :goto_1

    #@ad
    .line 633
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v15    # "result":Landroid/net/NetworkStats;
    :cond_3
    new-instance v15, Landroid/net/NetworkStats;

    #@af
    move-object/from16 v0, p0

    #@b1
    iget v2, v0, Landroid/net/NetworkStats;->size:I

    #@b3
    invoke-direct {v15, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    #@b6
    .restart local v15    # "result":Landroid/net/NetworkStats;
    goto :goto_0

    #@b7
    .line 654
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    :cond_4
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    #@bb
    aget-wide v2, v2, v8

    #@bd
    move-object/from16 v0, p1

    #@bf
    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    #@c1
    aget-wide v4, v4, v10

    #@c3
    sub-long/2addr v2, v4

    #@c4
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@c6
    .line 655
    move-object/from16 v0, p0

    #@c8
    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    #@ca
    aget-wide v2, v2, v8

    #@cc
    move-object/from16 v0, p1

    #@ce
    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    #@d0
    aget-wide v4, v4, v10

    #@d2
    sub-long/2addr v2, v4

    #@d3
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@d5
    .line 656
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    #@d9
    aget-wide v2, v2, v8

    #@db
    move-object/from16 v0, p1

    #@dd
    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    #@df
    aget-wide v4, v4, v10

    #@e1
    sub-long/2addr v2, v4

    #@e2
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@e4
    .line 657
    move-object/from16 v0, p0

    #@e6
    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    #@e8
    aget-wide v2, v2, v8

    #@ea
    move-object/from16 v0, p1

    #@ec
    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    #@ee
    aget-wide v4, v4, v10

    #@f0
    sub-long/2addr v2, v4

    #@f1
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@f3
    .line 658
    move-object/from16 v0, p0

    #@f5
    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    #@f7
    aget-wide v2, v2, v8

    #@f9
    move-object/from16 v0, p1

    #@fb
    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    #@fd
    aget-wide v4, v4, v10

    #@ff
    sub-long/2addr v2, v4

    #@100
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    #@102
    .line 660
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@104
    const-wide/16 v4, 0x0

    #@106
    cmp-long v2, v2, v4

    #@108
    if-ltz v2, :cond_5

    #@10a
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@10c
    const-wide/16 v4, 0x0

    #@10e
    cmp-long v2, v2, v4

    #@110
    if-gez v2, :cond_7

    #@112
    .line 662
    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    #@114
    move-object/from16 v6, p2

    #@116
    move-object/from16 v7, p0

    #@118
    move-object/from16 v9, p1

    #@11a
    move-object/from16 v11, p3

    #@11c
    .line 663
    invoke-interface/range {v6 .. v11}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    #@11f
    .line 665
    :cond_6
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@121
    const-wide/16 v4, 0x0

    #@123
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@126
    move-result-wide v2

    #@127
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@129
    .line 666
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@12b
    const-wide/16 v4, 0x0

    #@12d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@130
    move-result-wide v2

    #@131
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@133
    .line 667
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@135
    const-wide/16 v4, 0x0

    #@137
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@13a
    move-result-wide v2

    #@13b
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@13d
    .line 668
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@13f
    const-wide/16 v4, 0x0

    #@141
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@144
    move-result-wide v2

    #@145
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@147
    .line 669
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    #@149
    const-wide/16 v4, 0x0

    #@14b
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@14e
    move-result-wide v2

    #@14f
    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    #@151
    goto/16 :goto_2

    #@153
    .line 660
    :cond_7
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@155
    const-wide/16 v4, 0x0

    #@157
    cmp-long v2, v2, v4

    #@159
    if-ltz v2, :cond_5

    #@15b
    .line 661
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@15d
    const-wide/16 v4, 0x0

    #@15f
    cmp-long v2, v2, v4

    #@161
    if-ltz v2, :cond_5

    #@163
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    #@165
    const-wide/16 v4, 0x0

    #@167
    cmp-long v2, v2, v4

    #@169
    if-gez v2, :cond_2

    #@16b
    goto :goto_3

    #@16c
    .line 676
    .end local v10    # "j":I
    :cond_8
    return-object v15
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 829
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
    .line 928
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@2
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@5
    .line 929
    .local v1, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@8
    if-ge v0, v2, :cond_5

    #@a
    .line 930
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@d
    .line 931
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    #@f
    const/4 v3, -0x1

    #@10
    if-ne v2, v3, :cond_0

    #@12
    .line 932
    new-instance v2, Ljava/lang/IllegalStateException;

    #@14
    .line 933
    const-string/jumbo v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    #@17
    .line 932
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 934
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
    .line 935
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@29
    .line 936
    const-string/jumbo v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    #@2c
    .line 935
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 939
    :cond_2
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    #@32
    if-ne v2, p1, :cond_3

    #@34
    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    #@36
    if-nez v2, :cond_3

    #@38
    .line 940
    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@3a
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 939
    if-eqz v2, :cond_3

    #@40
    .line 941
    invoke-virtual {p5, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    #@43
    .line 944
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
    .line 946
    invoke-virtual {p4, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    #@52
    .line 929
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 927
    :cond_5
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p0, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 952
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@5
    .line 953
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
    .line 954
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
    .line 955
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
    .line 956
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
    .line 957
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
    .line 958
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 1040
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
    .line 1041
    .local v0, "rxBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    #@c
    aget-wide v10, v8, p0

    #@e
    sub-long/2addr v10, v0

    #@f
    aput-wide v10, v8, p0

    #@11
    .line 1042
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@13
    sub-long/2addr v8, v0

    #@14
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@16
    .line 1044
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
    .line 1045
    .local v2, "rxPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    #@22
    aget-wide v10, v8, p0

    #@24
    sub-long/2addr v10, v2

    #@25
    aput-wide v10, v8, p0

    #@27
    .line 1046
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@29
    sub-long/2addr v8, v2

    #@2a
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@2c
    .line 1048
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
    .line 1049
    .local v4, "txBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    #@38
    aget-wide v10, v8, p0

    #@3a
    sub-long/2addr v10, v4

    #@3b
    aput-wide v10, v8, p0

    #@3d
    .line 1050
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@3f
    sub-long/2addr v8, v4

    #@40
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@42
    .line 1052
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
    .line 1053
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    #@4e
    aget-wide v10, v8, p0

    #@50
    sub-long/2addr v10, v6

    #@51
    aput-wide v10, v8, p0

    #@53
    .line 1054
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@55
    sub-long/2addr v8, v6

    #@56
    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@58
    .line 1039
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
    .line 269
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
    .line 268
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
    .line 291
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@2
    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 292
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
    .line 293
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
    .line 294
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@1e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@24
    .line 295
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@2c
    .line 296
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@2e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@34
    .line 297
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    #@36
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    #@3c
    .line 298
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@3e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@44
    .line 299
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@46
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@4c
    .line 300
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@4e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@51
    move-result-object v1

    #@52
    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@54
    .line 301
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@56
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@59
    move-result-object v1

    #@5a
    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@5c
    .line 302
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@5e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    #@61
    move-result-object v1

    #@62
    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@64
    .line 303
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@66
    .line 306
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@68
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@6a
    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@6c
    aput-object v3, v1, v2

    #@6e
    .line 307
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@70
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@72
    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    #@74
    aput v3, v1, v2

    #@76
    .line 308
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@78
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@7a
    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    #@7c
    aput v3, v1, v2

    #@7e
    .line 309
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@80
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@82
    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    #@84
    aput v3, v1, v2

    #@86
    .line 310
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    #@88
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@8a
    iget v3, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    #@8c
    aput v3, v1, v2

    #@8e
    .line 311
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@90
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@92
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@94
    aput-wide v4, v1, v2

    #@96
    .line 312
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@98
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@9a
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@9c
    aput-wide v4, v1, v2

    #@9e
    .line 313
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@a0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@a2
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@a4
    aput-wide v4, v1, v2

    #@a6
    .line 314
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@a8
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@aa
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@ac
    aput-wide v4, v1, v2

    #@ae
    .line 315
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@b0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    #@b2
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@b4
    aput-wide v4, v1, v2

    #@b6
    .line 316
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@b8
    add-int/lit8 v1, v1, 0x1

    #@ba
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    #@bc
    .line 318
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIIJJJJJ)Landroid/net/NetworkStats;
    .locals 18
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I
    .param p6, "rxBytes"    # J
    .param p8, "rxPackets"    # J
    .param p10, "txBytes"    # J
    .param p12, "txPackets"    # J
    .param p14, "operations"    # J

    #@0
    .prologue
    .line 282
    new-instance v2, Landroid/net/NetworkStats$Entry;

    #@2
    move-object/from16 v3, p1

    #@4
    move/from16 v4, p2

    #@6
    move/from16 v5, p3

    #@8
    move/from16 v6, p4

    #@a
    move/from16 v7, p5

    #@c
    move-wide/from16 v8, p6

    #@e
    move-wide/from16 v10, p8

    #@10
    move-wide/from16 v12, p10

    #@12
    move-wide/from16 v14, p12

    #@14
    move-wide/from16 v16, p14

    #@16
    invoke-direct/range {v2 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIJJJJJ)V

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@1e
    move-result-object v2

    #@1f
    return-object v2
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
    .line 275
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
    .line 256
    new-instance v0, Landroid/net/NetworkStats;

    #@2
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@4
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@6
    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@9
    .line 257
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    #@a
    .line 258
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
    .line 259
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@12
    move-result-object v1

    #@13
    .line 260
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@16
    .line 258
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 262
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
    .line 255
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
    .line 402
    const/4 v0, 0x0

    #@1
    .line 403
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
    .line 404
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@9
    move-result-object v0

    #@a
    .line 405
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@d
    .line 403
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 401
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 384
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@2
    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    #@4
    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    #@6
    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    #@8
    iget v5, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    #@a
    move-object v0, p0

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    #@e
    move-result v6

    #@f
    .line 385
    .local v6, "i":I
    const/4 v0, -0x1

    #@10
    if-ne v6, v0, :cond_0

    #@12
    .line 387
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@15
    .line 395
    :goto_0
    return-object p0

    #@16
    .line 389
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@18
    aget-wide v2, v0, v6

    #@1a
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@1c
    add-long/2addr v2, v4

    #@1d
    aput-wide v2, v0, v6

    #@1f
    .line 390
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@21
    aget-wide v2, v0, v6

    #@23
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@25
    add-long/2addr v2, v4

    #@26
    aput-wide v2, v0, v6

    #@28
    .line 391
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@2a
    aget-wide v2, v0, v6

    #@2c
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@2e
    add-long/2addr v2, v4

    #@2f
    aput-wide v2, v0, v6

    #@31
    .line 392
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@33
    aget-wide v2, v0, v6

    #@35
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@37
    add-long/2addr v2, v4

    #@38
    aput-wide v2, v0, v6

    #@3a
    .line 393
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@3c
    aget-wide v2, v0, v6

    #@3e
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@40
    add-long/2addr v2, v4

    #@41
    aput-wide v2, v0, v6

    #@43
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
    .line 374
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
    .line 368
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
    .line 367
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
    .line 857
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
    .line 756
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 757
    const-string/jumbo v1, "NetworkStats: elapsedRealtime="

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@b
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@e
    .line 758
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 760
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
    .line 761
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
    .line 762
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
    .line 763
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
    .line 764
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
    .line 765
    const-string/jumbo v1, " roaming="

    #@64
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    #@69
    aget v1, v1, v0

    #@6b
    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    .line 766
    const-string/jumbo v1, " rxBytes="

    #@75
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@7a
    aget-wide v2, v1, v0

    #@7c
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@7f
    .line 767
    const-string/jumbo v1, " rxPackets="

    #@82
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@87
    aget-wide v2, v1, v0

    #@89
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@8c
    .line 768
    const-string/jumbo v1, " txBytes="

    #@8f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@94
    aget-wide v2, v1, v0

    #@96
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@99
    .line 769
    const-string/jumbo v1, " txPackets="

    #@9c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@a1
    aget-wide v2, v1, v0

    #@a3
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@a6
    .line 770
    const-string/jumbo v1, " operations="

    #@a9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@ae
    aget-wide v2, v1, v0

    #@b0
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@b3
    .line 758
    add-int/lit8 v0, v0, 0x1

    #@b5
    goto/16 :goto_0

    #@b7
    .line 755
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;IIII)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 414
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
    .line 415
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    #@19
    aget v1, v1, v0

    #@1b
    if-ne p5, v1, :cond_0

    #@1d
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@1f
    aget-object v1, v1, v0

    #@21
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 414
    if-eqz v1, :cond_0

    #@27
    .line 416
    return v0

    #@28
    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 419
    :cond_1
    const/4 v1, -0x1

    #@2c
    return v1
.end method

.method public findIndexHinted(Ljava/lang/String;IIIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I
    .param p6, "hintIndex"    # I

    #@0
    .prologue
    .line 429
    const/4 v2, 0x0

    #@1
    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@3
    if-ge v2, v3, :cond_2

    #@5
    .line 430
    div-int/lit8 v0, v2, 0x2

    #@7
    .line 434
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    #@9
    if-nez v3, :cond_0

    #@b
    .line 435
    add-int v3, p6, v0

    #@d
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    #@f
    rem-int v1, v3, v4

    #@11
    .line 440
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
    .line 441
    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    #@25
    aget v3, v3, v1

    #@27
    if-ne p5, v3, :cond_1

    #@29
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@2b
    aget-object v3, v3, v1

    #@2d
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    .line 440
    if-eqz v3, :cond_1

    #@33
    .line 442
    return v1

    #@34
    .line 437
    .end local v1    # "i":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@36
    add-int/2addr v3, p6

    #@37
    sub-int/2addr v3, v0

    #@38
    add-int/lit8 v3, v3, -0x1

    #@3a
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    #@3c
    rem-int v1, v3, v4

    #@3e
    .restart local v1    # "i":I
    goto :goto_1

    #@3f
    .line 429
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 445
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, -0x1

    #@43
    return v3
.end method

.method public getElapsedRealtime()J
    .locals 2

    #@0
    .prologue
    .line 340
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    #@0
    .prologue
    .line 352
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
    .line 507
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
    .line 515
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
    .line 523
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
    .line 499
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@4
    move-result-object v0

    #@5
    .line 500
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
    .line 527
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
    .line 574
    const-wide/16 v2, 0x0

    #@2
    .line 575
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 576
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
    .line 575
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 578
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 468
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 469
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
    .line 470
    .local v0, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@f
    if-eq v0, v5, :cond_0

    #@11
    .line 471
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 469
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 474
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
    .line 481
    new-instance v4, Landroid/util/SparseBooleanArray;

    #@2
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    #@5
    .line 482
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
    .line 483
    .local v3, "uid":I
    const/4 v8, 0x1

    #@e
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@11
    .line 482
    add-int/lit8 v5, v5, 0x1

    #@13
    goto :goto_0

    #@14
    .line 486
    .end local v3    # "uid":I
    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    #@17
    move-result v2

    #@18
    .line 487
    .local v2, "size":I
    new-array v1, v2, [I

    #@1a
    .line 488
    .local v1, "result":[I
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@1d
    .line 489
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@20
    move-result v5

    #@21
    aput v5, v1, v0

    #@23
    .line 488
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 491
    :cond_1
    return-object v1
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 325
    if-eqz p2, :cond_0

    #@2
    move-object v0, p2

    #@3
    .line 326
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@5
    aget-object v1, v1, p1

    #@7
    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@9
    .line 327
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    #@b
    aget v1, v1, p1

    #@d
    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@f
    .line 328
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    #@11
    aget v1, v1, p1

    #@13
    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@15
    .line 329
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    #@17
    aget v1, v1, p1

    #@19
    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@1b
    .line 330
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    #@1d
    aget v1, v1, p1

    #@1f
    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@21
    .line 331
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@23
    aget-wide v2, v1, p1

    #@25
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@27
    .line 332
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@29
    aget-wide v2, v1, p1

    #@2b
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@2d
    .line 333
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@2f
    aget-wide v2, v1, p1

    #@31
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@33
    .line 334
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@35
    aget-wide v2, v1, p1

    #@37
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@39
    .line 335
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    #@3b
    aget-wide v2, v1, p1

    #@3d
    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@3f
    .line 336
    return-object v0

    #@40
    .line 325
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@42
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@45
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
    .line 684
    new-instance v2, Landroid/net/NetworkStats;

    #@4
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    const/16 v3, 0xa

    #@8
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@b
    .line 686
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@d
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@10
    .line 687
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@12
    .line 688
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@14
    .line 689
    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@16
    .line 690
    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@18
    .line 691
    const-wide/16 v4, 0x0

    #@1a
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1c
    .line 693
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@1f
    if-ge v1, v3, :cond_1

    #@21
    .line 695
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@23
    aget v3, v3, v1

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 693
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 697
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@2c
    aget-object v3, v3, v1

    #@2e
    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@30
    .line 698
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@32
    aget-wide v4, v3, v1

    #@34
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@36
    .line 699
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@38
    aget-wide v4, v3, v1

    #@3a
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@3c
    .line 700
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@3e
    aget-wide v4, v3, v1

    #@40
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@42
    .line 701
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@44
    aget-wide v4, v3, v1

    #@46
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@48
    .line 702
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@4b
    goto :goto_1

    #@4c
    .line 705
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 713
    new-instance v2, Landroid/net/NetworkStats;

    #@4
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@6
    const/16 v3, 0xa

    #@8
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@b
    .line 715
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@d
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@10
    .line 716
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@12
    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@14
    .line 717
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@16
    .line 718
    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@18
    .line 719
    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@1a
    .line 721
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@1d
    if-ge v1, v3, :cond_1

    #@1f
    .line 723
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    #@21
    aget v3, v3, v1

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 721
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 725
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    #@2a
    aget v3, v3, v1

    #@2c
    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@2e
    .line 726
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@30
    aget-wide v4, v3, v1

    #@32
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@34
    .line 727
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@36
    aget-wide v4, v3, v1

    #@38
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@3a
    .line 728
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@3c
    aget-wide v4, v3, v1

    #@3e
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@40
    .line 729
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@42
    aget-wide v4, v3, v1

    #@44
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@46
    .line 730
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    #@48
    aget-wide v4, v3, v1

    #@4a
    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@4c
    .line 731
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@4f
    goto :goto_1

    #@50
    .line 734
    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    #@0
    .prologue
    .line 361
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
    .line 895
    new-instance v4, Landroid/net/NetworkStats$Entry;

    #@3
    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@6
    .line 896
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
    .line 898
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    #@12
    .line 903
    invoke-static {v4, v5}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@15
    move-result-object v7

    #@16
    .line 904
    .local v7, "pool":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v7}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 905
    return v8

    #@1d
    .line 907
    :cond_0
    invoke-direct {p0, p2, p3, v4, v7}, Landroid/net/NetworkStats;->addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@20
    move-result-object v6

    #@21
    .line 908
    .local v6, "moved":Landroid/net/NetworkStats$Entry;
    invoke-direct {p0, p1, p3, v6}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    #@24
    .line 910
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 911
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
    .line 913
    const/4 v0, 0x0

    #@45
    return v0

    #@46
    .line 915
    :cond_1
    return v8
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 344
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    .line 343
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 356
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    #@2
    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 8
    .param p1, "stats"    # Landroid/net/NetworkStats;

    #@0
    .prologue
    .line 454
    const/4 v6, 0x0

    #@1
    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    #@3
    if-ge v6, v0, :cond_1

    #@5
    .line 455
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@7
    aget-object v1, v0, v6

    #@9
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@b
    aget v2, v0, v6

    #@d
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@f
    aget v3, v0, v6

    #@11
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@13
    aget v4, v0, v6

    #@15
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    #@17
    aget v5, v0, v6

    #@19
    move-object v0, p1

    #@1a
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    #@1d
    move-result v7

    #@1e
    .line 456
    .local v7, "j":I
    const/4 v0, -0x1

    #@1f
    if-ne v7, v0, :cond_0

    #@21
    .line 457
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@23
    const-wide/16 v2, 0x0

    #@25
    aput-wide v2, v0, v6

    #@27
    .line 454
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 459
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@2c
    iget-object v1, p1, Landroid/net/NetworkStats;->operations:[J

    #@2e
    aget-wide v2, v1, v7

    #@30
    aput-wide v2, v0, v6

    #@32
    goto :goto_1

    #@33
    .line 453
    .end local v7    # "j":I
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
    .line 587
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
    .line 850
    new-instance v0, Ljava/io/CharArrayWriter;

    #@2
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    #@5
    .line 851
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string/jumbo v1, ""

    #@8
    new-instance v2, Ljava/io/PrintWriter;

    #@a
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@d
    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@10
    .line 852
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
    .line 742
    new-instance v2, Landroid/net/NetworkStats;

    #@2
    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@4
    const/16 v3, 0xa

    #@6
    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    #@9
    .line 744
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@b
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@e
    .line 745
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 746
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@16
    move-result-object v0

    #@17
    .line 747
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@19
    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 748
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    #@22
    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 752
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 239
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 240
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 241
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 242
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 243
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@19
    .line 244
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1e
    .line 245
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@23
    .line 246
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@28
    .line 247
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@2d
    .line 248
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@32
    .line 249
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@37
    .line 250
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@3c
    .line 251
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    #@41
    .line 238
    return-void
.end method
