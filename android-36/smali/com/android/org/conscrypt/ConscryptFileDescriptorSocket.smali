.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;,
        Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final blacklist DBG_STATE:Z = false


# instance fields
.field private final blacklist activeSession:Lcom/android/org/conscrypt/ActiveSession;

.field private blacklist channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

.field private final blacklist externalSession:Ljavax/net/ssl/SSLSession;

.field private final blacklist guard:Ljava/lang/Object;

.field private blacklist handshakeStartedMillis:J

.field private blacklist handshakeTimeoutMilliseconds:I

.field private blacklist is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

.field private blacklist os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

.field private final blacklist ssl:Lcom/android/org/conscrypt/NativeSsl;

.field private final blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist state:I

.field private blacklist writeTimeoutMilliseconds:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 1

    iget-object p0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 1

    iget p0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwriteTimeoutMilliseconds(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 1

    iget p0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprovideHandshakeSession(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprovideSession(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 114
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 121
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 129
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 130
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 131
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 132
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 114
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 121
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 137
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 138
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 139
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 140
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
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

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 114
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 121
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 153
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 154
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 155
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 156
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 114
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 121
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 145
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 146
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 147
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 148
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
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

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 114
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 121
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 161
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 162
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 163
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 164
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
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

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 97
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 114
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 121
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 169
    iput-object p5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 170
    invoke-static {p5, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 171
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 172
    return-void
.end method

.method private blacklist assertReadableOrWriteableState()V
    .registers 4

    .line 468
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_26

    .line 472
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 469
    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 1185
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist closeUnderlyingSocket()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V

    .line 1057
    return-void
.end method

.method private blacklist free()V
    .registers 2

    .line 1060
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1061
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->close()V

    .line 1062
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    .line 1064
    :cond_12
    return-void
.end method

.method private static blacklist newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 3
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 176
    invoke-static {p0, p1, p1, p1}, Lcom/android/org/conscrypt/NativeSsl;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 3

    .line 690
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_e

    .line 691
    :cond_a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    .line 690
    :goto_e
    return-object v0
.end method

.method private blacklist provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 696
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 697
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_10

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    goto :goto_14

    .line 698
    :cond_10
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_14
    monitor-exit v0

    .line 697
    return-object v1

    .line 699
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 5

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "handshakeCompleted":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 663
    :try_start_4
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_17

    .line 664
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_15

    :cond_11
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v2

    :goto_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_39

    return-object v2

    .line 668
    :cond_17
    :try_start_17
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v0, v2

    .line 669
    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 670
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2d
    .catchall {:try_start_17 .. :try_end_2b} :catchall_39

    .line 671
    const/4 v0, 0x1

    .line 675
    :cond_2c
    goto :goto_2e

    .line 673
    :catch_2d
    move-exception v2

    .line 676
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_39

    .line 678
    if-nez v0, :cond_36

    .line 681
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    return-object v1

    .line 684
    :cond_36
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v1

    .line 676
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private blacklist sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1189
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist shutdownAndFreeSslNative()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 1041
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/NativeSsl;->shutdown(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_17
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_18

    .line 1050
    :catchall_f
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1051
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1052
    throw v0

    .line 1042
    :catch_17
    move-exception v0

    .line 1050
    :goto_18
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1051
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 1052
    nop

    .line 1053
    return-void
.end method

.method private blacklist transitionTo(I)V
    .registers 13
    .param p1, "newState"    # I

    .line 1194
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v0, p1, :cond_5

    .line 1195
    return-void

    .line 1198
    :cond_5
    const-wide/16 v0, 0x0

    sparse-switch p1, :sswitch_data_78

    goto :goto_74

    .line 1216
    :sswitch_b
    iget-wide v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2a

    .line 1218
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v3

    .line 1219
    .local v3, "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    if-eqz v3, :cond_28

    .line 1220
    nop

    .line 1221
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    sub-long v7, v4, v6

    .line 1220
    const/4 v4, 0x0

    const-string v5, "TLS_PROTO_FAILED"

    const-string v6, "TLS_CIPHER_FAILED"

    invoke-interface/range {v3 .. v8}, Lcom/android/org/conscrypt/metrics/StatsLog;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1223
    :cond_28
    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 1225
    .end local v3    # "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    :cond_2a
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_74

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_74

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_74

    .line 1226
    new-instance v0, Lcom/android/org/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SessionSnapshot;-><init>(Lcom/android/org/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_74

    .line 1204
    :sswitch_47
    iget-wide v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_74

    .line 1205
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v3

    .line 1206
    .restart local v3    # "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    if-eqz v3, :cond_6a

    .line 1207
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ActiveSession;->getProtocol()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 1208
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ActiveSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    .line 1209
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    sub-long/2addr v7, v9

    .line 1207
    const/4 v4, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/android/org/conscrypt/metrics/StatsLog;->countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1211
    :cond_6a
    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 1212
    .end local v3    # "statsLog":Lcom/android/org/conscrypt/metrics/StatsLog;
    goto :goto_74

    .line 1200
    :sswitch_6d
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getMillisSinceBoot()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeStartedMillis:J

    .line 1201
    nop

    .line 1236
    :cond_74
    :goto_74
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 1237
    return-void

    nop

    :sswitch_data_78
    .sparse-switch
        0x2 -> :sswitch_6d
        0x5 -> :sswitch_47
        0x8 -> :sswitch_b
    .end sparse-switch
.end method

.method private blacklist waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->startHandshake()V

    .line 478
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 479
    :goto_6
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3a

    if-eq v1, v3, :cond_2c

    .line 483
    :try_start_16
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_3a

    .line 487
    goto :goto_6

    .line 484
    :catch_1c
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 486
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v2

    .line 490
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :cond_2c
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-eq v1, v3, :cond_32

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 491
    :cond_32
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 493
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
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

    .line 1181
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .line 1164
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 1175
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .line 1158
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clientCertificateRequested([B[I[[B)V
    .registers 5
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 312
    return-void
.end method

.method public final blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .line 317
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-nez v0, :cond_5

    .line 979
    return-void

    .line 982
    :cond_5
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 983
    :try_start_8
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 985
    monitor-exit v0

    return-void

    .line 988
    :cond_10
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 989
    .local v1, "oldState":I
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 991
    if-nez v1, :cond_24

    .line 995
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 996
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 998
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 999
    monitor-exit v0

    return-void

    .line 1002
    :cond_24
    const/4 v2, 0x5

    if-eq v1, v2, :cond_36

    const/4 v2, 0x4

    if-eq v1, v2, :cond_36

    .line 1007
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->interrupt()V

    .line 1009
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1010
    monitor-exit v0

    return-void

    .line 1013
    :cond_36
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1016
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 1017
    .local v2, "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 1018
    .end local v1    # "oldState":I
    .local v3, "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_57

    .line 1021
    if-nez v2, :cond_44

    if-eqz v3, :cond_49

    .line 1022
    :cond_44
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->interrupt()V

    .line 1028
    :cond_49
    if-eqz v2, :cond_4e

    .line 1029
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->awaitPendingOps()V

    .line 1031
    :cond_4e
    if-eqz v3, :cond_53

    .line 1032
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->awaitPendingOps()V

    .line 1035
    :cond_53
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V

    .line 1036
    return-void

    .line 1018
    .end local v2    # "sslInputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local v3    # "sslOutputStream":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 898
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    goto :goto_17

    .line 901
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    .line 902
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 899
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 901
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected final whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1086
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 1087
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    .line 1089
    :cond_9
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-eqz v0, :cond_1a

    .line 1090
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1f

    .line 1091
    const/16 v1, 0x8

    :try_start_12
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 1092
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_19
    throw v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1f

    .line 1095
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :cond_1a
    :goto_1a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1096
    nop

    .line 1097
    return-void

    .line 1095
    :catchall_1f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1096
    throw v0
.end method

.method final blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    return-object v0
.end method

.method public final whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1131
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1126
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 832
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 833
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 837
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    .line 838
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v0

    return-object v0

    .line 834
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 837
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 829
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 754
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1136
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1137
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_12

    .line 1138
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 1137
    return-object v1

    .line 1139
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 710
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1d

    .line 711
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$2;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 718
    :cond_1d
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 719
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public final whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 424
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 425
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 429
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    if-nez v1, :cond_17

    .line 430
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 433
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->is:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 434
    .local v1, "returnVal":Ljava/io/InputStream;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 439
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 440
    return-object v1

    .line 426
    .end local v1    # "returnVal":Ljava/io/InputStream;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 434
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 928
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 448
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 449
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 453
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    if-nez v1, :cond_17

    .line 454
    new-instance v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 457
    :cond_17
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->os:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 458
    .local v1, "returnVal":Ljava/io/OutputStream;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 463
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 464
    return-object v1

    .line 450
    .end local v1    # "returnVal":Ljava/io/OutputStream;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v1

    .line 458
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final blacklist getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .line 1170
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 1144
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 1145
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1146
    return-object v0
.end method

.method public final whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public final blacklist getSoWriteTimeout()I
    .registers 2

    .line 956
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public final whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 734
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 749
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 892
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getUseClientMode()Z
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 923
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final blacklist onNewSessionEstablished(J)V
    .registers 6
    .param p1, "sslSessionNativePtr"    # J

    .line 360
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 365
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 367
    .local v0, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 370
    .local v1, "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    .line 371
    .local v2, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 374
    .end local v0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v1    # "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_17

    .line 372
    :catch_16
    move-exception v0

    .line 375
    :goto_17
    return-void
.end method

.method public final blacklist onSSLStateChange(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "val"    # I

    .line 329
    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    .line 331
    return-void

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 336
    :try_start_8
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 338
    monitor-exit v0

    return-void

    .line 343
    :cond_10
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 344
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_25

    .line 347
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->notifyHandshakeCompletedListeners()V

    .line 349
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 351
    :try_start_1b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v0

    .line 344
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist selectApplicationProtocol([B)I
    .registers 4
    .param p1, "protocols"    # [B

    .line 1112
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1113
    .local v0, "adapter":Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_a

    .line 1114
    const/4 v1, 0x3

    return v1

    .line 1116
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selectApplicationProtocol([B)I

    move-result v1

    return v1
.end method

.method public final blacklist serverCertificateRequested()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .line 323
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public final blacklist serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .line 380
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 1101
    nop

    .line 1102
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 1101
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1103
    return-void
.end method

.method final blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 1107
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1108
    return-void
.end method

.method final blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method public final blacklist setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 802
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 806
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 807
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_13

    .line 812
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    .line 813
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 814
    return-void

    .line 808
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "enabled":Z
    throw v1

    .line 812
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "enabled":Z
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1

    .line 803
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist test-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 855
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 859
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 860
    :try_start_9
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_42

    .line 865
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4a

    .line 867
    if-nez p1, :cond_19

    .line 868
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_41

    .line 871
    :cond_19
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_1f
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_2b

    .line 875
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    move-object v0, v1

    .line 877
    :cond_2b
    if-nez v0, :cond_38

    .line 879
    const-string v1, "prime256v1"

    .line 880
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    move-object v0, v1

    .line 882
    :cond_38
    nop

    .line 883
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_3f
    .catch Ljava/security/InvalidKeyException; {:try_start_1f .. :try_end_3f} :catch_40

    .line 886
    .end local v0    # "ecParams":Ljava/security/spec/ECParameterSpec;
    goto :goto_41

    .line 884
    :catch_40
    move-exception v0

    .line 888
    :goto_41
    return-void

    .line 861
    :cond_42
    :try_start_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    throw v1

    .line 865
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 856
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 729
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 730
    return-void
.end method

.method public final whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 744
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public final whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method public final blacklist test-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 965
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 966
    return-void
.end method

.method public final greylist-max-q test-api setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 789
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public final whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 933
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 934
    return-void
.end method

.method public final whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .line 1151
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 1152
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 1153
    return-void
.end method

.method public final blacklist test-api setSoWriteTimeout(I)V
    .registers 4
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 946
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 948
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    .line 949
    return-void
.end method

.method public final whitelist test-api setUseClientMode(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 912
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 913
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_e

    .line 917
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 918
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 919
    return-void

    .line 914
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "mode":Z
    throw v1

    .line 917
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "mode":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final greylist-max-q test-api setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 773
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 774
    return-void
.end method

.method public final whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 938
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 939
    return-void
.end method

.method public final whitelist test-api startHandshake()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 190
    :try_start_6
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_16b

    .line 191
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 197
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_16d

    .line 199
    const/4 v0, 0x1

    .line 201
    .local v0, "releaseResources":Z
    const/16 v2, 0x8

    :try_start_12
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    const-string v4, "close"

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostname()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v4, v5}, Lcom/android/org/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 209
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v3

    .line 210
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v5

    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 209
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v3

    .line 211
    .local v3, "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v3, :cond_43

    .line 212
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/NativeSslSession;->offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V

    .line 217
    .end local v3    # "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_43
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v3

    .line 218
    .local v3, "savedReadTimeoutMilliseconds":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoWriteTimeout()I

    move-result v4

    .line 219
    .local v4, "savedWriteTimeoutMilliseconds":I
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v5, :cond_59

    .line 220
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 221
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 224
    :cond_59
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5
    :try_end_5c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12 .. :try_end_5c} :catch_144
    .catchall {:try_start_12 .. :try_end_5c} :catchall_142

    .line 225
    :try_start_5c
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v6, v2, :cond_79

    .line 226
    monitor-exit v5
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_13f

    .line 286
    if-eqz v0, :cond_78

    .line 287
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 293
    :try_start_66
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 294
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_75

    .line 298
    :try_start_6f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 301
    goto :goto_78

    .line 299
    :catch_73
    move-exception v1

    goto :goto_78

    .line 295
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v2

    .line 226
    :cond_78
    :goto_78
    return-void

    .line 228
    :cond_79
    :try_start_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_13f

    .line 231
    :try_start_7a
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v6}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/org/conscrypt/NativeSsl;->doHandshake(Ljava/io/FileDescriptor;I)V

    .line 234
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V
    :try_end_96
    .catch Ljava/security/cert/CertificateException; {:try_start_7a .. :try_end_96} :catch_130
    .catch Ljavax/net/ssl/SSLException; {:try_start_7a .. :try_end_96} :catch_109
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7a .. :try_end_96} :catch_144
    .catchall {:try_start_7a .. :try_end_96} :catchall_142

    .line 253
    nop

    .line 255
    :try_start_97
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5
    :try_end_9a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_97 .. :try_end_9a} :catch_144
    .catchall {:try_start_97 .. :try_end_9a} :catchall_142

    .line 256
    :try_start_9a
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v6, v2, :cond_b7

    .line 257
    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_106

    .line 286
    if-eqz v0, :cond_b6

    .line 287
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 293
    :try_start_a4
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 294
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_b3

    .line 298
    :try_start_ad
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 301
    goto :goto_b6

    .line 299
    :catch_b1
    move-exception v1

    goto :goto_b6

    .line 295
    :catchall_b3
    move-exception v2

    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v2

    .line 257
    :cond_b6
    :goto_b6
    return-void

    .line 259
    :cond_b7
    :try_start_b7
    monitor-exit v5
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_106

    .line 262
    :try_start_b8
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v5, :cond_c2

    .line 263
    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoTimeout(I)V

    .line 264
    invoke-virtual {p0, v4}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 267
    :cond_c2
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5
    :try_end_c5
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_b8 .. :try_end_c5} :catch_144
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_142

    .line 268
    :try_start_c5
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_f9

    if-ne v6, v2, :cond_cb

    const/4 v6, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v6, 0x0

    .line 270
    .end local v0    # "releaseResources":Z
    .local v6, "releaseResources":Z
    :goto_cc
    :try_start_cc
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v0, v1, :cond_d5

    .line 271
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    goto :goto_d9

    .line 273
    :cond_d5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 276
    :goto_d9
    if-nez v6, :cond_e0

    .line 279
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 281
    :cond_e0
    monitor-exit v5
    :try_end_e1
    .catchall {:try_start_cc .. :try_end_e1} :catchall_104

    .line 286
    .end local v3    # "savedReadTimeoutMilliseconds":I
    .end local v4    # "savedWriteTimeoutMilliseconds":I
    if-eqz v6, :cond_f8

    .line 287
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 293
    :try_start_e6
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 294
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_f5

    .line 298
    :try_start_ef
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    .line 301
    :goto_f2
    goto :goto_f8

    .line 299
    :catch_f3
    move-exception v0

    goto :goto_f2

    .line 295
    :catchall_f5
    move-exception v1

    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v1

    .line 304
    :cond_f8
    :goto_f8
    return-void

    .line 281
    .end local v6    # "releaseResources":Z
    .restart local v0    # "releaseResources":Z
    .restart local v3    # "savedReadTimeoutMilliseconds":I
    .restart local v4    # "savedWriteTimeoutMilliseconds":I
    :catchall_f9
    move-exception v1

    move v6, v0

    move-object v0, v1

    .end local v0    # "releaseResources":Z
    .restart local v6    # "releaseResources":Z
    :goto_fc
    :try_start_fc
    monitor-exit v5
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_104

    .end local v6    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_fd
    throw v0
    :try_end_fe
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_fd .. :try_end_fe} :catch_101
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fe

    .line 286
    .end local v3    # "savedReadTimeoutMilliseconds":I
    .end local v4    # "savedWriteTimeoutMilliseconds":I
    .restart local v6    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_fe
    move-exception v1

    move v0, v6

    goto :goto_153

    .line 282
    :catch_101
    move-exception v1

    move v0, v6

    goto :goto_145

    .line 281
    .restart local v3    # "savedReadTimeoutMilliseconds":I
    .restart local v4    # "savedWriteTimeoutMilliseconds":I
    :catchall_104
    move-exception v0

    goto :goto_fc

    .line 259
    .end local v6    # "releaseResources":Z
    .restart local v0    # "releaseResources":Z
    :catchall_106
    move-exception v1

    :try_start_107
    monitor-exit v5
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_108
    throw v1

    .line 239
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catch_109
    move-exception v1

    .line 247
    .local v1, "e":Ljavax/net/ssl/SSLException;
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5
    :try_end_10d
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_108 .. :try_end_10d} :catch_144
    .catchall {:try_start_108 .. :try_end_10d} :catchall_142

    .line 248
    :try_start_10d
    iget v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v6, v2, :cond_12a

    .line 249
    monitor-exit v5
    :try_end_112
    .catchall {:try_start_10d .. :try_end_112} :catchall_12d

    .line 286
    if-eqz v0, :cond_129

    .line 287
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v5

    .line 293
    :try_start_117
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 294
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v5
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_126

    .line 298
    :try_start_120
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_124

    .line 301
    goto :goto_129

    .line 299
    :catch_124
    move-exception v2

    goto :goto_129

    .line 295
    :catchall_126
    move-exception v2

    :try_start_127
    monitor-exit v5
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    throw v2

    .line 249
    :cond_129
    :goto_129
    return-void

    .line 251
    :cond_12a
    :try_start_12a
    monitor-exit v5
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_12d

    .line 252
    nop

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_12c
    throw v1
    :try_end_12d
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12c .. :try_end_12d} :catch_144
    .catchall {:try_start_12c .. :try_end_12d} :catchall_142

    .line 251
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_12d
    move-exception v6

    :try_start_12e
    monitor-exit v5
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_12f
    throw v6

    .line 235
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catch_130
    move-exception v1

    .line 236
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 237
    .local v5, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v5, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 238
    nop

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v5
    :try_end_13f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12f .. :try_end_13f} :catch_144
    .catchall {:try_start_12f .. :try_end_13f} :catchall_142

    .line 228
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v5    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_13f
    move-exception v1

    :try_start_140
    monitor-exit v5
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :try_start_141
    throw v1
    :try_end_142
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_141 .. :try_end_142} :catch_144
    .catchall {:try_start_141 .. :try_end_142} :catchall_142

    .line 286
    .end local v3    # "savedReadTimeoutMilliseconds":I
    .end local v4    # "savedWriteTimeoutMilliseconds":I
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :catchall_142
    move-exception v1

    goto :goto_153

    .line 282
    :catch_144
    move-exception v1

    .line 283
    .local v1, "e":Ljavax/net/ssl/SSLProtocolException;
    :goto_145
    :try_start_145
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v4, "Handshake failed"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    throw v3
    :try_end_153
    .catchall {:try_start_145 .. :try_end_153} :catchall_142

    .line 286
    .end local v1    # "e":Ljavax/net/ssl/SSLProtocolException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    :goto_153
    if-eqz v0, :cond_16a

    .line 287
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v3

    .line 293
    :try_start_158
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 294
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v3
    :try_end_161
    .catchall {:try_start_158 .. :try_end_161} :catchall_167

    .line 298
    :try_start_161
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_165

    .line 301
    goto :goto_16a

    .line 299
    :catch_165
    move-exception v2

    goto :goto_16a

    .line 295
    :catchall_167
    move-exception v1

    :try_start_168
    monitor-exit v3
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw v1

    .line 303
    :cond_16a
    :goto_16a
    throw v1

    .line 195
    .end local v0    # "releaseResources":Z
    :cond_16b
    :try_start_16b
    monitor-exit v0

    return-void

    .line 197
    :catchall_16d
    move-exception v1

    monitor-exit v0
    :try_end_16f
    .catchall {:try_start_16b .. :try_end_16f} :catchall_16d

    throw v1
.end method

.method public final blacklist verifyCertificateChain([[BLjava/lang/String;)V
    .registers 8
    .param p1, "certChain"    # [[B
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 394
    if-eqz p1, :cond_40

    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_40

    .line 397
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 399
    .local v0, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 400
    .local v1, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_38

    .line 404
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 407
    invoke-static {v1, v0, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    goto :goto_36

    .line 409
    :cond_28
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "authType":Ljava/lang/String;
    invoke-static {v1, v0, v2, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    .line 416
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "authType":Ljava/lang/String;
    :goto_36
    nop

    .line 417
    return-void

    .line 401
    .restart local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_38
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "No X.509 TrustManager"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v2

    .line 395
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Peer sent no certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v0
    :try_end_48
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_48} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_48

    .line 414
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 413
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method
