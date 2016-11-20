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

.field private final guard:Ljava/lang/Object;

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
    .line 182
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    #@5
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@c
    .line 111
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@14
    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@16
    .line 178
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@18
    .line 180
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 183
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 184
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1f
    .line 185
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@21
    .line 186
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@23
    .line 187
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    .line 182
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
    .line 192
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    #@4
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@b
    .line 111
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@d
    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@13
    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@15
    .line 178
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@17
    .line 180
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 193
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 194
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1e
    .line 195
    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@20
    .line 196
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@22
    .line 197
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@24
    .line 191
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
    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    #@4
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@b
    .line 111
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@d
    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@13
    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@15
    .line 178
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@17
    .line 180
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 215
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 216
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1e
    .line 217
    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@20
    .line 218
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@22
    .line 219
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@24
    .line 213
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
    .line 202
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    #@5
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@c
    .line 111
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@14
    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@16
    .line 178
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@18
    .line 180
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 203
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 204
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1f
    .line 205
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@21
    .line 206
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@23
    .line 207
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    .line 201
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
    .line 225
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@5
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@c
    .line 111
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@14
    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@16
    .line 178
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@18
    .line 180
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 226
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 227
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1f
    .line 228
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@21
    .line 229
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@23
    .line 230
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    .line 224
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
    .line 237
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    #@4
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@b
    .line 111
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@d
    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@13
    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@15
    .line 178
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@17
    .line 180
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@1a
    .line 239
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@1c
    .line 240
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@1e
    .line 241
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    #@20
    .line 242
    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    #@22
    .line 243
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@24
    .line 238
    return-void
.end method

