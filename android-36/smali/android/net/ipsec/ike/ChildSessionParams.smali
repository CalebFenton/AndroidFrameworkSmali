.class public abstract Landroid/net/ipsec/ike/ChildSessionParams;
.super Ljava/lang/Object;
.source "ChildSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/ChildSessionParams$Builder;
    }
.end annotation


# static fields
.field protected static final blacklist CHILD_HARD_LIFETIME_SEC_DEFAULT:I = 0x1c20

.field protected static final blacklist CHILD_HARD_LIFETIME_SEC_MAXIMUM:I = 0x3840

.field protected static final blacklist CHILD_HARD_LIFETIME_SEC_MINIMUM:I = 0x12c

.field protected static final blacklist CHILD_LIFETIME_MARGIN_SEC_MINIMUM:I

.field protected static final blacklist CHILD_SOFT_LIFETIME_SEC_DEFAULT:I = 0xe10

.field protected static final blacklist CHILD_SOFT_LIFETIME_SEC_MINIMUM:I = 0x78

.field private static final blacklist DEFAULT_TRAFFIC_SELECTOR_IPV4:Landroid/net/ipsec/ike/IkeTrafficSelector;

.field private static final blacklist DEFAULT_TRAFFIC_SELECTOR_IPV6:Landroid/net/ipsec/ike/IkeTrafficSelector;

.field protected static final blacklist HARD_LIFETIME_SEC_KEY:Ljava/lang/String; = "mHardLifetimeSec"

.field protected static final blacklist INBOUND_TS_KEY:Ljava/lang/String; = "mInboundTrafficSelectors"

.field private static final blacklist IS_TRANPORT_KEY:Ljava/lang/String; = "mIsTransport"

.field protected static final blacklist OUTBOUND_TS_KEY:Ljava/lang/String; = "mOutboundTrafficSelectors"

.field protected static final blacklist SA_PROPOSALS_KEY:Ljava/lang/String; = "mSaProposals"

.field protected static final blacklist SOFT_LIFETIME_SEC_KEY:Ljava/lang/String; = "mSoftLifetimeSec"


# instance fields
.field private final blacklist mHardLifetimeSec:I

.field private final blacklist mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

.field private final blacklist mIsTransport:Z

.field private final blacklist mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

.field private final blacklist mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

.field private final blacklist mSoftLifetimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_TRAFFIC_SELECTOR_IPV4()Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 1

    sget-object v0, Landroid/net/ipsec/ike/ChildSessionParams;->DEFAULT_TRAFFIC_SELECTOR_IPV4:Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_TRAFFIC_SELECTOR_IPV6()Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 1

    sget-object v0, Landroid/net/ipsec/ike/ChildSessionParams;->DEFAULT_TRAFFIC_SELECTOR_IPV6:Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 69
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/net/ipsec/ike/ChildSessionParams;->CHILD_LIFETIME_MARGIN_SEC_MINIMUM:I

    .line 75
    nop

    .line 76
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/net/ipsec/ike/ChildSessionParams;->buildDefaultTrafficSelector(I)Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v0

    sput-object v0, Landroid/net/ipsec/ike/ChildSessionParams;->DEFAULT_TRAFFIC_SELECTOR_IPV4:Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 78
    nop

    .line 79
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/net/ipsec/ike/ChildSessionParams;->buildDefaultTrafficSelector(I)Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v0

    sput-object v0, Landroid/net/ipsec/ike/ChildSessionParams;->DEFAULT_TRAFFIC_SELECTOR_IPV6:Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 81
    return-void
.end method

.method protected constructor blacklist <init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;IIZ)V
    .registers 7
    .param p1, "inboundTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p2, "outboundTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p3, "proposals"    # [Landroid/net/ipsec/ike/ChildSaProposal;
    .param p4, "hardLifetimeSec"    # I
    .param p5, "softLifetimeSec"    # I
    .param p6, "isTransport"    # Z

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 113
    iput-object p2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 114
    iput-object p3, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    .line 115
    iput p4, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    .line 116
    iput p5, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    .line 117
    iput-boolean p6, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mIsTransport:Z

    .line 118
    return-void
.end method

