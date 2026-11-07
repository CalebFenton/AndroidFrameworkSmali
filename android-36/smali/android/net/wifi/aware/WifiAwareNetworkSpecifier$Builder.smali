.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
.super Ljava/lang/Object;
.source "WifiAwareNetworkSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChannel:I

.field private blacklist mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

.field private blacklist mIsRequired:Z

.field private blacklist mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private blacklist mPmk:[B

.field private blacklist mPort:I

.field private blacklist mPskPassphrase:Ljava/lang/String;

.field private blacklist mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

.field private blacklist mTransportProtocol:I


# direct methods
.method public constructor whitelist <init>(Landroid/net/wifi/aware/DiscoverySession;Landroid/net/wifi/aware/PeerHandle;)V
    .registers 5
    .param p1, "discoverySession"    # Landroid/net/wifi/aware/DiscoverySession;
    .param p2, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    .line 371
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    .line 372
    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mChannel:I

    .line 373
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mIsRequired:Z

    .line 393
    if-eqz p1, :cond_1e

    .line 396
    if-eqz p2, :cond_16

    .line 399
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    .line 400
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 401
    return-void

    .line 397
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null peerHandle required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null discoverySession required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/aware/PublishDiscoverySession;)V
    .registers 4
    .param p1, "publishDiscoverySession"    # Landroid/net/wifi/aware/PublishDiscoverySession;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    .line 371
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    .line 372
    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mChannel:I

    .line 373
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mIsRequired:Z

    .line 419
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 422
    if-eqz p1, :cond_1b

    .line 425
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 427
    return-void

    .line 423
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null publishDiscoverySession required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .registers 16

    .line 584
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v0, :cond_89

    .line 587
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    if-nez v0, :cond_d

    goto :goto_15

    .line 588
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only specify a Passphrase or a PMK - not both!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 592
    .local v0, "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_23

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    move-object v14, v0

    goto :goto_31

    .line 593
    :cond_23
    :goto_23
    if-nez v0, :cond_81

    .line 597
    new-instance v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;-><init>(I[B[BLjava/lang/String;)V

    move-object v0, v1

    move-object v14, v0

    .line 602
    .end local v0    # "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    .local v14, "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    :goto_31
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    instance-of v0, v0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 603
    move v5, v1

    goto :goto_3b

    .line 604
    :cond_3a
    move v5, v2

    :goto_3b
    nop

    .line 606
    .local v5, "role":I
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    if-nez v0, :cond_45

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_49

    .line 607
    :cond_45
    if-ne v5, v2, :cond_79

    .line 612
    if-eqz v14, :cond_71

    .line 617
    :cond_49
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_4f

    .line 618
    move v4, v2

    goto :goto_50

    .line 619
    :cond_4f
    move v4, v1

    :goto_50
    nop

    .line 621
    .local v4, "type":I
    new-instance v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    iget v6, v0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    iget v7, v0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 622
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    :cond_63
    move v8, v1

    iget v10, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    iget v11, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    iget v12, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mChannel:I

    iget-boolean v13, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mIsRequired:Z

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[BIIIZLandroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;)V

    .line 621
    return-object v3

    .line 613
    .end local v4    # "type":I
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Port and transport protocol information can only be specified on a secure link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Port and transport protocol information can only be specified on the Publisher device (which is the server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    .end local v5    # "role":I
    .end local v14    # "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    .restart local v0    # "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    :cond_81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can only specify a SecurityConfig or a PMK(Passphrase) - not both!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    .end local v0    # "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null discovery session!?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChannelFrequencyMhz(IZ)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .registers 3
    .param p1, "channelInMhz"    # I
    .param p2, "required"    # Z

    .line 538
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mChannel:I

    .line 539
    iput-boolean p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mIsRequired:Z

    .line 540
    return-object p0
.end method

.method public whitelist setDataPathSecurityConfig(Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .registers 4
    .param p1, "securityConfig"    # Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 555
    if-eqz p1, :cond_13

    .line 560
    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 564
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 565
    return-object p0

    .line 561
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The WifiAwareDataPathSecurityConfig is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The WifiAwareDataPathSecurityConfig should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPmk([B)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .registers 4
    .param p1, "pmk"    # [B

    .line 466
    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 469
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    .line 470
    return-object p0

    .line 467
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PMK must 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPort(I)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .registers 4
    .param p1, "port"    # I

    .line 489
    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 492
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    .line 493
    return-object p0

    .line 490
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The port must be a positive value (0, 65535]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPskPassphrase(Ljava/lang/String;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .registers 4
    .param p1, "pskPassphrase"    # Ljava/lang/String;

    .line 444
    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    .line 448
    return-object p0

    .line 445
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase must meet length requirements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransportProtocol(I)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .registers 4
    .param p1, "transportProtocol"    # I

    .line 516
    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-gt p1, v0, :cond_9

    .line 520
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    .line 521
    return-object p0

    .line 517
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transport protocol must be in range [0, 255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
