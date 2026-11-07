.class public Lcom/android/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final blacklist GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/okhttp/internal/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/okhttp/internal/Platform;

    invoke-direct {v1}, Lcom/android/okhttp/internal/Platform;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const-string v5, "setUseSessionTickets"

    invoke-direct {v0, v3, v5, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    .line 96
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v5, "setHostname"

    invoke-direct {v0, v3, v5, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    .line 99
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-string v2, "getAlpnSelectedProtocol"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [B

    invoke-direct {v0, v6, v2, v5}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    .line 102
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v6, v1, v4

    const-string v2, "setAlpnProtocols"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist concatLengthPrefixed(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2c

    .line 259
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/Protocol;

    .line 260
    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    if-ne v3, v4, :cond_17

    goto :goto_29

    .line 261
    :cond_17
    invoke-virtual {v3}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 262
    invoke-virtual {v3}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 264
    :cond_2c
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static greylist get()Lcom/android/okhttp/internal/Platform;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 58
    sget-object v0, Lcom/android/okhttp/internal/Platform;->INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/Platform;

    return-object v0
.end method

.method public static blacklist getAndSetForTest(Lcom/android/okhttp/internal/Platform;)Lcom/android/okhttp/internal/Platform;
    .registers 2

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    sget-object v0, Lcom/android/okhttp/internal/Platform;->INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/internal/Platform;

    return-object p0
.end method

.method private static blacklist getProtocolIds(Ljava/util/List;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 246
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 247
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/Protocol;

    invoke-virtual {v2}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-object v0
.end method

.method private static blacklist isPlatformSocket(Ljavax/net/ssl/SSLSocket;)Z
    .registers 2

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.org.conscrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_2f

    .line 220
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 222
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 223
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_23

    .line 224
    :cond_1e
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_22} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_22} :catch_24

    return-object p0

    :cond_23
    :goto_23
    return-object v1

    .line 227
    :catch_24
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 218
    :catch_2a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 232
    :cond_2f
    const-string v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 233
    invoke-static {p0, v2, v0}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 234
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_42
    return-object v1
.end method


# virtual methods
.method public blacklist afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p0

    if-eqz p2, :cond_37

    .line 124
    invoke-static {p1}, Landroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 125
    invoke-static {p1, v0}, Landroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    goto :goto_1c

    .line 127
    :cond_11
    sget-object v0, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_1c
    :try_start_1c
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_28} :catch_28

    .line 137
    :catch_28
    invoke-static {p1}, Lcom/android/okhttp/internal/Platform;->isPlatformSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 138
    sget-object v0, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_37
    invoke-static {p3}, Lcom/android/okhttp/internal/Platform;->getProtocolIds(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/android/okhttp/internal/Platform;->isPlatformSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result p2

    if-nez p2, :cond_57

    sget-object p2, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {p2, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 146
    invoke-static {p3}, Lcom/android/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 147
    invoke-virtual {p2, p1, p3}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_57
    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public blacklist connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public blacklist getPrefix()Ljava/lang/String;
    .registers 1

    .line 187
    const-string p0, "X-Android"

    return-object p0
.end method

.method public blacklist getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 4

    .line 162
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 167
    :catch_5
    sget-object p0, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    .line 172
    :cond_f
    sget-object p0, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 173
    invoke-virtual {p0, p1, v1}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_24

    .line 175
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_24
    return-object v0
.end method

.method public greylist logW(Ljava/lang/String;)V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 107
    invoke-static {p1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist tagSocket(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 111
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    return-void
.end method

.method public blacklist trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 3

    .line 199
    :try_start_0
    const-string p0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_17

    .line 203
    const-string v0, "sslParameters"

    invoke-static {p1, p0, v0}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 204
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v0, "x509TrustManager"

    invoke-static {p0, p1, v0}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    return-object p0

    :catch_17
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 2

    .line 213
    new-instance p0, Lcom/android/okhttp/internal/tls/RealTrustRootIndex;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/tls/RealTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object p0
.end method

.method public blacklist untagSocket(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 115
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    return-void
.end method