.method private static blacklist buildDefaultTrafficSelector(I)Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 8
    .param p0, "tsType"    # I

    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, "startPort":I
    const v3, 0xffff

    .line 376
    .local v3, "endPort":I
    const/4 v0, 0x0

    .line 377
    .local v0, "startAddress":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 378
    .local v1, "endAddress":Ljava/net/InetAddress;
    packed-switch p0, :pswitch_data_48

    .line 390
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Traffic Selector type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 384
    :pswitch_22
    const-string v4, "::"

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 385
    nop

    .line 386
    const-string v4, "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 388
    move-object v4, v0

    move-object v5, v1

    goto :goto_40

    .line 380
    :pswitch_32
    const-string v4, "0.0.0.0"

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 381
    const-string v4, "255.255.255.255"

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 382
    move-object v4, v0

    move-object v5, v1

    .line 393
    .end local v0    # "startAddress":Ljava/net/InetAddress;
    .end local v1    # "endAddress":Ljava/net/InetAddress;
    .local v4, "startAddress":Ljava/net/InetAddress;
    .local v5, "endAddress":Ljava/net/InetAddress;
    :goto_40
    new-instance v0, Landroid/net/ipsec/ike/IkeTrafficSelector;

    move v1, p0

    .end local p0    # "tsType":I
    .local v1, "tsType":I
    invoke-direct/range {v0 .. v5}, Landroid/net/ipsec/ike/IkeTrafficSelector;-><init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;)V

    .end local v1    # "tsType":I
    .restart local p0    # "tsType":I
    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x7
        :pswitch_32
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/ChildSessionParams;
    .registers 2
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 127
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    const-string v0, "mIsTransport"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 130
    invoke-static {p0}, Landroid/net/ipsec/ike/TransportModeChildSessionParams;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TransportModeChildSessionParams;

    move-result-object v0

    return-object v0

    .line 132
    :cond_12
    invoke-static {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getProposalsFromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/util/List;
    .registers 3
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;"
        }
    .end annotation

    .line 171
    const-string v0, "mSaProposals"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 172
    .local v0, "proposalBundle":Landroid/os/PersistableBundle;
    const-string v1, "Value for key mSaProposals was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    new-instance v1, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 181
    .local v0, "tsBundle":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    new-instance v1, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 290
    instance-of v0, p1, Landroid/net/ipsec/ike/ChildSessionParams;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 291
    return v1

    .line 294
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/ChildSessionParams;

    .line 296
    .local v0, "other":Landroid/net/ipsec/ike/ChildSessionParams;
    iget-object v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v3, v0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v3, v0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 297
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v3, v0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    .line 298
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    iget v3, v0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    iget v3, v0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    if-ne v2, v3, :cond_3b

    iget-boolean v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mIsTransport:Z

    iget-boolean v3, v0, Landroid/net/ipsec/ike/ChildSessionParams;->mIsTransport:Z

    if-ne v2, v3, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    nop

    .line 296
    :goto_3c
    return v1
.end method

.method public whitelist getChildSaProposals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHardLifetimeMsInternal()J
    .registers 4

    .line 264
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getHardLifetimeSeconds()I
    .registers 2

    .line 236
    iget v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    return v0
.end method

.method public whitelist getInboundTrafficSelectors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInboundTrafficSelectorsInternal()[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 3

    .line 249
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-object v0
.end method

.method public whitelist getOutboundTrafficSelectors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutboundTrafficSelectorsInternal()[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 3

    .line 254
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-object v0
.end method

.method public whitelist getSaProposals()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->getChildSaProposals()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSaProposalsInternal()[Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 3

    .line 259
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/ipsec/ike/ChildSaProposal;

    return-object v0
.end method

.method public blacklist getSoftLifetimeMsInternal()J
    .registers 4

    .line 269
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSoftLifetimeSeconds()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 279
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 280
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 281
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    .line 282
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mIsTransport:Z

    .line 285
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 279
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isTransportMode()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mIsTransport:Z

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 7

    .line 143
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 145
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "mIsTransport"

    iget-boolean v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mIsTransport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/ChildSaProposal;

    .line 149
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda1;-><init>()V

    .line 148
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 150
    .local v1, "saProposalBundle":Landroid/os/PersistableBundle;
    const-string v2, "mSaProposals"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 152
    iget-object v2, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mInboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 154
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda2;-><init>()V

    .line 153
    invoke-static {v2, v3}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 156
    .local v2, "inTsBundle":Landroid/os/PersistableBundle;
    const-string v3, "mInboundTrafficSelectors"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 158
    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mOutboundTrafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 160
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/net/ipsec/ike/ChildSessionParams$$ExternalSyntheticLambda2;-><init>()V

    .line 159
    invoke-static {v3, v4}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 162
    .local v3, "outTsBundle":Landroid/os/PersistableBundle;
    const-string v4, "mOutboundTrafficSelectors"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 164
    const-string v4, "mHardLifetimeSec"

    iget v5, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mHardLifetimeSec:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v4, "mSoftLifetimeSec"

    iget v5, p0, Landroid/net/ipsec/ike/ChildSessionParams;->mSoftLifetimeSec:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 166
    return-object v0
.end method