.method private assertReadableOrWriteableState()V
    .locals 3

    #@0
    .prologue
    .line 673
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
    .line 674
    :cond_0
    return-void

    #@b
    .line 677
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
    .line 269
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 270
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 268
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
    .line 1211
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@2
    if-eq v0, p0, :cond_2

    #@4
    .line 1212
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
    .line 1210
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@13
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@16
    goto :goto_0

    #@17
    .line 1216
    :cond_2
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 1217
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
    .line 1223
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1224
    return-void

    #@9
    .line 1226
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    #@e
    .line 1227
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@10
    .line 1228
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@12
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    #@15
    .line 1222
    return-void
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 6

    #@0
    .prologue
    .line 553
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
    .line 552
    :cond_0
    return-void

    #@d
    .line 556
    :cond_1
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    #@f
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@11
    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    #@14
    .line 557
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
    .line 559
    .local v2, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_0
    invoke-interface {v2, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 560
    :catch_0
    move-exception v0

    #@2b
    .line 566
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v4

    #@2f
    .line 567
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
    .line 1194
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    #@3
    .line 1195
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@5
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@7
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@a
    move-result-object v1

    #@b
    invoke-static {v2, v3, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1205
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    #@11
    .line 1206
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@14
    .line 1192
    :goto_0
    return-void

    #@15
    .line 1197
    :catch_0
    move-exception v0

    #@16
    .line 1205
    .local v0, "ignored":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    #@19
    .line 1206
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@1c
    goto :goto_0

    #@1d
    .line 1204
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@1e
    .line 1205
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    #@21
    .line 1206
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@24
    .line 1204
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
    .line 682
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->startHandshake()V

    #@4
    .line 684
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 685
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@9
    const/4 v4, 0x4

    #@a
    if-eq v2, v4, :cond_0

    #@c
    .line 686
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    const/4 v4, 0x3

    #@f
    if-eq v2, v4, :cond_0

    #@11
    .line 687
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-eq v2, v5, :cond_0

    #@15
    .line 689
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
    .line 690
    :catch_0
    move-exception v0

    #@1c
    .line 691
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@23
    .line 692
    new-instance v1, Ljava/io/IOException;

    #@25
    const-string/jumbo v2, "Interrupted waiting for handshake"

    #@28
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    .line 693
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2e
    .line 695
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 684
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2

    #@32
    .line 699
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@34
    if-ne v2, v5, :cond_1

    #@36
    .line 700
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
    .line 681
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    .line 865
    if-nez p1, :cond_0

    #@2
    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Provided listener is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 869
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@16
    .line 871
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 864
    return-void
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1338
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
    .line 1348
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
    .line 1332
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
    .line 1343
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
    .line 488
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    .line 489
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v6, p0

    #@7
    .line 488
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    #@a
    .line 487
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    #@0
    .prologue
    .line 495
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
    .line 1134
    const/4 v1, 0x0

    #@2
    .line 1135
    .local v1, "sslInputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    const/4 v2, 0x0

    #@3
    .line 1137
    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 1138
    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-ne v3, v5, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 1140
    return-void

    #@c
    .line 1143
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@e
    .line 1144
    .local v0, "oldState":I
    const/4 v3, 0x5

    #@f
    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@11
    .line 1146
    if-nez v0, :cond_1

    #@13
    .line 1150
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    #@16
    .line 1152
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@18
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit v4

    #@1c
    .line 1153
    return-void

    #@1d
    .line 1156
    :cond_1
    const/4 v3, 0x4

    #@1e
    if-eq v0, v3, :cond_2

    #@20
    const/4 v3, 0x3

    #@21
    if-eq v0, v3, :cond_2

    #@23
    .line 1161
    :try_start_2
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@25
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    #@28
    .line 1163
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    monitor-exit v4

    #@2e
    .line 1164
    return-void

    #@2f
    .line 1167
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@31
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    #@34
    .line 1170
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@36
    .line 1171
    .local v1, "sslInputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    monitor-exit v4

    #@39
    .line 1175
    if-nez v1, :cond_3

    #@3b
    if-eqz v2, :cond_4

    #@3d
    .line 1176
    :cond_3
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@3f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    #@42
    .line 1182
    :cond_4
    if-eqz v1, :cond_5

    #@44
    .line 1183
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->awaitPendingOps()V

    #@47
    .line 1185
    :cond_5
    if-eqz v2, :cond_6

    #@49
    .line 1186
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->awaitPendingOps()V

    #@4c
    .line 1189
    :cond_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V

    #@4f
    .line 1131
    return-void

    #@50
    .line 1137
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

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@4
    .line 251
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    #@6
    if-eqz v0, :cond_0

    #@8
    move-object v0, p1

    #@9
    .line 262
    check-cast v0, Ljava/net/InetSocketAddress;

    #@b
    .line 261
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@11
    .line 265
    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    #@14
    .line 259
    return-void
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
    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1251
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    #@9
    .line 1253
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1255
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@f
    .line 1232
    return-void

    #@10
    .line 1254
    :catchall_0
    move-exception v0

    #@11
    .line 1255
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@14
    .line 1254
    throw v0
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 2

    #@0
    .prologue
    .line 1281
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
    .line 983
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 984
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Client mode"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 988
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@14
    const/4 v2, 0x4

    #@15
    if-eq v0, v2, :cond_1

    #@17
    .line 989
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    .line 990
    const-string/jumbo v2, "Channel ID is only available after handshake completes"

    #@1c
    .line 989
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 987
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
    .line 993
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
    .line 892
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
    .line 907
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
    .line 922
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
    .line 1261
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 1262
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@b
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 467
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 468
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@7
    return-object v1

    #@8
    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    .line 472
    .local v0, "peerAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    #@e
    .line 473
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 476
    :cond_1
    return-object v2
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
    .line 626
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    .line 629
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 630
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@8
    const/4 v3, 0x5

    #@9
    if-ne v1, v3, :cond_0

    #@b
    .line 631
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
    .line 629
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1

    #@17
    .line 634
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 635
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@20
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    #@22
    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .local v0, "returnVal":Ljava/io/InputStream;
    monitor-exit v2

    #@25
    .line 644
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    #@28
    .line 645
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 1067
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
    .line 1273
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
    .line 650
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    .line 653
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 654
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@8
    const/4 v3, 0x5

    #@9
    if-ne v1, v3, :cond_0

    #@b
    .line 655
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
    .line 653
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1

    #@17
    .line 658
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 659
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@20
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    #@22
    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .local v0, "returnVal":Ljava/io/OutputStream;
    monitor-exit v2

    #@25
    .line 668
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    #@28
    .line 669
    return-object v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1353
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
    .line 481
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

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    .line 1319
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@3
    move-result-object v0

    #@4
    .line 1320
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@6
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@9
    .line 1321
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    #@0
    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 846
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 853
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@9
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/OpenSSLSessionImpl;)Ljavax/net/ssl/SSLSession;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 847
    :catch_0
    move-exception v0

    #@f
    .line 850
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    #@12
    move-result-object v1

    #@13
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
    .line 1103
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
    .line 1119
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@2
    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 902
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
    .line 917
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
    .line 1046
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
    .line 1062
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
    .line 507
    const/16 v1, 0x20

    #@2
    if-eq p3, v1, :cond_0

    #@4
    .line 508
    return-void

    #@5
    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 512
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@a
    const/4 v3, 0x1

    #@b
    if-ne v1, v3, :cond_1

    #@d
    .line 520
    const/4 v1, 0x2

    #@e
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 521
    return-void

    #@12
    .line 522
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
    .line 533
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@1a
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    #@1d
    .line 535
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1f
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 536
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@27
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    #@2a
    move-result-object v0

    #@2b
    .line 538
    .local v0, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :goto_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@30
    .line 541
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    #@33
    .line 543
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v2

    #@36
    .line 546
    const/4 v1, 0x4

    #@37
    :try_start_2
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@39
    .line 548
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3e
    monitor-exit v2

    #@3f
    .line 506
    return-void

    #@40
    .line 525
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
    .line 527
    return-void

    #@47
    .line 511
    :catchall_0
    move-exception v1

    #@48
    monitor-exit v2

    #@49
    throw v1

    #@4a
    .line 537
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
    .line 543
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
    .line 877
    if-nez p1, :cond_0

    #@2
    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Provided listener is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 882
    const-string/jumbo v1, "Provided listener is not registered"

    #@14
    .line 881
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    .line 886
    const-string/jumbo v1, "Provided listener is not registered"

    #@25
    .line 885
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 876
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
    .line 1082
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
    .line 501
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
    .line 1311
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "alpnProtocols.length == 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@10
    iput-object p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    #@12
    .line 1310
    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 959
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Client mode"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 962
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 963
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 964
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    .line 965
    const-string/jumbo v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    #@1b
    .line 964
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 962
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
    .line 969
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@25
    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@27
    .line 957
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
    .line 1009
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1010
    new-instance v3, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v4, "Server mode"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 1013
    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@13
    monitor-enter v4

    #@14
    .line 1014
    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1015
    new-instance v3, Ljava/lang/IllegalStateException;

    #@1a
    .line 1016
    const-string/jumbo v5, "Could not change Channel ID private key after the initial handshake has begun."

    #@1d
    .line 1015
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1013
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
    .line 1021
    if-nez p1, :cond_2

    #@27
    .line 1022
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@29
    iput-boolean v6, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@2b
    .line 1023
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2d
    .line 1008
    :goto_0
    return-void

    #@2e
    .line 1025
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@30
    const/4 v4, 0x1

    #@31
    iput-boolean v4, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@33
    .line 1027
    const/4 v2, 0x0

    #@34
    .line 1028
    .local v2, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_1
    instance-of v3, p1, Ljava/security/interfaces/ECKey;

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 1029
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
    .line 1031
    .end local v2    # "ecParams":Ljava/security/spec/ECParameterSpec;
    :cond_3
    if-nez v2, :cond_4

    #@42
    .line 1034
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
    .line 1037
    :cond_4
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@50
    move-result-object v3

    #@51
    .line 1036
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    goto :goto_0

    #@54
    .line 1038
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
    .line 897
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    #@5
    .line 896
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@5
    .line 911
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    #@5
    .line 926
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
    .line 1127
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@2
    .line 1126
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 945
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    #@8
    .line 946
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    #@a
    .line 944
    return-void

    #@b
    .line 945
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
    .line 1072
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    #@5
    .line 1071
    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 2
    .param p1, "npnProtocols"    # [B

    #@0
    .prologue
    .line 1294
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "npnProtocols.length == 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@10
    iput-object p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@12
    .line 1293
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
    .line 1087
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "Methods sendUrgentData, setOOBInline are not supported."

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    .line 1326
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    #@3
    .line 1327
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@5
    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@8
    .line 1325
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "readTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 1093
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@9
    .line 1098
    :goto_0
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    #@b
    .line 1091
    return-void

    #@c
    .line 1095
    :cond_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    #@f
    goto :goto_0
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
    .line 1110
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    #@2
    .line 1112
    int-to-long v0, p1

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    #@6
    .line 1109
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1052
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 1054
    const-string/jumbo v2, "Could not change the mode after the initial handshake has begun."

    #@c
    .line 1053
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1051
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
    .line 1057
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@16
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    #@19
    .line 1050
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 1
    .param p1, "useSessionTickets"    # Z

    #@0
    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    #@4
    .line 935
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    #@0
    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    #@5
    .line 1076
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
    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    #@3
    .line 284
    move-object/from16 v0, p0

    #@5
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@7
    monitor-enter v6

    #@8
    .line 285
    :try_start_0
    move-object/from16 v0, p0

    #@a
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@c
    if-nez v3, :cond_5

    #@e
    .line 286
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
    .line 296
    sget-boolean v3, Lcom/android/org/conscrypt/NativeCrypto;->isBoringSSL:Z

    #@16
    if-nez v3, :cond_0

    #@18
    .line 299
    const/16 v32, 0x400

    #@1a
    .line 300
    .local v32, "seedLengthInBytes":I
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1e
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    #@21
    move-result-object v31

    #@22
    .line 301
    .local v31, "secureRandom":Ljava/security/SecureRandom;
    if-nez v31, :cond_6

    #@24
    .line 302
    const-string/jumbo v3, "/dev/urandom"

    #@27
    const-wide/16 v6, 0x400

    #@29
    invoke-static {v3, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    #@2c
    .line 308
    .end local v31    # "secureRandom":Ljava/security/SecureRandom;
    .end local v32    # "seedLengthInBytes":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@30
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@33
    move-result v11

    #@34
    .line 310
    .local v11, "client":Z
    const-wide/16 v6, 0x0

    #@36
    move-object/from16 v0, p0

    #@38
    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@3a
    .line 311
    const/16 v28, 0x1

    #@3c
    .line 313
    .local v28, "releaseResources":Z
    :try_start_1
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@40
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@43
    move-result-object v33

    #@44
    .line 314
    .local v33, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    move-object/from16 v0, v33

    #@46
    iget-wide v4, v0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    #@48
    .line 315
    .local v4, "sslCtxNativePointer":J
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    #@4b
    move-result-wide v6

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@50
    .line 316
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ljava/lang/Object;

    #@54
    const-string/jumbo v6, "close"

    #@57
    invoke-static {v3, v6}, Lcom/android/org/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    #@5a
    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getEnableSessionCreation()Z

    #@5d
    move-result v24

    #@5e
    .line 319
    .local v24, "enableSessionCreation":Z
    if-nez v24, :cond_1

    #@60
    .line 320
    move-object/from16 v0, p0

    #@62
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@64
    move/from16 v0, v24

    #@66
    invoke-static {v6, v7, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    #@69
    .line 327
    :cond_1
    move-object/from16 v0, p0

    #@6b
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@6d
    const/4 v3, 0x0

    #@6e
    invoke-static {v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_reject_peer_renegotiations(JZ)V

    #@71
    .line 329
    if-eqz v11, :cond_2

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@77
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v3, v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_2

    #@81
    .line 330
    move-object/from16 v0, p0

    #@83
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@85
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(J)V

    #@88
    .line 331
    move-object/from16 v0, p0

    #@8a
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@8c
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(J)V

    #@8f
    .line 334
    :cond_2
    move-object/from16 v0, p0

    #@91
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@93
    .line 335
    move-object/from16 v0, p0

    #@95
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@97
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    #@9e
    move-result v9

    #@9f
    .line 334
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@a2
    move-result-object v18

    #@a3
    .line 336
    .local v18, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    move-object/from16 v0, p0

    #@a5
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@ab
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@ae
    move-result-object v10

    #@af
    move-object/from16 v8, p0

    #@b1
    move-object/from16 v9, p0

    #@b3
    .line 336
    invoke-virtual/range {v3 .. v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    #@b6
    .line 338
    move-object/from16 v0, p0

    #@b8
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@be
    invoke-virtual {v3, v6, v7}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    #@c1
    .line 339
    move-object/from16 v0, p0

    #@c3
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@cd
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    #@d0
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    #@d3
    move-result v29

    #@d4
    .line 343
    .local v29, "savedReadTimeoutMilliseconds":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoWriteTimeout()I

    #@d7
    move-result v30

    #@d8
    .line 344
    .local v30, "savedWriteTimeoutMilliseconds":I
    move-object/from16 v0, p0

    #@da
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@dc
    if-ltz v3, :cond_3

    #@de
    .line 345
    move-object/from16 v0, p0

    #@e0
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@e2
    move-object/from16 v0, p0

    #@e4
    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    #@e7
    .line 346
    move-object/from16 v0, p0

    #@e9
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@eb
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    #@f0
    .line 349
    :cond_3
    move-object/from16 v0, p0

    #@f2
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@f4
    monitor-enter v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@f5
    .line 350
    :try_start_2
    move-object/from16 v0, p0

    #@f7
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@f9
    const/4 v7, 0x5

    #@fa
    if-ne v6, v7, :cond_7

    #@fc
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@fd
    .line 433
    if-eqz v28, :cond_4

    #@ff
    .line 434
    move-object/from16 v0, p0

    #@101
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@103
    monitor-enter v6

    #@104
    .line 440
    const/4 v3, 0x5

    #@105
    :try_start_4
    move-object/from16 v0, p0

    #@107
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@109
    .line 441
    move-object/from16 v0, p0

    #@10b
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@10d
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@110
    monitor-exit v6

    #@111
    .line 445
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@114
    .line 351
    :cond_4
    :goto_1
    return-void

    #@115
    .end local v4    # "sslCtxNativePointer":J
    .end local v11    # "client":Z
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v24    # "enableSessionCreation":Z
    .end local v28    # "releaseResources":Z
    .end local v29    # "savedReadTimeoutMilliseconds":I
    .end local v30    # "savedWriteTimeoutMilliseconds":I
    .end local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_5
    monitor-exit v6

    #@116
    .line 290
    return-void

    #@117
    .line 284
    :catchall_0
    move-exception v3

    #@118
    monitor-exit v6

    #@119
    throw v3

    #@11a
    .line 304
    .restart local v31    # "secureRandom":Ljava/security/SecureRandom;
    .restart local v32    # "seedLengthInBytes":I
    :cond_6
    const/16 v3, 0x400

    #@11c
    move-object/from16 v0, v31

    #@11e
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    #@121
    move-result-object v3

    #@122
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_seed([B)V

    #@125
    goto/16 :goto_0

    #@127
    .line 434
    .end local v31    # "secureRandom":Ljava/security/SecureRandom;
    .end local v32    # "seedLengthInBytes":I
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

    #@128
    monitor-exit v6

    #@129
    throw v3

    #@12a
    .line 446
    :catch_0
    move-exception v25

    #@12b
    .local v25, "ignored":Ljava/io/IOException;
    goto :goto_1

    #@12c
    .end local v25    # "ignored":Ljava/io/IOException;
    :cond_7
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@12d
    .line 357
    :try_start_7
    move-object/from16 v0, p0

    #@12f
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@131
    .line 358
    move-object/from16 v0, p0

    #@133
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    #@135
    invoke-static {v3}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@138
    move-result-object v8

    #@139
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    #@13c
    move-result v10

    #@13d
    .line 359
    move-object/from16 v0, p0

    #@13f
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@141
    iget-object v12, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@143
    if-eqz v11, :cond_f

    #@145
    const/4 v13, 0x0

    #@146
    :goto_2
    move-object/from16 v9, p0

    #@148
    .line 357
    invoke-static/range {v6 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;IZ[B[B)J
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@14b
    move-result-wide v14

    #@14c
    .line 390
    .local v14, "sslSessionNativePointer":J
    const/16 v21, 0x0

    #@14e
    .line 391
    .local v21, "handshakeCompleted":Z
    :try_start_8
    move-object/from16 v0, p0

    #@150
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@152
    monitor-enter v6
    :try_end_8
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@153
    .line 392
    :try_start_9
    move-object/from16 v0, p0

    #@155
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    #@157
    const/4 v7, 0x2

    #@158
    if-ne v3, v7, :cond_13

    #@15a
    .line 393
    const/16 v21, 0x1

    #@15c
    :cond_8
    :try_start_a
    monitor-exit v6

    #@15d
    .line 399
    move-object/from16 v0, p0

    #@15f
    iget-object v13, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@161
    move-object/from16 v0, p0

    #@163
    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@165
    move-wide/from16 v16, v0

    #@167
    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    #@16a
    move-result-object v19

    #@16b
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    #@16e
    move-result v20

    #@16f
    .line 399
    invoke-virtual/range {v13 .. v21}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@172
    move-result-object v3

    #@173
    move-object/from16 v0, p0

    #@175
    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@177
    .line 403
    move-object/from16 v0, p0

    #@179
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    #@17b
    if-ltz v3, :cond_9

    #@17d
    .line 404
    move-object/from16 v0, p0

    #@17f
    move/from16 v1, v29

    #@181
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    #@184
    .line 405
    move-object/from16 v0, p0

    #@186
    move/from16 v1, v30

    #@188
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    #@18b
    .line 409
    :cond_9
    if-eqz v21, :cond_a

    #@18d
    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    #@190
    .line 413
    :cond_a
    move-object/from16 v0, p0

    #@192
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@194
    monitor-enter v6
    :try_end_a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@195
    .line 414
    :try_start_b
    move-object/from16 v0, p0

    #@197
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@199
    const/4 v7, 0x5

    #@19a
    if-ne v3, v7, :cond_15

    #@19c
    const/16 v28, 0x1

    #@19e
    .line 416
    :goto_3
    move-object/from16 v0, p0

    #@1a0
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1a2
    const/4 v7, 0x1

    #@1a3
    if-ne v3, v7, :cond_16

    #@1a5
    .line 417
    const/4 v3, 0x3

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1aa
    .line 422
    :cond_b
    :goto_4
    if-nez v28, :cond_c

    #@1ac
    .line 425
    move-object/from16 v0, p0

    #@1ae
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1b0
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    #@1b3
    :cond_c
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@1b4
    .line 433
    if-eqz v28, :cond_d

    #@1b6
    .line 434
    move-object/from16 v0, p0

    #@1b8
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1ba
    monitor-enter v6

    #@1bb
    .line 440
    const/4 v3, 0x5

    #@1bc
    :try_start_d
    move-object/from16 v0, p0

    #@1be
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1c0
    .line 441
    move-object/from16 v0, p0

    #@1c2
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1c4
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    #@1c7
    monitor-exit v6

    #@1c8
    .line 445
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    #@1cb
    .line 282
    :cond_d
    :goto_5
    return-void

    #@1cc
    .line 349
    .end local v14    # "sslSessionNativePointer":J
    .end local v21    # "handshakeCompleted":Z
    :catchall_2
    move-exception v6

    #@1cd
    :try_start_f
    monitor-exit v3

    #@1ce
    throw v6
    :try_end_f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@1cf
    .line 428
    .end local v4    # "sslCtxNativePointer":J
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v24    # "enableSessionCreation":Z
    .end local v29    # "savedReadTimeoutMilliseconds":I
    .end local v30    # "savedWriteTimeoutMilliseconds":I
    .end local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_1
    move-exception v23

    #@1d0
    .line 429
    .local v23, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_10
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@1d2
    const-string/jumbo v6, "Handshake failed"

    #@1d5
    invoke-direct {v3, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1d8
    move-object/from16 v0, v23

    #@1da
    invoke-virtual {v3, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1dd
    move-result-object v3

    #@1de
    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    #@1e0
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@1e1
    .line 431
    .end local v23    # "e":Ljavax/net/ssl/SSLProtocolException;
    :catchall_3
    move-exception v3

    #@1e2
    .line 433
    if-eqz v28, :cond_e

    #@1e4
    .line 434
    move-object/from16 v0, p0

    #@1e6
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1e8
    monitor-enter v6

    #@1e9
    .line 440
    const/4 v7, 0x5

    #@1ea
    :try_start_11
    move-object/from16 v0, p0

    #@1ec
    iput v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@1ee
    .line 441
    move-object/from16 v0, p0

    #@1f0
    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@1f2
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    #@1f5
    monitor-exit v6

    #@1f6
    .line 445
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    #@1f9
    .line 431
    :cond_e
    :goto_6
    throw v3

    #@1fa
    .line 359
    .restart local v4    # "sslCtxNativePointer":J
    .restart local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .restart local v24    # "enableSessionCreation":Z
    .restart local v29    # "savedReadTimeoutMilliseconds":I
    .restart local v30    # "savedWriteTimeoutMilliseconds":I
    .restart local v33    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_f
    :try_start_13
    move-object/from16 v0, p0

    #@1fc
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1fe
    iget-object v13, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    #@200
    goto/16 :goto_2

    #@202
    .line 364
    :catch_2
    move-exception v22

    #@203
    .line 372
    .local v22, "e":Ljavax/net/ssl/SSLException;
    :try_start_14
    move-object/from16 v0, p0

    #@205
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@207
    monitor-enter v3
    :try_end_14
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    #@208
    .line 373
    :try_start_15
    move-object/from16 v0, p0

    #@20a
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    #@20c
    const/4 v7, 0x5

    #@20d
    if-ne v6, v7, :cond_11

    #@20f
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    #@210
    .line 433
    if-eqz v28, :cond_10

    #@212
    .line 434
    move-object/from16 v0, p0

    #@214
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@216
    monitor-enter v6

    #@217
    .line 440
    const/4 v3, 0x5

    #@218
    :try_start_17
    move-object/from16 v0, p0

    #@21a
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@21c
    .line 441
    move-object/from16 v0, p0

    #@21e
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@220
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    #@223
    monitor-exit v6

    #@224
    .line 445
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3

    #@227
    .line 374
    :cond_10
    :goto_7
    return-void

    #@228
    .line 434
    :catchall_4
    move-exception v3

    #@229
    monitor-exit v6

    #@22a
    throw v3

    #@22b
    .line 446
    :catch_3
    move-exception v25

    #@22c
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto :goto_7

    #@22d
    .end local v25    # "ignored":Ljava/io/IOException;
    :cond_11
    :try_start_19
    monitor-exit v3

    #@22e
    .line 379
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    #@231
    move-result-object v27

    #@232
    .line 381
    .local v27, "message":Ljava/lang/String;
    const-string/jumbo v3, "unexpected CCS"

    #@235
    move-object/from16 v0, v27

    #@237
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@23a
    move-result v3

    #@23b
    if-eqz v3, :cond_12

    #@23d
    .line 382
    const-string/jumbo v3, "ssl_unexpected_ccs: host=%s"

    #@240
    const/4 v6, 0x1

    #@241
    new-array v6, v6, [Ljava/lang/Object;

    #@243
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    #@246
    move-result-object v7

    #@247
    const/4 v8, 0x0

    #@248
    aput-object v7, v6, v8

    #@24a
    .line 382
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24d
    move-result-object v26

    #@24e
    .line 384
    .local v26, "logMessage":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    #@251
    .line 387
    .end local v26    # "logMessage":Ljava/lang/String;
    :cond_12
    throw v22

    #@252
    .line 372
    .end local v27    # "message":Ljava/lang/String;
    :catchall_5
    move-exception v6

    #@253
    monitor-exit v3

    #@254
    throw v6

    #@255
    .line 360
    .end local v22    # "e":Ljavax/net/ssl/SSLException;
    :catch_4
    move-exception v2

    #@256
    .line 361
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v34, Ljavax/net/ssl/SSLHandshakeException;

    #@258
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@25b
    move-result-object v3

    #@25c
    move-object/from16 v0, v34

    #@25e
    invoke-direct {v0, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@261
    .line 362
    .local v34, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v34

    #@263
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@266
    .line 363
    throw v34
    :try_end_19
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    #@267
    .line 394
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v34    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v14    # "sslSessionNativePointer":J
    .restart local v21    # "handshakeCompleted":Z
    :cond_13
    :try_start_1a
    move-object/from16 v0, p0

    #@269
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    #@26b
    const/4 v7, 0x5

    #@26c
    if-ne v3, v7, :cond_8

    #@26e
    :try_start_1b
    monitor-exit v6
    :try_end_1b
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    #@26f
    .line 433
    if-eqz v28, :cond_14

    #@271
    .line 434
    move-object/from16 v0, p0

    #@273
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@275
    monitor-enter v6

    #@276
    .line 440
    const/4 v3, 0x5

    #@277
    :try_start_1c
    move-object/from16 v0, p0

    #@279
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@27b
    .line 441
    move-object/from16 v0, p0

    #@27d
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    #@27f
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    #@282
    monitor-exit v6

    #@283
    .line 445
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5

    #@286
    .line 395
    :cond_14
    :goto_8
    return-void

    #@287
    .line 434
    :catchall_6
    move-exception v3

    #@288
    monitor-exit v6

    #@289
    throw v3

    #@28a
    .line 446
    :catch_5
    move-exception v25

    #@28b
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto :goto_8

    #@28c
    .line 391
    .end local v25    # "ignored":Ljava/io/IOException;
    :catchall_7
    move-exception v3

    #@28d
    :try_start_1e
    monitor-exit v6

    #@28e
    throw v3
    :try_end_1e
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    #@28f
    .line 414
    :cond_15
    const/16 v28, 0x0

    #@291
    goto/16 :goto_3

    #@293
    .line 418
    :cond_16
    :try_start_1f
    move-object/from16 v0, p0

    #@295
    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    #@297
    const/4 v7, 0x2

    #@298
    if-ne v3, v7, :cond_b

    #@29a
    .line 419
    const/4 v3, 0x4

    #@29b
    move-object/from16 v0, p0

    #@29d
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    #@29f
    goto/16 :goto_4

    #@2a1
    .line 413
    :catchall_8
    move-exception v3

    #@2a2
    :try_start_20
    monitor-exit v6

    #@2a3
    throw v3
    :try_end_20
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    #@2a4
    .line 434
    :catchall_9
    move-exception v3

    #@2a5
    monitor-exit v6

    #@2a6
    throw v3

    #@2a7
    .line 446
    :catch_6
    move-exception v25

    #@2a8
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto/16 :goto_5

    #@2aa
    .line 434
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

    #@2ab
    monitor-exit v6

    #@2ac
    throw v3

    #@2ad
    .line 446
    :catch_7
    move-exception v25

    #@2ae
    .restart local v25    # "ignored":Ljava/io/IOException;
    goto/16 :goto_6
.end method

.method public verifyCertificateChain(J[JLjava/lang/String;)V
    .locals 23
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
    .line 578
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@7
    move-result-object v21

    #@8
    .line 579
    .local v21, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v21, :cond_0

    #@a
    .line 580
    new-instance v5, Ljava/security/cert/CertificateException;

    #@c
    const-string/jumbo v6, "No X.509 TrustManager"

    #@f
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 614
    .end local v21    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v16

    #@14
    .line 615
    .local v16, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 618
    .end local v16    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v5

    #@16
    .line 620
    const/4 v6, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@1b
    .line 618
    throw v5

    #@1c
    .line 582
    .restart local v21    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    if-eqz p3, :cond_1

    #@1e
    :try_start_2
    move-object/from16 v0, p3

    #@20
    array-length v5, v0

    #@21
    if-nez v5, :cond_2

    #@23
    .line 583
    :cond_1
    new-instance v5, Ljavax/net/ssl/SSLException;

    #@25
    const-string/jumbo v6, "Peer sent no certificate"

    #@28
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v5
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 616
    .end local v21    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v15

    #@2d
    .line 617
    .local v15, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/security/cert/CertificateException;

    #@2f
    invoke-direct {v5, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    .line 585
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v21    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :try_start_4
    move-object/from16 v0, p3

    #@35
    array-length v5, v0

    #@36
    new-array v9, v5, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@38
    .line 586
    .local v9, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/16 v17, 0x0

    #@3a
    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@3c
    array-length v5, v0

    #@3d
    move/from16 v0, v17

    #@3f
    if-ge v0, v5, :cond_3

    #@41
    .line 587
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@43
    aget-wide v6, p3, v17

    #@45
    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@48
    aput-object v5, v9, v17

    #@4a
    .line 586
    add-int/lit8 v17, v17, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 591
    :cond_3
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@4f
    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    #@56
    move-result v11

    #@57
    .line 591
    const/4 v8, 0x0

    #@58
    .line 592
    const/4 v12, 0x0

    #@59
    move-wide/from16 v6, p1

    #@5b
    .line 591
    invoke-direct/range {v5 .. v12}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@62
    .line 594
    move-object/from16 v0, p0

    #@64
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@66
    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@69
    move-result v13

    #@6a
    .line 595
    .local v13, "client":Z
    if-eqz v13, :cond_4

    #@6c
    .line 596
    move-object/from16 v0, v21

    #@6e
    move-object/from16 v1, p4

    #@70
    move-object/from16 v2, p0

    #@72
    invoke-static {v0, v9, v1, v2}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@75
    .line 597
    move-object/from16 v0, p0

    #@77
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@79
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v5, v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    #@80
    move-result v5

    #@81
    if-eqz v5, :cond_5

    #@83
    .line 599
    move-object/from16 v0, p0

    #@85
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@87
    .line 598
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(J)[B

    #@8a
    move-result-object v20

    #@8b
    .line 600
    .local v20, "tlsData":[B
    move-object/from16 v0, p0

    #@8d
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    #@8f
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(J)[B

    #@92
    move-result-object v18

    #@93
    .line 602
    .local v18, "ocspData":[B
    move-object/from16 v0, p0

    #@95
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@97
    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getCTVerifier()Lcom/android/org/conscrypt/ct/CTVerifier;

    #@9a
    move-result-object v14

    #@9b
    .line 604
    .local v14, "ctVerifier":Lcom/android/org/conscrypt/ct/CTVerifier;
    move-object/from16 v0, v20

    #@9d
    move-object/from16 v1, v18

    #@9f
    invoke-virtual {v14, v9, v0, v1}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    #@a2
    move-result-object v19

    #@a3
    .line 606
    .local v19, "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->getValidSCTs()Ljava/util/List;

    #@a6
    move-result-object v5

    #@a7
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@aa
    move-result v5

    #@ab
    if-nez v5, :cond_5

    #@ad
    .line 607
    new-instance v5, Ljava/security/cert/CertificateException;

    #@af
    const-string/jumbo v6, "No valid SCT found"

    #@b2
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v5

    #@b6
    .line 611
    .end local v14    # "ctVerifier":Lcom/android/org/conscrypt/ct/CTVerifier;
    .end local v18    # "ocspData":[B
    .end local v19    # "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .end local v20    # "tlsData":[B
    :cond_4
    const/4 v5, 0x0

    #@b7
    aget-object v5, v9, v5

    #@b9
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@bc
    move-result-object v5

    #@bd
    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    .line 612
    .local v4, "authType":Ljava/lang/String;
    move-object/from16 v0, v21

    #@c3
    move-object/from16 v1, p0

    #@c5
    invoke-static {v0, v9, v4, v1}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c8
    .line 620
    .end local v4    # "authType":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    #@c9
    move-object/from16 v0, p0

    #@cb
    iput-object v5, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@cd
    .line 576
    return-void
.end method
