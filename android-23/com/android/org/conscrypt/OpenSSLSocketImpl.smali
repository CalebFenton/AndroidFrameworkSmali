.class public Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;,
        Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final DBG_STATE:Z = false

.field private static final STATE_CLOSED:I = 0x5

.field private static final STATE_HANDSHAKE_COMPLETED:I = 0x2

.field private static final STATE_HANDSHAKE_STARTED:I = 0x1

.field private static final STATE_NEW:I = 0x0

.field private static final STATE_READY:I = 0x4

.field private static final STATE_READY_HANDSHAKE_CUT_THROUGH:I = 0x3


# instance fields
.field private final autoClose:Z

.field channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

.field private peerHostname:Ljava/lang/String;

.field private final peerPort:I

.field private readTimeoutMilliseconds:I

.field private resolvedHostname:Ljava/lang/String;

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private writeTimeoutMilliseconds:I


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 177
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    #@5
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@c
    .line 106
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@14
    .line 172
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@16
    .line 173
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@18
    .line 175
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 178
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 179
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1f
    .line 180
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@21
    .line 181
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@23
    .line 182
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    .line 177
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 187
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    #@4
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@b
    .line 106
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@d
    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@13
    .line 172
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@15
    .line 173
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@17
    .line 175
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 188
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 189
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1e
    .line 190
    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@20
    .line 191
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@22
    .line 192
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@24
    .line 186
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    #@4
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@b
    .line 106
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@d
    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@13
    .line 172
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@15
    .line 173
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@17
    .line 175
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 210
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 211
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1e
    .line 212
    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@20
    .line 213
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@22
    .line 214
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@24
    .line 208
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 197
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    #@5
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@c
    .line 106
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@14
    .line 172
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@16
    .line 173
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@18
    .line 175
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 198
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 199
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1f
    .line 200
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@21
    .line 201
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@23
    .line 202
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    .line 196
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@5
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@c
    .line 106
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@14
    .line 172
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@16
    .line 173
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@18
    .line 175
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 221
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 222
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1f
    .line 223
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@21
    .line 224
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@23
    .line 225
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    .line 219
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 232
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    #@4
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@b
    .line 106
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@d
    .line 150
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@13
    .line 172
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@15
    .line 173
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@17
    .line 175
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 234
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 235
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1e
    .line 236
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@20
    .line 237
    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@22
    .line 238
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@24
    .line 233
    return-void
.end method

.method private assertReadableOrWriteableState()V
    .locals 3

    #@0
    .prologue
    .line 615
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@7
    const/4 v1, 0x3

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 616
    :cond_0
    return-void

    #@b
    .line 619
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Invalid state: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@26
    throw v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 247
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 245
    :cond_0
    return-void
.end method

.method private closeUnderlyingSocket()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@2
    if-eq v0, p0, :cond_2

    #@4
    .line 1144
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@a
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1142
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@13
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@16
    goto :goto_0

    #@17
    .line 1148
    :cond_2
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1149
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    #@20
    goto :goto_0
.end method

.method private free()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1155
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1156
    return-void

    #@9
    .line 1158
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    #@e
    .line 1159
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@10
    .line 1160
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@12
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@15
    .line 1154
    return-void
.end method

