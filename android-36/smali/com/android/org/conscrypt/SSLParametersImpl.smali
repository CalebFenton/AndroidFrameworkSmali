.class final Lcom/android/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;,
        Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static volatile blacklist defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile blacklist defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile blacklist defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private blacklist algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field blacklist applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

.field blacklist applicationProtocols:[B

.field blacklist channelIdEnabled:Z

.field private final blacklist clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private blacklist client_mode:Z

.field private blacklist ctVerificationEnabled:Z

.field private blacklist enable_session_creation:Z

.field blacklist enabledCipherSuites:[Ljava/lang/String;

.field blacklist enabledProtocols:[Ljava/lang/String;

.field private blacklist endpointIdentificationAlgorithm:Ljava/lang/String;

.field blacklist isEnabledProtocolsFiltered:Z

.field private blacklist need_client_auth:Z

.field blacklist ocspResponse:[B

.field private final blacklist pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field blacklist sctExtension:[B

.field private final blacklist serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field private blacklist sniMatchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

.field private final blacklist spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

.field private blacklist useCipherSuitesOrder:Z

.field blacklist useSessionTickets:Z

.field private blacklist useSni:Ljava/lang/Boolean;

.field private blacklist want_client_auth:Z

.field private final blacklist x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final greylist x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 534
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lcom/android/org/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/Spake2PlusTrustManager;Lcom/android/org/conscrypt/Spake2PlusKeyManager;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 11
    .param p1, "clientSessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p2, "serverSessionContext"    # Lcom/android/org/conscrypt/ServerSessionContext;
    .param p3, "x509KeyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p4, "pskKeyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p5, "x509TrustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p6, "spake2PlusTrustManager"    # Lcom/android/org/conscrypt/Spake2PlusTrustManager;
    .param p7, "spake2PlusKeyManager"    # Lcom/android/org/conscrypt/Spake2PlusKeyManager;
    .param p8, "sslParams"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 109
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 205
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 206
    iput-object p2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 207
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 208
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 209
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 210
    iput-object p7, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    .line 211
    iput-object p6, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    .line 213
    nop

    .line 214
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    move-object v0, v1

    goto :goto_2f

    :cond_27
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_2f
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 215
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 216
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 217
    move-object v0, v1

    goto :goto_43

    .line 218
    :cond_3b
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_43
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 219
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 220
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 221
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 222
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 223
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 224
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 225
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 226
    nop

    .line 227
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-nez v0, :cond_68

    move-object v0, v1

    goto :goto_70

    :cond_68
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_70
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 228
    nop

    .line 229
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-nez v0, :cond_79

    move-object v0, v1

    goto :goto_81

    :cond_79
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_81
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 230
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    if-nez v0, :cond_88

    .line 231
    goto :goto_91

    .line 232
    :cond_88
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_91
    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 233
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 234
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 235
    iget-object v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 236
    iget-boolean v0, p8, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 237
    return-void
.end method

.method constructor blacklist <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .registers 12
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .param p4, "clientSessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p5, "serverSessionContext"    # Lcom/android/org/conscrypt/ServerSessionContext;
    .param p6, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 109
    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 132
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 133
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 135
    const/4 v2, 0x0

    if-nez p1, :cond_23

    .line 136
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 138
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 139
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    goto :goto_53

    .line 141
    :cond_23
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 142
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 143
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstSpake2PlusKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    .line 144
    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    if-eqz v3, :cond_53

    .line 145
    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v3, :cond_4b

    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    if-nez v3, :cond_4b

    .line 150
    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->isClient()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    goto :goto_53

    .line 146
    :cond_4b
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Spake2PlusManagers should not be set with X509KeyManager, x509TrustManager or PSKKeyManager"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_53
    :goto_53
    if-nez p2, :cond_5e

    .line 156
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 157
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    goto :goto_7b

    .line 159
    :cond_5e
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 160
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstSpake2PlusTrustManager([Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    .line 161
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v2, :cond_73

    goto :goto_7b

    .line 162
    :cond_73
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Spake2PlusTrustManager should not be set with X509TrustManager"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_7b
    :goto_7b
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    if-eqz v2, :cond_81

    move v2, v0

    goto :goto_82

    :cond_81
    move v2, v1

    :goto_82
    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    if-eqz v3, :cond_88

    move v3, v0

    goto :goto_89

    :cond_88
    move v3, v1

    :goto_89
    if-ne v2, v3, :cond_f8

    .line 172
    if-nez p6, :cond_9a

    .line 173
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getDefaultProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    goto :goto_d1

    .line 175
    :cond_9a
    nop

    .line 176
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isTlsV1Filtered()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 177
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SSLv3"

    aput-object v3, v2, v1

    const-string v3, "TLSv1"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    aput-object v4, v2, v3

    goto :goto_b4

    .line 181
    :cond_b2
    new-array v2, v1, [Ljava/lang/String;

    .line 176
    :goto_b4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p6, v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "filteredProtocols":[Ljava/lang/String;
    array-length v3, p6

    array-length v4, v2

    if-eq v3, v4, :cond_c2

    move v3, v0

    goto :goto_c3

    :cond_c2
    move v3, v1

    :goto_c3
    iput-boolean v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 183
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 185
    .end local v2    # "filteredProtocols":[Ljava/lang/String;
    :goto_d1
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_dc

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_da

    goto :goto_dc

    :cond_da
    move v2, v1

    goto :goto_dd

    :cond_dc
    :goto_dc
    move v2, v0

    .line 186
    .local v2, "x509CipherSuitesNeeded":Z
    :goto_dd
    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_e2

    goto :goto_e3

    :cond_e2
    move v0, v1

    .line 187
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_e3
    nop

    .line 188
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSpake()Z

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZZ)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSpake()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 194
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->initSpake()V

    .line 196
    :cond_f7
    return-void

    .line 167
    .end local v0    # "pskCipherSuitesNeeded":Z
    .end local v2    # "x509CipherSuitesNeeded":Z
    :cond_f8
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Spake2PlusTrustManager and Spake2PlusKeyManager should be set together"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 614
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 616
    .local v1, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 617
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 618
    .local v2, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 619
    .local v3, "result":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_17

    .line 623
    return-object v3

    .line 620
    :cond_17
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 621
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_34} :catch_42
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_34} :catch_3b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_34} :catch_34

    .line 628
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v2    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_34
    move-exception v0

    .line 629
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 626
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_3b
    move-exception v0

    .line 627
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 624
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_42
    move-exception v0

    .line 625
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 692
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 694
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 695
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 696
    .local v2, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 697
    .local v3, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v3, :cond_1a

    .line 702
    return-object v3

    .line 698
    :cond_1a
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 700
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_3e
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_37} :catch_37

    .line 705
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_37
    move-exception v0

    .line 706
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 703
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_3e
    move-exception v0

    .line 704
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;
    .registers 7
    .param p0, "cipherSuites"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 522
    .local p1, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_27

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_27

    .line 525
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .local v0, "newCipherSuites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 527
    .local v3, "cipherSuite":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 528
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v3    # "cipherSuite":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 531
    :cond_1e
    sget-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 523
    .end local v0    # "newCipherSuites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    :goto_27
    return-object p0
.end method

.method private static blacklist filterFromProtocols([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .registers 7
    .param p0, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 508
    .local p1, "obsoleteProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    aget-object v0, p0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 509
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 512
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "newProtocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    :goto_16
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    .line 514
    .local v3, "protocol":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 515
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 518
    :cond_26
    sget-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static blacklist findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;
    .registers 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 650
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    .line 651
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_e

    .line 652
    move-object v0, v2

    check-cast v0, Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0

    .line 653
    :cond_e
    if-eqz v2, :cond_16

    .line 655
    :try_start_10
    invoke-static {v2}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    .line 656
    :catch_15
    move-exception v3

    .line 650
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 661
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist findFirstSpake2PlusKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/Spake2PlusKeyManager;
    .registers 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 668
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 669
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    if-eqz v3, :cond_e

    .line 670
    move-object v0, v2

    check-cast v0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    return-object v0

    .line 668
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 673
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist findFirstSpake2PlusTrustManager([Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/Spake2PlusTrustManager;
    .registers 5
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .line 726
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 727
    .local v2, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v2, Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    if-eqz v3, :cond_e

    .line 728
    move-object v0, v2

    check-cast v0, Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    return-object v0

    .line 726
    .end local v2    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 731
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .registers 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 637
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 638
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_e

    .line 639
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    return-object v0

    .line 637
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 642
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .line 714
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 715
    .local v2, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_e

    .line 716
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 714
    .end local v2    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 719
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 253
    .local v0, "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_1a

    .line 255
    new-instance v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    new-instance v5, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v5}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    new-instance v6, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v6}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    move-object v0, v1

    sput-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 262
    :cond_1a
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    return-object v1
.end method

.method private static blacklist getDefaultCipherSuites(ZZZ)[Ljava/lang/String;
    .registers 6
    .param p0, "x509CipherSuitesNeeded"    # Z
    .param p1, "pskCipherSuitesNeeded"    # Z
    .param p2, "spake2PlusCipherSuitesNeeded"    # Z

    .line 771
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    if-eqz p0, :cond_26

    .line 773
    if-eqz p1, :cond_17

    .line 780
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    sget-object v2, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :cond_17
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 790
    :cond_26
    if-eqz p1, :cond_37

    .line 792
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 797
    :cond_37
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 606
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_b

    .line 608
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 610
    :cond_b
    return-object v0
.end method

.method static greylist getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 682
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_b

    .line 684
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 686
    :cond_b
    return-object v0
.end method

.method private blacklist isSniEnabledByDefault()Z
    .registers 5

    .line 542
    const-string v0, "true"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "jsse.enableSNIExtension"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "enableSNI":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 544
    return v1

    .line 545
    :cond_10
    const-string v0, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 546
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/SSLParametersImpl;
    throw v0
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_22} :catch_22

    .line 551
    .end local v2    # "enableSNI":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/org/conscrypt/SSLParametersImpl;
    :catch_22
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/SecurityException;
    return v1
.end method


# virtual methods
.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 588
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 589
    :catch_5
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method blacklist cloneWithSpake()Lcom/android/org/conscrypt/SSLParametersImpl;
    .registers 10

    .line 600
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v6, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusTrustManager:Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    iget-object v7, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>(Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lcom/android/org/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/Spake2PlusTrustManager;Lcom/android/org/conscrypt/Spake2PlusKeyManager;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method blacklist cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lcom/android/org/conscrypt/SSLParametersImpl;
    .registers 11
    .param p1, "newTrustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 595
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    iget-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p0

    move-object v5, p1

    .end local p1    # "newTrustManager":Ljavax/net/ssl/X509TrustManager;
    .local v5, "newTrustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>(Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lcom/android/org/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/Spake2PlusTrustManager;Lcom/android/org/conscrypt/Spake2PlusKeyManager;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method blacklist getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .registers 2

    .line 758
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v0
.end method

.method blacklist getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    return-object v0
.end method

.method blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method blacklist getEnableSessionCreation()Z
    .registers 2

    .line 454
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method blacklist getEnabledCipherSuites()[Ljava/lang/String;
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 321
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    filled-new-array {v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1b
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method blacklist getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method blacklist getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getNeedClientAuth()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method blacklist getOCSPResponse()[B
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-object v0
.end method

.method blacklist getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method blacklist getSNIMatchers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    if-nez v0, :cond_6

    .line 748
    const/4 v0, 0x0

    return-object v0

    .line 750
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method blacklist getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method blacklist getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 269
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    :goto_9
    return-object v0
.end method

.method blacklist getSpake2PlusKeyManager()Lcom/android/org/conscrypt/Spake2PlusKeyManager;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    return-object v0
.end method

.method blacklist getUseCipherSuitesOrder()Z
    .registers 2

    .line 743
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return v0
.end method

.method blacklist getUseClientMode()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method blacklist getUseSni()Z
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    :goto_f
    return v0
.end method

.method blacklist getWantClientAuth()Z
    .registers 2

    .line 438
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method blacklist getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method greylist-max-r getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method blacklist initSpake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->initSpake(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 247
    nop

    .line 248
    return-void

    .line 245
    :catch_9
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/KeyManagementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spake initialization failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist isCTVerificationEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 805
    if-nez p1, :cond_4

    .line 806
    const/4 v0, 0x0

    return v0

    .line 810
    :cond_4
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    if-eqz v0, :cond_a

    .line 811
    const/4 v0, 0x1

    return v0

    .line 813
    :cond_a
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method blacklist isSpake()Z
    .registers 2

    .line 817
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->spake2PlusKeyManager:Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .registers 2
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    .line 762
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 763
    return-void
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 2
    .param p1, "applicationProtocolSelector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 382
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 383
    return-void
.end method

.method blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 370
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->encodeProtocols([Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 371
    return-void
.end method

.method blacklist setCTVerificationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 481
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 482
    return-void
.end method

.method blacklist setEnableSessionCreation(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 446
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 447
    return-void
.end method

.method blacklist setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 334
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 335
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 337
    return-void
.end method

.method greylist-max-r setEnabledProtocols([Ljava/lang/String;)V
    .registers 7
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 351
    if-eqz p1, :cond_3b

    .line 354
    nop

    .line 355
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isTlsV1Filtered()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 356
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1e

    .line 357
    :cond_e
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "SSLv3"

    aput-object v3, v0, v2

    const-string v3, "TLSv1"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    aput-object v4, v0, v3

    .line 355
    :goto_1e
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "filteredProtocols":[Ljava/lang/String;
    array-length v3, p1

    array-length v4, v0

    if-eq v3, v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 363
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 364
    return-void

    .line 352
    .end local v0    # "filteredProtocols":[Ljava/lang/String;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    .line 739
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 740
    return-void
.end method

.method blacklist setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 411
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 414
    return-void
.end method

.method blacklist setOCSPResponse([B)V
    .registers 2
    .param p1, "response"    # [B

    .line 495
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 496
    return-void
.end method

.method blacklist setSCTExtension([B)V
    .registers 2
    .param p1, "extension"    # [B

    .line 488
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 489
    return-void
.end method

.method blacklist setSNIMatchers(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    .line 754
    .local p1, "sniMatchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    .line 755
    return-void
.end method

.method blacklist setUseCipherSuitesOrder(Z)V
    .registers 2
    .param p1, "useCipherSuitesOrder"    # Z

    .line 766
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 767
    return-void
.end method

.method blacklist setUseClientMode(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .line 396
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 397
    return-void
.end method

.method blacklist setUseSessionTickets(Z)V
    .registers 2
    .param p1, "useSessionTickets"    # Z

    .line 458
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 459
    return-void
.end method

.method blacklist setUseSni(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 466
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 467
    return-void
.end method

.method blacklist setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 428
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 431
    return-void
.end method
