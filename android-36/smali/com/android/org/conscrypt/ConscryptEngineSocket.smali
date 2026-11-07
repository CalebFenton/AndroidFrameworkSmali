.class Lcom/android/org/conscrypt/ConscryptEngineSocket;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "ConscryptEngineSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;,
        Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private blacklist bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

.field private final blacklist engine:Lcom/android/org/conscrypt/ConscryptEngine;

.field private final blacklist handshakeLock:Ljava/lang/Object;

.field private blacklist handshakeStartedMillis:J

.field private blacklist in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

.field private blacklist out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

.field private blacklist state:I

.field private final blacklist stateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbufferAllocator(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/BufferAllocator;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethandshakeLock(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptEngineSocket;)I
    .registers 1

    iget p0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstateLock(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->doHandshake()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUnderlyingInputStream(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUnderlyingOutputStream(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monEngineHandshakeFinished(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->onEngineHandshakeFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 70
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 78
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 79
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 70
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 84
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 85
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 8
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

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 70
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 96
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 97
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 70
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 90
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 8
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

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 70
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 102
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 103
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 8
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

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 70
    invoke-static {}, Lcom/android/org/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 108
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 109
    return-void
.end method

.method private blacklist createInputStream()Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-nez v1, :cond_e

    .line 359
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    .line 361
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 362
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    return-object v0

    .line 361
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist createOutputStream()Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    if-nez v1, :cond_e

    .line 374
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    .line 376
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 377
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    return-object v0

    .line 376
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist doHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "finished":Z
    :goto_1
    if-nez v0, :cond_69

    .line 240
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_94

    .line 267
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_4c

    .line 263
    :pswitch_17
    const/4 v0, 0x1

    .line 264
    goto :goto_1

    .line 257
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Engine tasks are unsupported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 250
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :pswitch_24
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v2, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->-$$Nest$mwriteInternal(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 252
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->-$$Nest$mflushInternal(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V

    .line 253
    goto :goto_1

    .line 242
    :pswitch_31
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->-$$Nest$mprocessDataFromSocket(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I

    move-result v1

    if-ltz v1, :cond_3d

    goto :goto_1

    .line 244
    :cond_3d
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 245
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "connection closed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 267
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :goto_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown handshake status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 268
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 272
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :cond_69
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isState(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 275
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->transitionTo(I)I

    .line 276
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->notifyHandshakeCompletedListeners()V

    .line 277
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->transitionTo(I)I
    :try_end_7b
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_7b} :catch_8b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7b} :catch_86
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7b} :catch_7d

    .line 290
    .end local v0    # "finished":Z
    :cond_7b
    nop

    .line 291
    return-void

    .line 286
    :catch_7d
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 289
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_86
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 285
    throw v0

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8b
    move-exception v0

    .line 280
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 281
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 282
    throw v0

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_31
        :pswitch_24
        :pswitch_19
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist drainOutgoingQueue()V
    .registers 3

    .line 639
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-lez v0, :cond_16

    .line 640
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->-$$Nest$mwriteInternal(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 642
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->out:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->-$$Nest$mflushInternal(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_17

    goto :goto_1

    .line 646
    :cond_16
    goto :goto_18

    .line 644
    :catch_17
    move-exception v0

    .line 647
    :goto_18
    return-void
.end method

.method private static blacklist getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;
    .registers 4
    .param p0, "delegate"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 148
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_d

    .line 149
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 150
    .local v0, "extendedDelegate":Ljavax/net/ssl/X509ExtendedTrustManager;
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;

    invoke-direct {v1, v0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;-><init>(Ljavax/net/ssl/X509ExtendedTrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    return-object v1

    .line 187
    .end local v0    # "extendedDelegate":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_d
    return-object p0
.end method

.method private blacklist getUnderlyingInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getUnderlyingOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isState(I)Z
    .registers 4
    .param p1, "desiredState"    # I

    .line 294
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-ne v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 296
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static blacklist newEngine(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 5
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "socket"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .line 114
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSpake()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->cloneWithSpake()Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v0

    .local v0, "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    goto :goto_20

    .line 116
    .end local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :cond_b
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->supportsX509ExtendedTrustManager()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lcom/android/org/conscrypt/SSLParametersImpl;

    move-result-object v0

    .restart local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    goto :goto_20

    .line 120
    .end local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :cond_1f
    move-object v0, p0

    .line 122
    .restart local v0    # "modifiedParams":Lcom/android/org/conscrypt/SSLParametersImpl;
    :goto_20
    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine;

    .line 123
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->peerInfoProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/conscrypt/ConscryptEngine;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 126
    .local v1, "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;

    invoke-direct {v2, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 139
    return-object v1
.end method

.method private blacklist onEngineHandshakeFinished()V
    .registers 2

    .line 608
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 609
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->transitionTo(I)I

    .line 611
    :cond_b
    return-void
.end method

.method private blacklist transitionTo(I)I
    .registers 16
    .param p1, "newState"    # I

    .line 300
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-ne v0, p1, :cond_b

    .line 302
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    monitor-exit v1

    return v0

    .line 305
    :cond_b
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 306
    .local v0, "previousState":I
    const/4 v2, 0x0

    .line 307
    .local v2, "notify":Z
    const-wide/16 v3, 0x0

    packed-switch p1, :pswitch_data_78

    :pswitch_13
    goto :goto_69

    .line 328
    :pswitch_14
    iget-wide v5, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_30

    .line 329
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v5

    move-object v6, v5

    .line 331
    .local v6, "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    const-string v8, "TLS_PROTO_FAILED"

    const-string v9, "TLS_CIPHER_FAILED"

    .line 332
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    sub-long/2addr v10, v12

    .line 331
    const/4 v7, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/android/org/conscrypt/metrics/StatsLog;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 333
    iput-wide v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 335
    .end local v6    # "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    :cond_30
    const/4 v2, 0x1

    .line 336
    goto :goto_69

    .line 324
    :pswitch_32
    const/4 v2, 0x1

    .line 325
    goto :goto_69

    .line 313
    :pswitch_34
    iget-wide v5, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_60

    .line 314
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v5

    move-object v6, v5

    .line 315
    .restart local v6    # "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    .line 316
    invoke-virtual {v5}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    sub-long/2addr v10, v12

    .line 315
    const/4 v7, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/android/org/conscrypt/metrics/StatsLog;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 318
    iput-wide v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 320
    .end local v6    # "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    :cond_60
    const/4 v2, 0x1

    .line 321
    goto :goto_69

    .line 309
    :pswitch_62
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeStartedMillis:J

    .line 310
    nop

    .line 342
    :goto_69
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    .line 343
    if-eqz v2, :cond_72

    .line 344
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 346
    :cond_72
    monitor-exit v1

    return v0

    .line 347
    .end local v0    # "previousState":I
    .end local v2    # "notify":Z
    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v0

    nop

    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_62
        :pswitch_13
        :pswitch_34
        :pswitch_32
        :pswitch_13
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private blacklist waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 619
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :goto_6
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3a

    if-eq v1, v3, :cond_2c

    .line 624
    :try_start_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_3a

    .line 628
    goto :goto_6

    .line 625
    :catch_1c
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 627
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v2

    .line 631
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :cond_2c
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-eq v1, v3, :cond_32

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 632
    :cond_32
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    throw v1

    .line 634
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method public final blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 665
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 659
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 529
    return-void

    .line 532
    :cond_5
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->transitionTo(I)I

    move-result v1

    .line 533
    .local v1, "previousState":I
    if-ne v1, v0, :cond_e

    .line 534
    return-void

    .line 538
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 539
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 546
    const/4 v0, 0x2

    if-lt v1, v0, :cond_23

    .line 547
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 548
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_3c

    .line 554
    :cond_23
    :try_start_23
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_31

    .line 556
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v0, :cond_2f

    .line 557
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 560
    :cond_2f
    nop

    .line 561
    return-void

    .line 556
    :catchall_31
    move-exception v0

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v2, :cond_3b

    .line 557
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 559
    :cond_3b
    throw v0

    .line 553
    :catchall_3c
    move-exception v0

    .line 554
    :try_start_3d
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    .line 556
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v2, :cond_49

    .line 557
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 560
    :cond_49
    throw v0

    .line 556
    :catchall_4a
    move-exception v0

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v2, :cond_54

    .line 557
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->in:Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    .line 559
    :cond_54
    throw v0
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method final blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getChannelId()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 353
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->createInputStream()Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 368
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->createOutputStream()Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 387
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 389
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->waitForHandshake()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 392
    goto :goto_b

    .line 390
    :catch_a
    move-exception v0

    .line 394
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getUseClientMode()Z
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 590
    nop

    .line 591
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 590
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 592
    return-void
.end method

.method final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 596
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 597
    return-void
.end method

.method final blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 3
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 600
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 601
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 602
    return-void
.end method

.method public final blacklist setChannelIdEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 469
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    .line 470
    return-void
.end method

.method public final blacklist test-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 479
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 480
    return-void
.end method

.method public final whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 409
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnableSessionCreation(Z)V

    .line 410
    return-void
.end method

.method public final whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public final whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public blacklist test-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 566
    return-void
.end method

.method public final greylist-max-q test-api setHostname(Ljava/lang/String;)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 455
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public final whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 514
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setNeedClientAuth(Z)V

    .line 515
    return-void
.end method

.method public final whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .line 197
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 198
    return-void
.end method

.method public final whitelist test-api setUseClientMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 499
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    .line 500
    return-void
.end method

.method public final greylist-max-q test-api setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 464
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    .line 465
    return-void
.end method

.method public final whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 519
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setWantClientAuth(Z)V

    .line 520
    return-void
.end method

.method public final whitelist test-api startHandshake()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 205
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_2c

    .line 208
    :try_start_6
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_29

    .line 210
    :try_start_9
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I

    if-nez v2, :cond_23

    .line 211
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->transitionTo(I)I

    .line 212
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshake()V

    .line 213
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->createInputStream()Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;

    .line 214
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->createOutputStream()Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    .line 223
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_26

    .line 224
    :try_start_1d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->doHandshake()V

    .line 225
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_29

    .line 233
    nop

    .line 234
    return-void

    .line 221
    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_26

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_29

    return-void

    .line 223
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :try_start_28
    throw v2

    .line 225
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_29

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2c} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2c} :catch_2c

    .line 229
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket;
    :catch_2c
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 232
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 228
    throw v0
.end method
