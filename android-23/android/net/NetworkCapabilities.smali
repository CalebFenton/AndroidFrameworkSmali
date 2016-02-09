.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPABILITIES:J = 0xe000L

.field private static final MAX_NET_CAPABILITY:I = 0x11

.field private static final MAX_TRANSPORT:I = 0x4

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field private static final MIN_TRANSPORT:I = 0x0

.field public static final NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_VALIDATED:I = 0x10

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final RESTRICTED_CAPABILITIES:J = 0x7bcL

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1


# instance fields
.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Ljava/lang/String;

.field private mTransportTypes:J


# direct methods
.method static synthetic -set0(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/net/NetworkCapabilities;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/net/NetworkCapabilities;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@2
    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 610
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    #@5
    .line 609
    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->clearAll()V

    #@6
    .line 41
    const-wide/32 v0, 0xe000

    #@9
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    if-eqz p1, :cond_0

    #@5
    .line 46
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@7
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@9
    .line 47
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@b
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@d
    .line 48
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@f
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@11
    .line 49
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@13
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@15
    .line 50
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@19
    .line 44
    :cond_0
    return-void
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 484
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v0

    #@8
    .line 483
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@a
    .line 486
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@c
    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v0

    #@12
    .line 485
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@14
    .line 482
    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 278
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@4
    or-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@7
    .line 277
    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 534
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 535
    .local v0, "otherSpecifier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    return-void

    #@b
    .line 536
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 537
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v2, "Can\'t combine two networkSpecifiers"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 539
    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    #@1f
    .line 533
    return-void
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 405
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@2
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@4
    or-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@7
    .line 404
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    .line 265
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    #@5
    move-result v4

    #@6
    .line 266
    .local v4, "size":I
    new-array v3, v4, [I

    #@8
    .line 267
    .local v3, "result":[I
    const/4 v0, 0x0

    #@9
    .line 268
    .local v0, "index":I
    const/4 v2, 0x0

    #@a
    .local v2, "resource":I
    move v1, v0

    #@b
    .line 269
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    #@d
    cmp-long v5, p1, v6

    #@f
    if-lez v5, :cond_0

    #@11
    .line 270
    and-long v6, p1, v8

    #@13
    cmp-long v5, v6, v8

    #@15
    if-nez v5, :cond_1

    #@17
    add-int/lit8 v0, v1, 0x1

    #@19
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    #@1b
    .line 271
    :goto_1
    const/4 v5, 0x1

    #@1c
    shr-long/2addr p1, v5

    #@1d
    .line 272
    add-int/lit8 v2, v2, 0x1

    #@1f
    move v1, v0

    #@20
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@21
    .line 274
    :cond_0
    return-object v3

    #@22
    :cond_1
    move v0, v1

    #@23
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 493
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@3
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 494
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@9
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 493
    :cond_0
    return v0
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 547
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 549
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@11
    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 489
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@3
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@5
    if-gt v1, v2, :cond_0

    #@7
    .line 490
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@9
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 489
    :cond_0
    return v0
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 282
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@4
    and-long/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@7
    cmp-long v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 543
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@a
    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 542
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 408
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@5
    cmp-long v1, v2, v6

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 409
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@b
    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@d
    and-long/2addr v2, v4

    #@e
    cmp-long v1, v2, v6

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 408
    :cond_0
    :goto_0
    return v0

    #@13
    .line 409
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 218
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x11

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "NetworkCapability out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 221
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@11
    const/4 v2, 0x1

    #@12
    shl-int/2addr v2, p1

    #@13
    int-to-long v2, v2

    #@14
    or-long/2addr v0, v2

    #@15
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@17
    .line 222
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    #@0
    .prologue
    .line 356
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "TransportType out of range"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 359
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@10
    const/4 v2, 0x1

    #@11
    shl-int/2addr v2, p1

    #@12
    int-to-long v2, v2

    #@13
    or-long/2addr v0, v2

    #@14
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@16
    .line 360
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@18
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    #@1b
    .line 361
    return-object p0
.end method

.method public clearAll()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 60
    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@5
    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@7
    .line 61
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@9
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@b
    .line 62
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@e
    .line 59
    return-void
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 558
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    #@3
    .line 559
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    #@6
    .line 560
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    #@9
    .line 561
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    #@c
    .line 557
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 599
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 578
    if-eqz p1, :cond_0

    #@3
    instance-of v2, p1, Landroid/net/NetworkCapabilities;

    #@5
    if-nez v2, :cond_1

    #@7
    :cond_0
    return v1

    #@8
    :cond_1
    move-object v0, p1

    #@9
    .line 579
    check-cast v0, Landroid/net/NetworkCapabilities;

    #@b
    .line 580
    .local v0, "that":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 581
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@14
    move-result v2

    #@15
    .line 580
    if-eqz v2, :cond_2

    #@17
    .line 582
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    #@1a
    move-result v2

    #@1b
    .line 580
    if-eqz v2, :cond_2

    #@1d
    .line 583
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    #@20
    move-result v1

    #@21
    .line 580
    :cond_2
    return v1
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 287
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 413
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@2
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public getCapabilities()[I
    .locals 2

    #@0
    .prologue
    .line 248
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .locals 1

    #@0
    .prologue
    .line 479
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@2
    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .locals 1

    #@0
    .prologue
    .line 450
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    return v0
.end method

.method public getNetworkSpecifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransportTypes()[I
    .locals 2

    #@0
    .prologue
    .line 388
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 6
    .param p1, "capability"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 258
    if-ltz p1, :cond_0

    #@4
    const/16 v2, 0x11

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 259
    :cond_0
    return v1

    #@9
    .line 261
    :cond_1
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@b
    shl-int v4, v0, p1

    #@d
    int-to-long v4, v4

    #@e
    and-long/2addr v2, v4

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v2, v2, v4

    #@13
    if-eqz v2, :cond_2

    #@15
    :goto_0
    return v0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public hasTransport(I)Z
    .locals 6
    .param p1, "transportType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 398
    if-ltz p1, :cond_0

    #@4
    const/4 v2, 0x4

    #@5
    if-le p1, v2, :cond_1

    #@7
    .line 399
    :cond_0
    return v1

    #@8
    .line 401
    :cond_1
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@a
    shl-int v4, v0, p1

    #@c
    int-to-long v4, v4

    #@d
    and-long/2addr v2, v4

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-eqz v2, :cond_2

    #@14
    :goto_0
    return v0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    const/16 v4, 0x20

    #@4
    .line 588
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@6
    and-long/2addr v0, v6

    #@7
    long-to-int v0, v0

    #@8
    .line 589
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@a
    shr-long/2addr v2, v4

    #@b
    long-to-int v1, v2

    #@c
    mul-int/lit8 v1, v1, 0x3

    #@e
    .line 588
    add-int/2addr v0, v1

    #@f
    .line 590
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@11
    and-long/2addr v2, v6

    #@12
    long-to-int v1, v2

    #@13
    mul-int/lit8 v1, v1, 0x5

    #@15
    .line 588
    add-int/2addr v0, v1

    #@16
    .line 591
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@18
    shr-long/2addr v2, v4

    #@19
    long-to-int v1, v2

    #@1a
    mul-int/lit8 v1, v1, 0x7

    #@1c
    .line 588
    add-int/2addr v0, v1

    #@1d
    .line 592
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@1f
    mul-int/lit8 v1, v1, 0xb

    #@21
    .line 588
    add-int/2addr v0, v1

    #@22
    .line 593
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@24
    mul-int/lit8 v1, v1, 0xd

    #@26
    .line 588
    add-int/2addr v1, v0

    #@27
    .line 594
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    const/4 v0, 0x0

    #@30
    .line 588
    :goto_0
    add-int/2addr v0, v1

    #@31
    return v0

    #@32
    .line 594
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@37
    move-result v0

    #@38
    mul-int/lit8 v0, v0, 0x11

    #@3a
    goto :goto_0
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .locals 4

    #@0
    .prologue
    .line 302
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    const-wide/32 v2, -0xe7bd

    #@5
    and-long/2addr v0, v2

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 303
    const/16 v0, 0xd

    #@e
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@11
    .line 299
    :cond_0
    return-void
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 233
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x11

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "NetworkCapability out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 236
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@11
    const/4 v2, 0x1

    #@12
    shl-int/2addr v2, p1

    #@13
    not-int v2, v2

    #@14
    int-to-long v2, v2

    #@15
    and-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@18
    .line 237
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    #@0
    .prologue
    .line 372
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "TransportType out of range"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 375
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@10
    const/4 v2, 0x1

    #@11
    shl-int/2addr v2, p1

    #@12
    not-int v2, v2

    #@13
    int-to-long v2, v2

    #@14
    and-long/2addr v0, v2

    #@15
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@17
    .line 376
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@19
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    #@1c
    .line 377
    return-object p0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 569
    if-eqz p1, :cond_0

    #@2
    .line 570
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@5
    move-result v0

    #@6
    .line 569
    if-eqz v0, :cond_0

    #@8
    .line 571
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@b
    move-result v0

    #@c
    .line 569
    if-eqz v0, :cond_0

    #@e
    .line 572
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    #@11
    move-result v0

    #@12
    .line 569
    if-eqz v0, :cond_0

    #@14
    .line 573
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    #@17
    move-result v0

    #@18
    .line 569
    :goto_0
    return v0

    #@19
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "downKbps"    # I

    #@0
    .prologue
    .line 469
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@2
    .line 468
    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "upKbps"    # I

    #@0
    .prologue
    .line 440
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    .line 439
    return-void
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Must have a single transport specified to use setNetworkSpecifier"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 519
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@1a
    .line 514
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@3
    move-result-object v5

    #@4
    .line 631
    .local v5, "types":[I
    array-length v7, v5

    #@5
    if-lez v7, :cond_1

    #@7
    const-string/jumbo v4, " Transports: "

    #@a
    .line 632
    .local v4, "transports":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :cond_0
    :goto_1
    array-length v7, v5

    #@c
    if-ge v2, v7, :cond_2

    #@e
    .line 633
    aget v7, v5, v2

    #@10
    packed-switch v7, :pswitch_data_0

    #@13
    .line 640
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@15
    array-length v7, v5

    #@16
    if-ge v2, v7, :cond_0

    #@18
    new-instance v7, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    const-string/jumbo v8, "|"

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    goto :goto_1

    #@2d
    .line 631
    .end local v2    # "i":I
    .end local v4    # "transports":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ""

    #@30
    .restart local v4    # "transports":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 634
    .restart local v2    # "i":I
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    const-string/jumbo v8, "CELLULAR"

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    goto :goto_2

    #@46
    .line 635
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v8, "WIFI"

    #@52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    goto :goto_2

    #@5b
    .line 636
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    const-string/jumbo v8, "BLUETOOTH"

    #@67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    goto :goto_2

    #@70
    .line 637
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    const-string/jumbo v8, "ETHERNET"

    #@7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    goto :goto_2

    #@85
    .line 638
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    const-string/jumbo v8, "VPN"

    #@91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    goto/16 :goto_2

    #@9b
    .line 643
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    #@9e
    move-result-object v5

    #@9f
    .line 644
    array-length v7, v5

    #@a0
    if-lez v7, :cond_4

    #@a2
    const-string/jumbo v0, " Capabilities: "

    #@a5
    .line 645
    .local v0, "capabilities":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    #@a6
    :cond_3
    :goto_4
    array-length v7, v5

    #@a7
    if-ge v2, v7, :cond_5

    #@a9
    .line 646
    aget v7, v5, v2

    #@ab
    packed-switch v7, :pswitch_data_1

    #@ae
    .line 666
    :goto_5
    add-int/lit8 v2, v2, 0x1

    #@b0
    array-length v7, v5

    #@b1
    if-ge v2, v7, :cond_3

    #@b3
    new-instance v7, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    const-string/jumbo v8, "&"

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    goto :goto_4

    #@c8
    .line 644
    .end local v0    # "capabilities":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, ""

    #@cb
    .restart local v0    # "capabilities":Ljava/lang/String;
    goto :goto_3

    #@cc
    .line 647
    :pswitch_5
    new-instance v7, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v7

    #@d5
    const-string/jumbo v8, "MMS"

    #@d8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v0

    #@e0
    goto :goto_5

    #@e1
    .line 648
    :pswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v7

    #@ea
    const-string/jumbo v8, "SUPL"

    #@ed
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v7

    #@f1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v0

    #@f5
    goto :goto_5

    #@f6
    .line 649
    :pswitch_7
    new-instance v7, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    const-string/jumbo v8, "DUN"

    #@102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v7

    #@106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    goto :goto_5

    #@10b
    .line 650
    :pswitch_8
    new-instance v7, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v7

    #@114
    const-string/jumbo v8, "FOTA"

    #@117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v7

    #@11b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v0

    #@11f
    goto :goto_5

    #@120
    .line 651
    :pswitch_9
    new-instance v7, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v7

    #@129
    const-string/jumbo v8, "IMS"

    #@12c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v7

    #@130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v0

    #@134
    goto/16 :goto_5

    #@136
    .line 652
    :pswitch_a
    new-instance v7, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v7

    #@13f
    const-string/jumbo v8, "CBS"

    #@142
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v0

    #@14a
    goto/16 :goto_5

    #@14c
    .line 653
    :pswitch_b
    new-instance v7, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v7

    #@155
    const-string/jumbo v8, "WIFI_P2P"

    #@158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v7

    #@15c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v0

    #@160
    goto/16 :goto_5

    #@162
    .line 654
    :pswitch_c
    new-instance v7, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v7

    #@16b
    const-string/jumbo v8, "IA"

    #@16e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v7

    #@172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v0

    #@176
    goto/16 :goto_5

    #@178
    .line 655
    :pswitch_d
    new-instance v7, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v7

    #@181
    const-string/jumbo v8, "RCS"

    #@184
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v7

    #@188
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18b
    move-result-object v0

    #@18c
    goto/16 :goto_5

    #@18e
    .line 656
    :pswitch_e
    new-instance v7, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v7

    #@197
    const-string/jumbo v8, "XCAP"

    #@19a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v7

    #@19e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a1
    move-result-object v0

    #@1a2
    goto/16 :goto_5

    #@1a4
    .line 657
    :pswitch_f
    new-instance v7, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v7

    #@1ad
    const-string/jumbo v8, "EIMS"

    #@1b0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v7

    #@1b4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v0

    #@1b8
    goto/16 :goto_5

    #@1ba
    .line 658
    :pswitch_10
    new-instance v7, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v7

    #@1c3
    const-string/jumbo v8, "NOT_METERED"

    #@1c6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v7

    #@1ca
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v0

    #@1ce
    goto/16 :goto_5

    #@1d0
    .line 659
    :pswitch_11
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v7

    #@1d9
    const-string/jumbo v8, "INTERNET"

    #@1dc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v7

    #@1e0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v0

    #@1e4
    goto/16 :goto_5

    #@1e6
    .line 660
    :pswitch_12
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v7

    #@1ef
    const-string/jumbo v8, "NOT_RESTRICTED"

    #@1f2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v7

    #@1f6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v0

    #@1fa
    goto/16 :goto_5

    #@1fc
    .line 661
    :pswitch_13
    new-instance v7, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v7

    #@205
    const-string/jumbo v8, "TRUSTED"

    #@208
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v7

    #@20c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v0

    #@210
    goto/16 :goto_5

    #@212
    .line 662
    :pswitch_14
    new-instance v7, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v7

    #@21b
    const-string/jumbo v8, "NOT_VPN"

    #@21e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v7

    #@222
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@225
    move-result-object v0

    #@226
    goto/16 :goto_5

    #@228
    .line 663
    :pswitch_15
    new-instance v7, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v7

    #@231
    const-string/jumbo v8, "VALIDATED"

    #@234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v7

    #@238
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23b
    move-result-object v0

    #@23c
    goto/16 :goto_5

    #@23e
    .line 664
    :pswitch_16
    new-instance v7, Ljava/lang/StringBuilder;

    #@240
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v7

    #@247
    const-string/jumbo v8, "CAPTIVE_PORTAL"

    #@24a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v7

    #@24e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@251
    move-result-object v0

    #@252
    goto/16 :goto_5

    #@254
    .line 669
    :cond_5
    iget v7, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@256
    if-lez v7, :cond_6

    #@258
    new-instance v7, Ljava/lang/StringBuilder;

    #@25a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@25d
    const-string/jumbo v8, " LinkUpBandwidth>="

    #@260
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v7

    #@264
    .line 670
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@266
    .line 669
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@269
    move-result-object v7

    #@26a
    .line 670
    const-string/jumbo v8, "Kbps"

    #@26d
    .line 669
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v7

    #@271
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@274
    move-result-object v6

    #@275
    .line 671
    .local v6, "upBand":Ljava/lang/String;
    :goto_6
    iget v7, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@277
    if-lez v7, :cond_7

    #@279
    new-instance v7, Ljava/lang/StringBuilder;

    #@27b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27e
    const-string/jumbo v8, " LinkDnBandwidth>="

    #@281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v7

    #@285
    .line 672
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@287
    .line 671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v7

    #@28b
    .line 672
    const-string/jumbo v8, "Kbps"

    #@28e
    .line 671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v7

    #@292
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@295
    move-result-object v1

    #@296
    .line 674
    .local v1, "dnBand":Ljava/lang/String;
    :goto_7
    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@298
    if-nez v7, :cond_8

    #@29a
    .line 675
    const-string/jumbo v3, ""

    #@29d
    .line 677
    .local v3, "specifier":Ljava/lang/String;
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    #@29f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2a2
    const-string/jumbo v8, "["

    #@2a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v7

    #@2a9
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ac
    move-result-object v7

    #@2ad
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v7

    #@2b1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v7

    #@2b5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v7

    #@2b9
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v7

    #@2bd
    const-string/jumbo v8, "]"

    #@2c0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v7

    #@2c4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c7
    move-result-object v7

    #@2c8
    return-object v7

    #@2c9
    .line 670
    .end local v1    # "dnBand":Ljava/lang/String;
    .end local v3    # "specifier":Ljava/lang/String;
    .end local v6    # "upBand":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, ""

    #@2cc
    .restart local v6    # "upBand":Ljava/lang/String;
    goto :goto_6

    #@2cd
    .line 672
    :cond_7
    const-string/jumbo v1, ""

    #@2d0
    .restart local v1    # "dnBand":Ljava/lang/String;
    goto :goto_7

    #@2d1
    .line 675
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d6
    const-string/jumbo v8, " Specifier: <"

    #@2d9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v7

    #@2dd
    iget-object v8, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2df
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v7

    #@2e3
    const-string/jumbo v8, ">"

    #@2e6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e9
    move-result-object v7

    #@2ea
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ed
    move-result-object v3

    #@2ee
    .restart local v3    # "specifier":Ljava/lang/String;
    goto :goto_8

    #@2ef
    .line 633
    nop

    #@2f0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@2fe
    .line 646
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 603
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 604
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 605
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 606
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 607
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 602
    return-void
.end method
