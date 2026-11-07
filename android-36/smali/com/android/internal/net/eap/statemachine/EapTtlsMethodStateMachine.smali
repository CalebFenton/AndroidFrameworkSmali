.class public Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
.source "EapTtlsMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;,
        Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;,
        Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;,
        Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;,
        Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_AVP_VENDOR_ID:I

.field public static blacklist sTlsSessionFactory:Lcom/android/internal/net/eap/crypto/TlsSessionFactory;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEapTtlsConfig:Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

.field final blacklist mInboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

.field final blacklist mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;

.field blacklist mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

.field private final blacklist mTypeDataDecoder:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEapTtlsConfig(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mEapTtlsConfig:Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Ljava/security/SecureRandom;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTypeDataDecoder:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->buildEapMessageResponse(Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextOutboundFragment(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->getNextOutboundFragment(Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInboundFragmentation(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->handleInboundFragmentation(Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/android/internal/net/eap/crypto/TlsSessionFactory;

    invoke-direct {v0}, Lcom/android/internal/net/eap/crypto/TlsSessionFactory;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->sTlsSessionFactory:Lcom/android/internal/net/eap/crypto/TlsSessionFactory;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig$EapTtlsConfig;Ljava/security/SecureRandom;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapTtlsConfig"    # Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .line 104
    new-instance v4, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    invoke-direct {v4}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;-><init>()V

    new-instance v5, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    invoke-direct {v5}, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;-><init>()V

    new-instance v6, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    invoke-direct {v6}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "eapTtlsConfig":Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .end local p3    # "secureRandom":Ljava/security/SecureRandom;
    .local v1, "context":Landroid/content/Context;
    .local v2, "eapTtlsConfig":Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .local v3, "secureRandom":Ljava/security/SecureRandom;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;-><init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig$EapTtlsConfig;Ljava/security/SecureRandom;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;)V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig$EapTtlsConfig;Ljava/security/SecureRandom;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapTtlsConfig"    # Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;
    .param p4, "typeDataDecoder"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;
    .param p5, "inboundFragmentationHelper"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;
    .param p6, "outboundFragmentationHelper"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    .line 120
    invoke-direct {p0}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mEapTtlsConfig:Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    .line 123
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTypeDataDecoder:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    .line 124
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    .line 125
    iput-object p5, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mInboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    .line 126
    iput-object p6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    .line 128
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 129
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapIdentifier"    # I
    .param p3, "eapTtlsTypeData"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 791
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->getEapMethod()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->encode()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 792
    .local v0, "eapData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v1, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, v0}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 793
    .local v1, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    invoke-static {v1}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2
    :try_end_17
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v2

    .line 794
    .end local v0    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    .end local v1    # "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    :catch_18
    move-exception v0

    .line 795
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Error building response EapMessage"

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method private blacklist buildEapMessageResponse(Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapIdentifier"    # I
    .param p3, "data"    # [B

    .line 765
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    invoke-virtual {v0, p3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->setupOutboundFragmentation([B)V

    .line 766
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->getNextOutboundFragment()Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;

    move-result-object v0

    .line 769
    .local v0, "result":Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;
    iget-boolean v1, v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;->hasRemainingFragments:Z

    array-length v2, p3

    iget-object v3, v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;->fragmentedData:[B

    .line 772
    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v2, v3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->getEapTtlsTypeData(ZZII[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    move-result-object v1

    .line 769
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getNextOutboundFragment(Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapTtlsRequest"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
    .param p3, "eapIdentifier"    # I

    .line 677
    invoke-virtual {p2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isAcknowledgmentPacket()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 678
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->hasRemainingFragments()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 679
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->getNextOutboundFragment()Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;

    move-result-object v0

    .line 680
    .local v0, "result":Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;
    iget-boolean v1, v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;->hasRemainingFragments:Z

    iget-object v2, v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;->fragmentedData:[B

    .line 683
    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v3, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->getEapTtlsTypeData(ZZII[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    move-result-object v1

    .line 680
    invoke-direct {p0, p1, p3, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 690
    .end local v0    # "result":Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;
    :cond_22
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Received an ack but no packet was in the process of being fragmented."

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 698
    :cond_33
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mOutboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->hasRemainingFragments()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 699
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Received a standard EAP-Request but was expecting an ack to a fragment."

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 708
    :cond_4c
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist handleInboundFragmentation(Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapTtlsRequest"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
    .param p3, "eapIdentifier"    # I

    .line 723
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mInboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    .line 724
    invoke-virtual {v0, p2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->assembleInboundMessage(Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)I

    move-result v0

    .line 726
    .local v0, "fragmentationStatus":I
    packed-switch v0, :pswitch_data_50

    .line 742
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received an unknown fragmentation status when assembling an inbound fragment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 734
    :pswitch_2b
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    const-string v3, "Fragmentation failure: There was an error decoding the fragmented request."

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 728
    :pswitch_3c
    const/4 v1, 0x0

    return-object v1

    .line 730
    :pswitch_3e
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Packet is fragmented. Generating an acknowledgement response."

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    nop

    .line 732
    invoke-static {}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;->getEapTtlsAcknowledgement()Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;

    move-result-object v1

    .line 731
    invoke-direct {p0, p1, p3, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3c
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method blacklist getEapMethod()I
    .registers 2

    .line 134
    const/16 v0, 0x15

    return v0
.end method

.method blacklist handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 139
    invoke-static {p1, p2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method blacklist transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapIdentifier"    # I
    .param p3, "eapError"    # Lcom/android/internal/net/eap/EapResult$EapError;

    .line 645
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v0

    .line 646
    .local v0, "closureResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    iget v1, v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    .line 647
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Failed to close the TLS session"

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    invoke-direct {v1, p0}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 649
    return-object p3

    .line 652
    :cond_1b
    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Lcom/android/internal/net/eap/EapResult$EapError;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 653
    iget-object v1, v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    array-length v1, v1

    iget-object v2, v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    .line 656
    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->getEapTtlsTypeData(ZZII[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    move-result-object v1

    .line 653
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1
.end method