.method private getHostname()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 423
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->resolvedHostname:Ljava/lang/String;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 426
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    .line 427
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    #@11
    .line 428
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->resolvedHostname:Ljava/lang/String;

    #@17
    .line 431
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->resolvedHostname:Ljava/lang/String;

    #@19
    return-object v1
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 6

    #@0
    .prologue
    .line 508
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@2
    if-eqz v5, :cond_0

    #@4
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 507
    :cond_0
    return-void

    #@d
    .line 511
    :cond_1
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    #@f
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@11
    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    #@14
    .line 512
    .local v1, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@16
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v3

    #@1a
    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    #@26
    .line 514
    .local v2, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_0
    invoke-interface {v2, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 515
    :catch_0
    move-exception v0

    #@2b
    .line 521
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v4

    #@2f
    .line 522
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@32
    move-result-object v5

    #@33
    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@36
    goto :goto_0
.end method

.method private shutdownAndFreeSslNative()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1126
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 1127
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@9
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@b
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@e
    move-result-object v1

    #@f
    invoke-static {v2, v3, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1137
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    #@15
    .line 1138
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@18
    .line 1124
    :goto_0
    return-void

    #@19
    .line 1129
    :catch_0
    move-exception v0

    #@1a
    .line 1137
    .local v0, "ignored":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    #@1d
    .line 1138
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@20
    goto :goto_0

    #@21
    .line 1136
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@22
    .line 1137
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    #@25
    .line 1138
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@28
    .line 1136
    throw v1
.end method

.method private waitForHandshake()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    .line 624
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->startHandshake()V

    #@4
    .line 626
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 627
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@9
    const/4 v4, 0x4

    #@a
    if-eq v2, v4, :cond_0

    #@c
    .line 628
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    const/4 v4, 0x3

    #@f
    if-eq v2, v4, :cond_0

    #@11
    .line 629
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-eq v2, v5, :cond_0

    #@15
    .line 631
    :try_start_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@17
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 632
    :catch_0
    move-exception v0

    #@1c
    .line 633
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@23
    .line 634
    new-instance v1, Ljava/io/IOException;

    #@25
    const-string/jumbo v2, "Interrupted waiting for handshake"

    #@28
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    .line 635
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2e
    .line 637
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 626
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2

    #@32
    .line 641
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@34
    if-ne v2, v5, :cond_1

    #@36
    .line 642
    new-instance v2, Ljava/net/SocketException;

    #@38
    const-string/jumbo v4, "Socket is closed"

    #@3b
    invoke-direct {v2, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    :cond_1
    monitor-exit v3

    #@40
    .line 623
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    .line 801
    if-nez p1, :cond_0

    #@2
    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Provided listener is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 805
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@16
    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 800
    return-void
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1257
    const/4 v0, 0x0

    #@1
    invoke-interface {p1, p3, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1267
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1251
    const/4 v0, 0x0

    #@1
    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    #@0
    .prologue
    .line 1262
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    .line 444
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v6, p0

    #@7
    .line 443
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    #@a
    .line 442
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    .line 1066
    const/4 v1, 0x0

    #@2
    .line 1067
    .local v1, "sslInputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    const/4 v2, 0x0

    #@3
    .line 1069
    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 1070
    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-ne v3, v5, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 1072
    return-void

    #@c
    .line 1075
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 1076
    .local v0, "oldState":I
    const/4 v3, 0x5

    #@f
    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@11
    .line 1078
    if-nez v0, :cond_1

    #@13
    .line 1082
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@16
    .line 1084
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@18
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit v4

    #@1c
    .line 1085
    return-void

    #@1d
    .line 1088
    :cond_1
    const/4 v3, 0x4

    #@1e
    if-eq v0, v3, :cond_2

    #@20
    const/4 v3, 0x3

    #@21
    if-eq v0, v3, :cond_2

    #@23
    .line 1093
    :try_start_2
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@25
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    #@28
    .line 1095
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    monitor-exit v4

    #@2e
    .line 1096
    return-void

    #@2f
    .line 1099
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@31
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    #@34
    .line 1102
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@36
    .line 1103
    .local v1, "sslInputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    monitor-exit v4

    #@39
    .line 1107
    if-nez v1, :cond_3

    #@3b
    if-eqz v2, :cond_4

    #@3d
    .line 1108
    :cond_3
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@3f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    #@42
    .line 1114
    :cond_4
    if-eqz v1, :cond_5

    #@44
    .line 1115
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->awaitPendingOps()V

    #@47
    .line 1117
    :cond_5
    if-eqz v2, :cond_6

    #@49
    .line 1118
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->awaitPendingOps()V

    #@4c
    .line 1121
    :cond_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V

    #@4f
    .line 1063
    return-void

    #@50
    .line 1069
    .end local v0    # "oldState":I
    .end local v1    # "sslInputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :catchall_0
    move-exception v3

    #@51
    monitor-exit v4

    #@52
    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1183
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 1185
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1187
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@f
    .line 1164
    return-void

    #@10
    .line 1186
    :catchall_0
    move-exception v0

    #@11
    .line 1187
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@14
    .line 1186
    throw v0
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 2

    #@0
    .prologue
    .line 1213
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_alpn_selected(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChannelId()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 921
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Client mode"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 924
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 925
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@14
    const/4 v2, 0x4

    #@15
    if-eq v0, v2, :cond_1

    #@17
    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    .line 927
    const-string/jumbo v2, "Channel ID is only available after handshake completes"

    #@1c
    .line 926
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 924
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    :cond_1
    monitor-exit v1

    #@24
    .line 930
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@26
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(J)[B

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 1194
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@b
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    .line 571
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 572
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@8
    const/4 v3, 0x5

    #@9
    if-ne v1, v3, :cond_0

    #@b
    .line 573
    new-instance v1, Ljava/net/SocketException;

    #@d
    const-string/jumbo v3, "Socket is closed."

    #@10
    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 571
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1

    #@17
    .line 576
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 577
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@20
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@22
    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .local v0, "returnVal":Ljava/io/InputStream;
    monitor-exit v2

    #@25
    .line 586
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    #@28
    .line 587
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 2

    #@0
    .prologue
    .line 1205
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_npn_negotiated_protocol(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    .line 595
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 596
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@8
    const/4 v3, 0x5

    #@9
    if-ne v1, v3, :cond_0

    #@b
    .line 597
    new-instance v1, Ljava/net/SocketException;

    #@d
    const-string/jumbo v3, "Socket is closed."

    #@10
    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 595
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1

    #@17
    .line 600
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 601
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@20
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    #@22
    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .local v0, "returnVal":Ljava/io/OutputStream;
    monitor-exit v2

    #@25
    .line 610
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    #@28
    .line 611
    return-object v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1272
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPort()I
    .locals 2

    #@0
    .prologue
    .line 436
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@c
    goto :goto_0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    #@0
    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 788
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@9
    return-object v1

    #@a
    .line 789
    :catch_0
    move-exception v0

    #@b
    .line 792
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1035
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@2
    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1051
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@2
    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 838
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 853
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    #@0
    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onSSLStateChange(JII)V
    .locals 4
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "type"    # I
    .param p4, "val"    # I

    #@0
    .prologue
    .line 462
    const/16 v1, 0x20

    #@2
    if-eq p3, v1, :cond_0

    #@4
    .line 463
    return-void

    #@5
    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 467
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@a
    const/4 v3, 0x1

    #@b
    if-ne v1, v3, :cond_1

    #@d
    .line 475
    const/4 v1, 0x2

    #@e
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 476
    return-void

    #@12
    .line 477
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v1, v3, :cond_3

    #@17
    :cond_2
    monitor-exit v2

    #@18
    .line 488
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@1a
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    #@1d
    .line 490
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1f
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 491
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@27
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    #@2a
    move-result-object v0

    #@2b
    .line 493
    .local v0, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :goto_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@30
    .line 496
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    #@33
    .line 498
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v2

    #@36
    .line 501
    const/4 v1, 0x4

    #@37
    :try_start_2
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@39
    .line 503
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3e
    monitor-exit v2

    #@3f
    .line 461
    return-void

    #@40
    .line 480
    .end local v0    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_3
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    const/4 v3, 0x5

    #@43
    if-ne v1, v3, :cond_2

    #@45
    monitor-exit v2

    #@46
    .line 482
    return-void

    #@47
    .line 466
    :catchall_0
    move-exception v1

    #@48
    monitor-exit v2

    #@49
    throw v1

    #@4a
    .line 492
    :cond_4
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4c
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    #@4f
    move-result-object v0

    #@50
    .restart local v0    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_0

    #@51
    .line 498
    :catchall_1
    move-exception v1

    #@52
    monitor-exit v2

    #@53
    throw v1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    .line 813
    if-nez p1, :cond_0

    #@2
    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Provided listener is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 818
    const-string/jumbo v1, "Provided listener is not registered"

    #@14
    .line 817
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 821
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    .line 822
    const-string/jumbo v1, "Provided listener is not registered"

    #@25
    .line 821
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 812
    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1019
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "Method sendUrgentData() is not supported."

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setAlpnProtocols([B)V
    .locals 2
    .param p1, "alpnProtocols"    # [B

    #@0
    .prologue
    .line 1243
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "alpnProtocols.length == 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@10
    iput-object p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    #@12
    .line 1242
    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 896
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Client mode"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 899
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 900
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    .line 902
    const-string/jumbo v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    #@1b
    .line 901
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 899
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0

    #@22
    :cond_1
    monitor-exit v1

    #@23
    .line 906
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@27
    .line 894
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 7
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 946
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 947
    new-instance v3, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v4, "Server mode"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 950
    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@13
    monitor-enter v4

    #@14
    .line 951
    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 952
    new-instance v3, Ljava/lang/IllegalStateException;

    #@1a
    .line 953
    const-string/jumbo v5, "Could not change Channel ID private key after the initial handshake has begun."

    #@1d
    .line 952
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 950
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3

    #@24
    :cond_1
    monitor-exit v4

    #@25
    .line 958
    if-nez p1, :cond_2

    #@27
    .line 959
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@29
    iput-boolean v6, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@2b
    .line 960
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2d
    .line 945
    :goto_0
    return-void

    #@2e
    .line 962
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@30
    const/4 v4, 0x1

    #@31
    iput-boolean v4, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@33
    .line 964
    const/4 v2, 0x0

    #@34
    .line 965
    .local v2, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_1
    instance-of v3, p1, Ljava/security/interfaces/ECKey;

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 966
    move-object v0, p1

    #@39
    check-cast v0, Ljava/security/interfaces/ECKey;

    #@3b
    move-object v3, v0

    #@3c
    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@3f
    move-result-object v2

    #@40
    .line 968
    .end local v2    # "ecParams":Ljava/security/spec/ECParameterSpec;
    :cond_3
    if-nez v2, :cond_4

    #@42
    .line 971
    const-string/jumbo v3, "prime256v1"

    #@45
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    #@4c
    move-result-object v2

    #@4d
    .line 974
    :cond_4
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@50
    move-result-object v3

    #@51
    .line 973
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    goto :goto_0

    #@54
    .line 975
    :catch_0
    move-exception v1

    #@55
    .local v1, "e":Ljava/security/InvalidKeyException;
    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    #@5
    .line 832
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@5
    .line 847
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    #@5
    .line 862
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1059
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@2
    .line 1058
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    #@8
    .line 882
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@a
    .line 880
    return-void

    #@b
    .line 881
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    #@0
    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    #@5
    .line 1008
    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 2
    .param p1, "npnProtocols"    # [B

    #@0
    .prologue
    .line 1226
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "npnProtocols.length == 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@10
    iput-object p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@12
    .line 1225
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "Methods sendUrgentData, setOOBInline are not supported."

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "readTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1029
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    #@3
    .line 1030
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@5
    .line 1028
    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 2
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1042
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@2
    .line 1044
    int-to-long v0, p1

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    #@6
    .line 1041
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 989
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 991
    const-string/jumbo v2, "Could not change the mode after the initial handshake has begun."

    #@c
    .line 990
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 988
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 994
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@16
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    #@19
    .line 987
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 1
    .param p1, "useSessionTickets"    # Z

    #@0
    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    #@4
    .line 871
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    #@5
    .line 1013
    return-void
.end method

.method public startHandshake()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    .line 261
    move-object/from16 v0, p0

    #@5
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@7
    monitor-enter v6

    #@8
    .line 262
    :try_start_0
    move-object/from16 v0, p0

    #@a
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@c
    if-nez v3, :cond_3

    #@e
    .line 263
    const/4 v3, 0x1

    #@f
    move-object/from16 v0, p0

    #@11
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v6

    #@14
    .line 272
    const/16 v32, 0x400

    #@16
    .line 273
    .local v32, "seedLengthInBytes":I
    move-object/from16 v0, p0

    #@18
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1a
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    #@1d
    move-result-object v31

    #@1e
    .line 274
    .local v31, "secureRandom":Ljava/security/SecureRandom;
    if-nez v31, :cond_4

    #@20
    .line 275
    const-string/jumbo v3, "/dev/urandom"

    #@23
    const-wide/16 v6, 0x400

    #@25
    invoke-static {v3, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    #@28
    .line 280
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2c
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@2f
    move-result v11

    #@30
    .line 282
    .local v11, "client":Z
    const-wide/16 v6, 0x0

    #@32
    move-object/from16 v0, p0

    #@34
    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@36
    .line 283
    const/16 v28, 0x1

    #@38
    .line 285
    .local v28, "releaseResources":Z
    :try_start_1
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@3c
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@3f
    move-result-object v33

    #@40
    .line 286
    .local v33, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    move-object/from16 v0, v33

    #@42
    iget-wide v4, v0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    #@44
    .line 287
    .local v4, "sslCtxNativePointer":J
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    #@47
    move-result-wide v6

    #@48
    move-object/from16 v0, p0

    #@4a
    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@4c
    .line 288
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@50
    const-string/jumbo v6, "close"

    #@53
    invoke-virtual {v3, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@56
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getEnableSessionCreation()Z

    #@59
    move-result v24

    #@5a
    .line 291
    .local v24, "enableSessionCreation":Z
    if-nez v24, :cond_0

    #@5c
    .line 292
    move-object/from16 v0, p0

    #@5e
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@60
    move/from16 v0, v24

    #@62
    invoke-static {v6, v7, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    #@65
    .line 296
    :cond_0
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@69
    .line 297
    move-object/from16 v0, p0

    #@6b
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@6d
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    #@74
    move-result v9

    #@75
    .line 296
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@78
    move-result-object v18

    #@79
    .line 298
    .local v18, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    move-object/from16 v0, p0

    #@7b
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@81
    .line 299
    move-object/from16 v0, p0

    #@83
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@85
    move-object/from16 v8, p0

    #@87
    move-object/from16 v9, p0

    #@89
    .line 298
    invoke-virtual/range {v3 .. v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    #@8c
    .line 300
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@90
    move-object/from16 v0, p0

    #@92
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@94
    invoke-virtual {v3, v6, v7}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    #@97
    .line 301
    move-object/from16 v0, p0

    #@99
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@a3
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    #@a6
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    #@a9
    move-result v29

    #@aa
    .line 305
    .local v29, "savedReadTimeoutMilliseconds":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoWriteTimeout()I

    #@ad
    move-result v30

    #@ae
    .line 306
    .local v30, "savedWriteTimeoutMilliseconds":I
    move-object/from16 v0, p0

    #@b0
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@b2
    if-ltz v3, :cond_1

    #@b4
    .line 307
    move-object/from16 v0, p0

    #@b6
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@b8
    move-object/from16 v0, p0

    #@ba
    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    #@bd
    .line 308
    move-object/from16 v0, p0

    #@bf
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@c1
    move-object/from16 v0, p0

    #@c3
    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    #@c6
    .line 311
    :cond_1
    move-object/from16 v0, p0

    #@c8
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@ca
    monitor-enter v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@cb
    .line 312
    :try_start_2
    move-object/from16 v0, p0

    #@cd
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@cf
    const/4 v7, 0x5

    #@d0
    if-ne v6, v7, :cond_5

    #@d2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@d3
    .line 395
    if-eqz v28, :cond_2

    #@d5
    .line 396
    move-object/from16 v0, p0

    #@d7
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@d9
    monitor-enter v6

    #@da
    .line 402
    const/4 v3, 0x5

    #@db
    :try_start_4
    move-object/from16 v0, p0

    #@dd
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@df
    .line 403
    move-object/from16 v0, p0

    #@e1
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@e3
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e6
    monitor-exit v6

    #@e7
    .line 407
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@ea
    .line 313
    :cond_2
    :goto_1
    return-void

    #@eb
    .end local v4    # "sslCtxNativePointer":J
    .end local v11    # "client":Z
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v24    # "enableSessionCreation":Z
    .end local v28    # "releaseResources":Z
    .end local v29    # "savedReadTimeoutMilliseconds":I
    .end local v30    # "savedWriteTimeoutMilliseconds":I
    .end local v31    # "secureRandom":Ljava/security/SecureRandom;
    .end local v32    # "seedLengthInBytes":I
    .end local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_3
    monitor-exit v6

    #@ec
    .line 267
    return-void

    #@ed
    .line 261
    :catchall_0
    move-exception v3

    #@ee
    monitor-exit v6

    #@ef
    throw v3

    #@f0
    .line 277
    .restart local v31    # "secureRandom":Ljava/security/SecureRandom;
    .restart local v32    # "seedLengthInBytes":I
    :cond_4
    const/16 v3, 0x400

    #@f2
    move-object/from16 v0, v31

    #@f4
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    #@f7
    move-result-object v3

    #@f8
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_seed([B)V

    #@fb
    goto/16 :goto_0

    #@fd
    .line 396
    .restart local v4    # "sslCtxNativePointer":J
    .restart local v11    # "client":Z
    .restart local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .restart local v24    # "enableSessionCreation":Z
    .restart local v28    # "releaseResources":Z
    .restart local v29    # "savedReadTimeoutMilliseconds":I
    .restart local v30    # "savedWriteTimeoutMilliseconds":I
    .restart local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_1
    move-exception v3

    #@fe
    monitor-exit v6

    #@ff
    throw v3

    #@100
    .line 408
    :catch_0
    move-exception v25

    #@101
    .local v25, "ignored":Ljava/io/IOException;
    goto :goto_1

    #@102
    .end local v25    # "ignored":Ljava/io/IOException;
    :cond_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@103
    .line 319
    :try_start_7
    move-object/from16 v0, p0

    #@105
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@107
    .line 320
    move-object/from16 v0, p0

    #@109
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@10b
    invoke-static {v3}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@10e
    move-result-object v8

    #@10f
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    #@112
    move-result v10

    #@113
    .line 321
    move-object/from16 v0, p0

    #@115
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@117
    iget-object v12, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@119
    if-eqz v11, :cond_d

    #@11b
    const/4 v13, 0x0

    #@11c
    :goto_2
    move-object/from16 v9, p0

    #@11e
    .line 319
    invoke-static/range {v6 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;IZ[B[B)J
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@121
    move-result-wide v14

    #@122
    .line 352
    .local v14, "sslSessionNativePointer":J
    const/16 v21, 0x0

    #@124
    .line 353
    .local v21, "handshakeCompleted":Z
    :try_start_8
    move-object/from16 v0, p0

    #@126
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@128
    monitor-enter v6
    :try_end_8
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@129
    .line 354
    :try_start_9
    move-object/from16 v0, p0

    #@12b
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    #@12d
    const/4 v7, 0x2

    #@12e
    if-ne v3, v7, :cond_11

    #@130
    .line 355
    const/16 v21, 0x1

    #@132
    :cond_6
    :try_start_a
    monitor-exit v6

    #@133
    .line 361
    move-object/from16 v0, p0

    #@135
    iget-object v13, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@137
    move-object/from16 v0, p0

    #@139
    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@13b
    move-wide/from16 v16, v0

    #@13d
    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@140
    move-result-object v19

    #@141
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    #@144
    move-result v20

    #@145
    .line 361
    invoke-virtual/range {v13 .. v21}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@148
    move-result-object v3

    #@149
    move-object/from16 v0, p0

    #@14b
    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@14d
    .line 365
    move-object/from16 v0, p0

    #@14f
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@151
    if-ltz v3, :cond_7

    #@153
    .line 366
    move-object/from16 v0, p0

    #@155
    move/from16 v1, v29

    #@157
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    #@15a
    .line 367
    move-object/from16 v0, p0

    #@15c
    move/from16 v1, v30

    #@15e
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    #@161
    .line 371
    :cond_7
    if-eqz v21, :cond_8

    #@163
    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    #@166
    .line 375
    :cond_8
    move-object/from16 v0, p0

    #@168
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@16a
    monitor-enter v6
    :try_end_a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@16b
    .line 376
    :try_start_b
    move-object/from16 v0, p0

    #@16d
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@16f
    const/4 v7, 0x5

    #@170
    if-ne v3, v7, :cond_13

    #@172
    const/16 v28, 0x1

    #@174
    .line 378
    :goto_3
    move-object/from16 v0, p0

    #@176
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@178
    const/4 v7, 0x1

    #@179
    if-ne v3, v7, :cond_14

    #@17b
    .line 379
    const/4 v3, 0x3

    #@17c
    move-object/from16 v0, p0

    #@17e
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@180
    .line 384
    :cond_9
    :goto_4
    if-nez v28, :cond_a

    #@182
    .line 387
    move-object/from16 v0, p0

    #@184
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@186
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    #@189
    :cond_a
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@18a
    .line 395
    if-eqz v28, :cond_b

    #@18c
    .line 396
    move-object/from16 v0, p0

    #@18e
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@190
    monitor-enter v6

    #@191
    .line 402
    const/4 v3, 0x5

    #@192
    :try_start_d
    move-object/from16 v0, p0

    #@194
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@196
    .line 403
    move-object/from16 v0, p0

    #@198
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@19a
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    #@19d
    monitor-exit v6

    #@19e
    .line 407
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    #@1a1
    .line 259
    :cond_b
    :goto_5
    return-void

    #@1a2
    .line 311
    .end local v14    # "sslSessionNativePointer":J
    .end local v21    # "handshakeCompleted":Z
    :catchall_2
    move-exception v6

    #@1a3
    :try_start_f
    monitor-exit v3

    #@1a4
    throw v6
    :try_end_f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@1a5
    .line 390
    .end local v4    # "sslCtxNativePointer":J
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v24    # "enableSessionCreation":Z
    .end local v29    # "savedReadTimeoutMilliseconds":I
    .end local v30    # "savedWriteTimeoutMilliseconds":I
    .end local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_1
    move-exception v23

    #@1a6
    .line 391
    .local v23, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_10
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@1a8
    const-string/jumbo v6, "Handshake failed"

    #@1ab
    invoke-direct {v3, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1ae
    move-object/from16 v0, v23

    #@1b0
    invoke-virtual {v3, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1b3
    move-result-object v3

    #@1b4
    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    #@1b6
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@1b7
    .line 393
    .end local v23    # "e":Ljavax/net/ssl/SSLProtocolException;
    :catchall_3
    move-exception v3

    #@1b8
    .line 395
    if-eqz v28, :cond_c

    #@1ba
    .line 396
    move-object/from16 v0, p0

    #@1bc
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1be
    monitor-enter v6

    #@1bf
    .line 402
    const/4 v7, 0x5

    #@1c0
    :try_start_11
    move-object/from16 v0, p0

    #@1c2
    iput v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1c4
    .line 403
    move-object/from16 v0, p0

    #@1c6
    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1c8
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    #@1cb
    monitor-exit v6

    #@1cc
    .line 407
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    #@1cf
    .line 393
    :cond_c
    :goto_6
    throw v3

    #@1d0
    .line 321
    .restart local v4    # "sslCtxNativePointer":J
    .restart local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .restart local v24    # "enableSessionCreation":Z
    .restart local v29    # "savedReadTimeoutMilliseconds":I
    .restart local v30    # "savedWriteTimeoutMilliseconds":I
    .restart local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_d
    :try_start_13
    move-object/from16 v0, p0

    #@1d2
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1d4
    iget-object v13, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    #@1d6
    goto/16 :goto_2

    #@1d8
    .line 326
    :catch_2
    move-exception v22

    #@1d9
    .line 334
    .local v22, "e":Ljavax/net/ssl/SSLException;
    :try_start_14
    move-object/from16 v0, p0

    #@1db
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1dd
    monitor-enter v3
    :try_end_14
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    #@1de
    .line 335
    :try_start_15
    move-object/from16 v0, p0

    #@1e0
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    #@1e2
    const/4 v7, 0x5

    #@1e3
    if-ne v6, v7, :cond_f

    #@1e5
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    #@1e6
    .line 395
    if-eqz v28, :cond_e

    #@1e8
    .line 396
    move-object/from16 v0, p0

    #@1ea
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1ec
    monitor-enter v6

    #@1ed
    .line 402
    const/4 v3, 0x5

    #@1ee
    :try_start_17
    move-object/from16 v0, p0

    #@1f0
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1f2
    .line 403
    move-object/from16 v0, p0

    #@1f4
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1f6
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    #@1f9
    monitor-exit v6

    #@1fa
    .line 407
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3

    #@1fd
    .line 336
    :cond_e
    :goto_7
    return-void

    #@1fe
    .line 396
    :catchall_4
    move-exception v3

    #@1ff
    monitor-exit v6

    #@200
    throw v3

    #@201
    .line 408
    :catch_3
    move-exception v25

    #@202
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto :goto_7

    #@203
    .end local v25    # "ignored":Ljava/io/IOException;
    :cond_f
    :try_start_19
    monitor-exit v3

    #@204
    .line 341
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    #@207
    move-result-object v27

    #@208
    .line 343
    .local v27, "message":Ljava/lang/String;
    const-string/jumbo v3, "unexpected CCS"

    #@20b
    move-object/from16 v0, v27

    #@20d
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@210
    move-result v3

    #@211
    if-eqz v3, :cond_10

    #@213
    .line 344
    const-string/jumbo v3, "ssl_unexpected_ccs: host=%s"

    #@216
    const/4 v6, 0x1

    #@217
    new-array v6, v6, [Ljava/lang/Object;

    #@219
    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@21c
    move-result-object v7

    #@21d
    const/4 v8, 0x0

    #@21e
    aput-object v7, v6, v8

    #@220
    .line 344
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@223
    move-result-object v26

    #@224
    .line 346
    .local v26, "logMessage":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    #@227
    .line 349
    .end local v26    # "logMessage":Ljava/lang/String;
    :cond_10
    throw v22

    #@228
    .line 334
    .end local v27    # "message":Ljava/lang/String;
    :catchall_5
    move-exception v6

    #@229
    monitor-exit v3

    #@22a
    throw v6

    #@22b
    .line 322
    .end local v22    # "e":Ljavax/net/ssl/SSLException;
    :catch_4
    move-exception v2

    #@22c
    .line 323
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v34, Ljavax/net/ssl/SSLHandshakeException;

    #@22e
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@231
    move-result-object v3

    #@232
    move-object/from16 v0, v34

    #@234
    invoke-direct {v0, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@237
    .line 324
    .local v34, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v34

    #@239
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@23c
    .line 325
    throw v34
    :try_end_19
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    #@23d
    .line 356
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v34    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v14    # "sslSessionNativePointer":J
    .restart local v21    # "handshakeCompleted":Z
    :cond_11
    :try_start_1a
    move-object/from16 v0, p0

    #@23f
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    #@241
    const/4 v7, 0x5

    #@242
    if-ne v3, v7, :cond_6

    #@244
    :try_start_1b
    monitor-exit v6
    :try_end_1b
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    #@245
    .line 395
    if-eqz v28, :cond_12

    #@247
    .line 396
    move-object/from16 v0, p0

    #@249
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@24b
    monitor-enter v6

    #@24c
    .line 402
    const/4 v3, 0x5

    #@24d
    :try_start_1c
    move-object/from16 v0, p0

    #@24f
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@251
    .line 403
    move-object/from16 v0, p0

    #@253
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@255
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    #@258
    monitor-exit v6

    #@259
    .line 407
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5

    #@25c
    .line 357
    :cond_12
    :goto_8
    return-void

    #@25d
    .line 396
    :catchall_6
    move-exception v3

    #@25e
    monitor-exit v6

    #@25f
    throw v3

    #@260
    .line 408
    :catch_5
    move-exception v25

    #@261
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto :goto_8

    #@262
    .line 353
    .end local v25    # "ignored":Ljava/io/IOException;
    :catchall_7
    move-exception v3

    #@263
    :try_start_1e
    monitor-exit v6

    #@264
    throw v3
    :try_end_1e
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    #@265
    .line 376
    :cond_13
    const/16 v28, 0x0

    #@267
    goto/16 :goto_3

    #@269
    .line 380
    :cond_14
    :try_start_1f
    move-object/from16 v0, p0

    #@26b
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@26d
    const/4 v7, 0x2

    #@26e
    if-ne v3, v7, :cond_9

    #@270
    .line 381
    const/4 v3, 0x4

    #@271
    move-object/from16 v0, p0

    #@273
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    #@275
    goto/16 :goto_4

    #@277
    .line 375
    :catchall_8
    move-exception v3

    #@278
    :try_start_20
    monitor-exit v6

    #@279
    throw v3
    :try_end_20
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    #@27a
    .line 396
    :catchall_9
    move-exception v3

    #@27b
    monitor-exit v6

    #@27c
    throw v3

    #@27d
    .line 408
    :catch_6
    move-exception v25

    #@27e
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto/16 :goto_5

    #@280
    .line 396
    .end local v4    # "sslCtxNativePointer":J
    .end local v14    # "sslSessionNativePointer":J
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v21    # "handshakeCompleted":Z
    .end local v24    # "enableSessionCreation":Z
    .end local v25    # "ignored":Ljava/io/IOException;
    .end local v29    # "savedReadTimeoutMilliseconds":I
    .end local v30    # "savedWriteTimeoutMilliseconds":I
    .end local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_a
    move-exception v3

    #@281
    monitor-exit v6

    #@282
    throw v3

    #@283
    .line 408
    :catch_7
    move-exception v25

    #@284
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto/16 :goto_6
.end method

.method public verifyCertificateChain(J[JLjava/lang/String;)V
    .locals 17
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "certRefs"    # [J
    .param p4, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@7
    move-result-object v15

    #@8
    .line 534
    .local v15, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v15, :cond_0

    #@a
    .line 535
    new-instance v3, Ljava/security/cert/CertificateException;

    #@c
    const-string/jumbo v4, "No X.509 TrustManager"

    #@f
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 556
    .end local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v13

    #@14
    .line 557
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 560
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v3

    #@16
    .line 562
    const/4 v4, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v4, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@1b
    .line 560
    throw v3

    #@1c
    .line 537
    .restart local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    if-eqz p3, :cond_1

    #@1e
    :try_start_2
    move-object/from16 v0, p3

    #@20
    array-length v3, v0

    #@21
    if-nez v3, :cond_2

    #@23
    .line 538
    :cond_1
    new-instance v3, Ljavax/net/ssl/SSLException;

    #@25
    const-string/jumbo v4, "Peer sent no certificate"

    #@28
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 558
    .end local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v12

    #@2d
    .line 559
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/security/cert/CertificateException;

    #@2f
    invoke-direct {v3, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    .line 540
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :try_start_4
    move-object/from16 v0, p3

    #@35
    array-length v3, v0

    #@36
    new-array v7, v3, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@38
    .line 541
    .local v7, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v14, 0x0

    #@39
    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@3b
    array-length v3, v0

    #@3c
    if-ge v14, v3, :cond_3

    #@3e
    .line 542
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@40
    aget-wide v4, p3, v14

    #@42
    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@45
    aput-object v3, v7, v14

    #@47
    .line 541
    add-int/lit8 v14, v14, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 546
    :cond_3
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@4c
    .line 547
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    #@53
    move-result v9

    #@54
    .line 546
    const/4 v6, 0x0

    #@55
    .line 547
    const/4 v10, 0x0

    #@56
    move-wide/from16 v4, p1

    #@58
    .line 546
    invoke-direct/range {v3 .. v10}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@5f
    .line 549
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@63
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@66
    move-result v11

    #@67
    .line 550
    .local v11, "client":Z
    if-eqz v11, :cond_4

    #@69
    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    move-object/from16 v0, p4

    #@6f
    invoke-static {v15, v7, v0, v3}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@72
    .line 562
    :goto_1
    const/4 v3, 0x0

    #@73
    move-object/from16 v0, p0

    #@75
    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@77
    .line 531
    return-void

    #@78
    .line 553
    :cond_4
    const/4 v3, 0x0

    #@79
    :try_start_5
    aget-object v3, v7, v3

    #@7b
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@7e
    move-result-object v3

    #@7f
    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 554
    .local v2, "authType":Ljava/lang/String;
    invoke-interface {v15, v7, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@86
    goto :goto_1
.end method
