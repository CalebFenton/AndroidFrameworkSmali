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

.field public static final MATCH_ALL_REQUESTS_NETWORK_SPECIFIER:Ljava/lang/String; = "*"

.field private static final MAX_NET_CAPABILITY:I = 0x12

.field private static final MAX_TRANSPORT:I = 0x4

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field private static final MIN_TRANSPORT:I = 0x0

.field private static final MUTABLE_CAPABILITIES:J = 0x74000L

.field public static final NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOREGROUND:I = 0x12

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

.field private static final NON_REQUESTABLE_CAPABILITIES:J = 0x70000L

.field private static final RESTRICTED_CAPABILITIES:J = 0x7bcL

.field public static final SIGNAL_STRENGTH_UNSPECIFIED:I = -0x80000000

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

.field private mSignalStrength:I

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

.method static synthetic -set4(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/net/NetworkCapabilities;J)J
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
    .line 816
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    #@5
    .line 815
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
    .line 51
    iget v0, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@1b
    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@1d
    .line 44
    :cond_0
    return-void
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 566
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v0

    #@8
    .line 565
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@a
    .line 568
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@c
    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v0

    #@12
    .line 567
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@14
    .line 564
    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 322
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@4
    or-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@7
    .line 321
    return-void
.end method

.method private combineSignalStrength(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 689
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@a
    .line 688
    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 619
    .local v0, "otherSpecifier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    return-void

    #@b
    .line 620
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 621
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v2, "Can\'t combine two networkSpecifiers"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 623
    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@1f
    .line 617
    return-void
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 487
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@2
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@4
    or-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@7
    .line 486
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    .line 309
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    #@5
    move-result v4

    #@6
    .line 310
    .local v4, "size":I
    new-array v3, v4, [I

    #@8
    .line 311
    .local v3, "result":[I
    const/4 v0, 0x0

    #@9
    .line 312
    .local v0, "index":I
    const/4 v2, 0x0

    #@a
    .local v2, "resource":I
    move v1, v0

    #@b
    .line 313
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    #@d
    cmp-long v5, p1, v6

    #@f
    if-lez v5, :cond_0

    #@11
    .line 314
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
    .line 315
    :goto_1
    const/4 v5, 0x1

    #@1c
    shr-long/2addr p1, v5

    #@1d
    .line 316
    add-int/lit8 v2, v2, 0x1

    #@1f
    move v1, v0

    #@20
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@21
    .line 318
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
    .line 575
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@3
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 576
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@9
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 575
    :cond_0
    return v0
.end method

.method private equalsNetCapabilitiesImmutable(Landroid/net/NetworkCapabilities;)Z
    .locals 6
    .param p1, "that"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const-wide/32 v4, -0x74001

    #@3
    .line 359
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@5
    and-long/2addr v0, v4

    #@6
    .line 360
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@8
    and-long/2addr v2, v4

    #@9
    .line 359
    cmp-long v0, v0, v2

    #@b
    if-nez v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z
    .locals 6
    .param p1, "that"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const-wide/32 v4, -0x70001

    #@3
    .line 364
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@5
    and-long/2addr v0, v4

    #@6
    .line 365
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@8
    and-long/2addr v2, v4

    #@9
    .line 364
    cmp-long v0, v0, v2

    #@b
    if-nez v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 697
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 632
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 634
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
    .line 571
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@3
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@5
    if-gt v1, v2, :cond_0

    #@7
    .line 572
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@9
    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 571
    :cond_0
    return v0
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "onlyImmutable"    # Z

    #@0
    .prologue
    .line 346
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    .line 347
    .local v0, "networkCapabilities":J
    if-eqz p2, :cond_0

    #@4
    .line 348
    const-wide/32 v2, -0x74001

    #@7
    and-long/2addr v0, v2

    #@8
    .line 350
    :cond_0
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@a
    and-long/2addr v2, v0

    #@b
    cmp-long v2, v2, v0

    #@d
    if-nez v2, :cond_1

    #@f
    const/4 v2, 0x1

    #@10
    :goto_0
    return v2

    #@11
    :cond_1
    const/4 v2, 0x0

    #@12
    goto :goto_0
.end method

.method private satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "onlyImmutable"    # Z

    #@0
    .prologue
    .line 722
    if-eqz p1, :cond_2

    #@2
    .line 723
    invoke-direct {p0, p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    #@5
    move-result v0

    #@6
    .line 722
    if-eqz v0, :cond_2

    #@8
    .line 724
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@b
    move-result v0

    #@c
    .line 722
    if-eqz v0, :cond_2

    #@e
    .line 725
    if-nez p2, :cond_0

    #@10
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    #@13
    move-result v0

    #@14
    .line 722
    if-eqz v0, :cond_2

    #@16
    .line 726
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    #@19
    move-result v0

    #@1a
    .line 722
    if-eqz v0, :cond_2

    #@1c
    .line 727
    if-nez p2, :cond_1

    #@1e
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z

    #@21
    move-result v0

    #@22
    .line 722
    :goto_0
    return v0

    #@23
    .line 727
    :cond_1
    const/4 v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 722
    :cond_2
    const/4 v0, 0x0

    #@26
    goto :goto_0
.end method

.method private satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 693
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@4
    if-gt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 627
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@a
    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 626
    if-nez v0, :cond_0

    #@12
    .line 628
    const-string/jumbo v0, "*"

    #@15
    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 626
    :goto_0
    return v0

    #@1c
    :cond_0
    const/4 v0, 0x1

    #@1d
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
    .line 490
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@5
    cmp-long v1, v2, v6

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 491
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
    .line 490
    :cond_0
    :goto_0
    return v0

    #@13
    .line 491
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public static transportNamesOf([I)Ljava/lang/String;
    .locals 4
    .param p0, "types"    # [I

    #@0
    .prologue
    .line 884
    const-string/jumbo v1, ""

    #@3
    .line 885
    .local v1, "transports":Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :cond_0
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 886
    aget v2, p0, v0

    #@9
    packed-switch v2, :pswitch_data_0

    #@c
    .line 893
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@e
    array-length v2, p0

    #@f
    if-ge v0, v2, :cond_0

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "|"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    goto :goto_0

    #@26
    .line 887
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "CELLULAR"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    goto :goto_1

    #@3b
    .line 888
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, "WIFI"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    goto :goto_1

    #@50
    .line 889
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    const-string/jumbo v3, "BLUETOOTH"

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    goto :goto_1

    #@65
    .line 890
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    const-string/jumbo v3, "ETHERNET"

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    goto :goto_1

    #@7a
    .line 891
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    const-string/jumbo v3, "VPN"

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v1

    #@8e
    goto/16 :goto_1

    #@90
    .line 895
    :cond_1
    return-object v1

    #@91
    .line 886
    nop

    #@92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 262
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x12

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "NetworkCapability out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 265
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
    .line 266
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    #@0
    .prologue
    .line 438
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 439
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "TransportType out of range"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 441
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
    .line 442
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@18
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@1b
    .line 443
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
    .line 61
    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@5
    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@7
    .line 62
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@9
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@b
    .line 63
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@e
    .line 64
    const/high16 v0, -0x80000000

    #@10
    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@12
    .line 60
    return-void
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 705
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    #@3
    .line 706
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    #@6
    .line 707
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    #@9
    .line 708
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    #@c
    .line 709
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSignalStrength(Landroid/net/NetworkCapabilities;)V

    #@f
    .line 704
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 803
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public describeFirstNonRequestableCapability()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 333
    const/16 v0, 0x10

    #@2
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "NET_CAPABILITY_VALIDATED"

    #@b
    return-object v0

    #@c
    .line 334
    :cond_0
    const/16 v0, 0x11

    #@e
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    const-string/jumbo v0, "NET_CAPABILITY_CAPTIVE_PORTAL"

    #@17
    return-object v0

    #@18
    .line 335
    :cond_1
    const/16 v0, 0x12

    #@1a
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    const-string/jumbo v0, "NET_CAPABILITY_FOREGROUND"

    #@23
    return-object v0

    #@24
    .line 337
    :cond_2
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@26
    const-wide/32 v2, 0x70000

    #@29
    and-long/2addr v0, v2

    #@2a
    const-wide/16 v2, 0x0

    #@2c
    cmp-long v0, v0, v2

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v1, "unknown non-requestable capabilities "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@3e
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0

    #@4b
    .line 340
    :cond_3
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@4d
    if-nez v0, :cond_4

    #@4f
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@51
    if-eqz v0, :cond_5

    #@53
    :cond_4
    const-string/jumbo v0, "link bandwidth"

    #@56
    return-object v0

    #@57
    .line 341
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_6

    #@5d
    const-string/jumbo v0, "signalStrength"

    #@60
    return-object v0

    #@61
    .line 342
    :cond_6
    const/4 v0, 0x0

    #@62
    return-object v0
.end method

.method public equalImmutableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 759
    if-nez p1, :cond_0

    #@3
    return v0

    #@4
    .line 760
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesImmutable(Landroid/net/NetworkCapabilities;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 761
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@d
    move-result v1

    #@e
    .line 760
    if-eqz v1, :cond_1

    #@10
    .line 762
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    #@13
    move-result v0

    #@14
    .line 760
    :cond_1
    return v0
.end method

.method public equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 772
    if-nez p1, :cond_0

    #@3
    return v0

    #@4
    .line 773
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 774
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@d
    move-result v1

    #@e
    .line 773
    if-eqz v1, :cond_1

    #@10
    .line 775
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    #@13
    move-result v0

    #@14
    .line 773
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 780
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
    .line 781
    check-cast v0, Landroid/net/NetworkCapabilities;

    #@b
    .line 782
    .local v0, "that":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 783
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@14
    move-result v2

    #@15
    .line 782
    if-eqz v2, :cond_2

    #@17
    .line 784
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    #@1a
    move-result v2

    #@1b
    .line 782
    if-eqz v2, :cond_2

    #@1d
    .line 785
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z

    #@20
    move-result v2

    #@21
    .line 782
    if-eqz v2, :cond_2

    #@23
    .line 786
    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    #@26
    move-result v1

    #@27
    .line 782
    :cond_2
    return v1
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 355
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
    .line 495
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
    .line 292
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
    .line 561
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@2
    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .locals 1

    #@0
    .prologue
    .line 532
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    return v0
.end method

.method public getNetworkSpecifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 685
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    return v0
.end method

.method public getTransportTypes()[I
    .locals 2

    #@0
    .prologue
    .line 470
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
    .line 302
    if-ltz p1, :cond_0

    #@4
    const/16 v2, 0x12

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 303
    :cond_0
    return v1

    #@9
    .line 305
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

.method public hasSignalStrength()Z
    .locals 2

    #@0
    .prologue
    .line 675
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-le v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
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
    .line 480
    if-ltz p1, :cond_0

    #@4
    const/4 v2, 0x4

    #@5
    if-le p1, v2, :cond_1

    #@7
    .line 481
    :cond_0
    return v1

    #@8
    .line 483
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
    .line 791
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@6
    and-long/2addr v0, v6

    #@7
    long-to-int v0, v0

    #@8
    .line 792
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@a
    shr-long/2addr v2, v4

    #@b
    long-to-int v1, v2

    #@c
    mul-int/lit8 v1, v1, 0x3

    #@e
    .line 791
    add-int/2addr v0, v1

    #@f
    .line 793
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@11
    and-long/2addr v2, v6

    #@12
    long-to-int v1, v2

    #@13
    mul-int/lit8 v1, v1, 0x5

    #@15
    .line 791
    add-int/2addr v0, v1

    #@16
    .line 794
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@18
    shr-long/2addr v2, v4

    #@19
    long-to-int v1, v2

    #@1a
    mul-int/lit8 v1, v1, 0x7

    #@1c
    .line 791
    add-int/2addr v0, v1

    #@1d
    .line 795
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@1f
    mul-int/lit8 v1, v1, 0xb

    #@21
    .line 791
    add-int/2addr v0, v1

    #@22
    .line 796
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@24
    mul-int/lit8 v1, v1, 0xd

    #@26
    .line 791
    add-int/2addr v1, v0

    #@27
    .line 797
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
    .line 791
    :goto_0
    add-int/2addr v0, v1

    #@31
    .line 798
    iget v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@33
    mul-int/lit8 v1, v1, 0x13

    #@35
    .line 791
    add-int/2addr v0, v1

    #@36
    return v0

    #@37
    .line 797
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@3c
    move-result v0

    #@3d
    mul-int/lit8 v0, v0, 0x11

    #@3f
    goto :goto_0
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 380
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@4
    const-wide/32 v2, -0xe7bd

    #@7
    and-long/2addr v0, v2

    #@8
    cmp-long v0, v0, v4

    #@a
    if-nez v0, :cond_0

    #@c
    .line 383
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@e
    const-wide/16 v2, 0x7bc

    #@10
    and-long/2addr v0, v2

    #@11
    cmp-long v0, v0, v4

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 384
    const/16 v0, 0xd

    #@17
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@1a
    .line 377
    :cond_0
    return-void
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 277
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x12

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "NetworkCapability out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 280
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
    .line 281
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    #@0
    .prologue
    .line 454
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "TransportType out of range"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 457
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
    .line 458
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@19
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@1c
    .line 459
    return-object p0
.end method

.method public satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 749
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 738
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "downKbps"    # I

    #@0
    .prologue
    .line 551
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@2
    .line 550
    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "upKbps"    # I

    #@0
    .prologue
    .line 522
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@2
    .line 521
    return-void
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 598
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
    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Must have a single transport specified to use setNetworkSpecifier"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 602
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@1a
    .line 603
    return-object p0
.end method

.method public setSignalStrength(I)V
    .locals 0
    .param p1, "signalStrength"    # I

    #@0
    .prologue
    .line 666
    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@2
    .line 665
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@3
    move-result-object v6

    #@4
    .line 838
    .local v6, "types":[I
    array-length v8, v6

    #@5
    if-lez v8, :cond_1

    #@7
    new-instance v8, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v9, " Transports: "

    #@f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-static {v6}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 840
    .local v5, "transports":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    #@22
    move-result-object v6

    #@23
    .line 841
    array-length v8, v6

    #@24
    if-lez v8, :cond_2

    #@26
    const-string/jumbo v0, " Capabilities: "

    #@29
    .line 842
    .local v0, "capabilities":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    #@2a
    .local v2, "i":I
    :cond_0
    :goto_2
    array-length v8, v6

    #@2b
    if-ge v2, v8, :cond_3

    #@2d
    .line 843
    aget v8, v6, v2

    #@2f
    packed-switch v8, :pswitch_data_0

    #@32
    .line 864
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@34
    array-length v8, v6

    #@35
    if-ge v2, v8, :cond_0

    #@37
    new-instance v8, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    const-string/jumbo v9, "&"

    #@43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_2

    #@4c
    .line 838
    .end local v0    # "capabilities":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "transports":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, ""

    #@4f
    .restart local v5    # "transports":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 841
    :cond_2
    const-string/jumbo v0, ""

    #@53
    .restart local v0    # "capabilities":Ljava/lang/String;
    goto :goto_1

    #@54
    .line 844
    .restart local v2    # "i":I
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    const-string/jumbo v9, "MMS"

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    goto :goto_3

    #@69
    .line 845
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    const-string/jumbo v9, "SUPL"

    #@75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    goto :goto_3

    #@7e
    .line 846
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    const-string/jumbo v9, "DUN"

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    goto :goto_3

    #@93
    .line 847
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v8

    #@9c
    const-string/jumbo v9, "FOTA"

    #@9f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v8

    #@a3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    goto :goto_3

    #@a8
    .line 848
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    const-string/jumbo v9, "IMS"

    #@b4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v8

    #@b8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    goto/16 :goto_3

    #@be
    .line 849
    :pswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v8

    #@c7
    const-string/jumbo v9, "CBS"

    #@ca
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    goto/16 :goto_3

    #@d4
    .line 850
    :pswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v8

    #@dd
    const-string/jumbo v9, "WIFI_P2P"

    #@e0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v8

    #@e4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v0

    #@e8
    goto/16 :goto_3

    #@ea
    .line 851
    :pswitch_7
    new-instance v8, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v8

    #@f3
    const-string/jumbo v9, "IA"

    #@f6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v8

    #@fa
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v0

    #@fe
    goto/16 :goto_3

    #@100
    .line 852
    :pswitch_8
    new-instance v8, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v8

    #@109
    const-string/jumbo v9, "RCS"

    #@10c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v8

    #@110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v0

    #@114
    goto/16 :goto_3

    #@116
    .line 853
    :pswitch_9
    new-instance v8, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v8

    #@11f
    const-string/jumbo v9, "XCAP"

    #@122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v8

    #@126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v0

    #@12a
    goto/16 :goto_3

    #@12c
    .line 854
    :pswitch_a
    new-instance v8, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v8

    #@135
    const-string/jumbo v9, "EIMS"

    #@138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v8

    #@13c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v0

    #@140
    goto/16 :goto_3

    #@142
    .line 855
    :pswitch_b
    new-instance v8, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v8

    #@14b
    const-string/jumbo v9, "NOT_METERED"

    #@14e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v8

    #@152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v0

    #@156
    goto/16 :goto_3

    #@158
    .line 856
    :pswitch_c
    new-instance v8, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v8

    #@161
    const-string/jumbo v9, "INTERNET"

    #@164
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v8

    #@168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v0

    #@16c
    goto/16 :goto_3

    #@16e
    .line 857
    :pswitch_d
    new-instance v8, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v8

    #@177
    const-string/jumbo v9, "NOT_RESTRICTED"

    #@17a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v8

    #@17e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v0

    #@182
    goto/16 :goto_3

    #@184
    .line 858
    :pswitch_e
    new-instance v8, Ljava/lang/StringBuilder;

    #@186
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v8

    #@18d
    const-string/jumbo v9, "TRUSTED"

    #@190
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v8

    #@194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v0

    #@198
    goto/16 :goto_3

    #@19a
    .line 859
    :pswitch_f
    new-instance v8, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v8

    #@1a3
    const-string/jumbo v9, "NOT_VPN"

    #@1a6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v8

    #@1aa
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v0

    #@1ae
    goto/16 :goto_3

    #@1b0
    .line 860
    :pswitch_10
    new-instance v8, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v8

    #@1b9
    const-string/jumbo v9, "VALIDATED"

    #@1bc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v8

    #@1c0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v0

    #@1c4
    goto/16 :goto_3

    #@1c6
    .line 861
    :pswitch_11
    new-instance v8, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v8

    #@1cf
    const-string/jumbo v9, "CAPTIVE_PORTAL"

    #@1d2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v8

    #@1d6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v0

    #@1da
    goto/16 :goto_3

    #@1dc
    .line 862
    :pswitch_12
    new-instance v8, Ljava/lang/StringBuilder;

    #@1de
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1e1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v8

    #@1e5
    const-string/jumbo v9, "FOREGROUND"

    #@1e8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v8

    #@1ec
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v0

    #@1f0
    goto/16 :goto_3

    #@1f2
    .line 867
    :cond_3
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@1f4
    if-lez v8, :cond_4

    #@1f6
    new-instance v8, Ljava/lang/StringBuilder;

    #@1f8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1fb
    const-string/jumbo v9, " LinkUpBandwidth>="

    #@1fe
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v8

    #@202
    .line 868
    iget v9, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@204
    .line 867
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@207
    move-result-object v8

    #@208
    .line 868
    const-string/jumbo v9, "Kbps"

    #@20b
    .line 867
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v8

    #@20f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v7

    #@213
    .line 869
    .local v7, "upBand":Ljava/lang/String;
    :goto_4
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@215
    if-lez v8, :cond_5

    #@217
    new-instance v8, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    const-string/jumbo v9, " LinkDnBandwidth>="

    #@21f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v8

    #@223
    .line 870
    iget v9, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@225
    .line 869
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@228
    move-result-object v8

    #@229
    .line 870
    const-string/jumbo v9, "Kbps"

    #@22c
    .line 869
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v8

    #@230
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@233
    move-result-object v1

    #@234
    .line 872
    .local v1, "dnBand":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@236
    if-nez v8, :cond_6

    #@238
    .line 873
    const-string/jumbo v4, ""

    #@23b
    .line 875
    .local v4, "specifier":Ljava/lang/String;
    :goto_6
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@23e
    move-result v8

    #@23f
    if-eqz v8, :cond_7

    #@241
    new-instance v8, Ljava/lang/StringBuilder;

    #@243
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    const-string/jumbo v9, " SignalStrength: "

    #@249
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v8

    #@24d
    iget v9, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@24f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@252
    move-result-object v8

    #@253
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@256
    move-result-object v3

    #@257
    .line 877
    .local v3, "signalStrength":Ljava/lang/String;
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    #@259
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@25c
    const-string/jumbo v9, "["

    #@25f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@262
    move-result-object v8

    #@263
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v8

    #@267
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v8

    #@26b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v8

    #@26f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v8

    #@273
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v8

    #@277
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v8

    #@27b
    const-string/jumbo v9, "]"

    #@27e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v8

    #@282
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@285
    move-result-object v8

    #@286
    return-object v8

    #@287
    .line 868
    .end local v1    # "dnBand":Ljava/lang/String;
    .end local v3    # "signalStrength":Ljava/lang/String;
    .end local v4    # "specifier":Ljava/lang/String;
    .end local v7    # "upBand":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, ""

    #@28a
    .restart local v7    # "upBand":Ljava/lang/String;
    goto :goto_4

    #@28b
    .line 870
    :cond_5
    const-string/jumbo v1, ""

    #@28e
    .restart local v1    # "dnBand":Ljava/lang/String;
    goto :goto_5

    #@28f
    .line 873
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    #@291
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@294
    const-string/jumbo v9, " Specifier: <"

    #@297
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v8

    #@29b
    iget-object v9, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@29d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v8

    #@2a1
    const-string/jumbo v9, ">"

    #@2a4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v8

    #@2a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v4

    #@2ac
    .restart local v4    # "specifier":Ljava/lang/String;
    goto :goto_6

    #@2ad
    .line 875
    :cond_7
    const-string/jumbo v3, ""

    #@2b0
    .restart local v3    # "signalStrength":Ljava/lang/String;
    goto :goto_7

    #@2b1
    .line 843
    nop

    #@2b2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 807
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 808
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 809
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 810
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 811
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 812
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 806
    return-void
.end method
