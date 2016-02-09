.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static thisAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private port:I

.field private prompt:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private rt:Ljava/net/Authenticator$RequestorType;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 3
    .param p0, "rHost"    # Ljava/lang/String;
    .param p1, "rAddr"    # Ljava/net/InetAddress;
    .param p2, "rPort"    # I
    .param p3, "rProtocol"    # Ljava/lang/String;
    .param p4, "rPrompt"    # Ljava/lang/String;
    .param p5, "rScheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-class v1, Ljava/net/Authenticator;

    #@3
    monitor-enter v1

    #@4
    .line 176
    :try_start_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 177
    return-object v2

    #@a
    .line 181
    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@c
    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    #@e
    .line 182
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@10
    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    #@12
    .line 183
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@14
    iput p2, v0, Ljava/net/Authenticator;->port:I

    #@16
    .line 184
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@18
    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    #@1a
    .line 185
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@1c
    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    #@1e
    .line 186
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@20
    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    #@22
    .line 187
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@24
    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@26
    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    #@28
    .line 191
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@2a
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    monitor-exit v1

    #@2f
    return-object v0

    #@30
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 2
    .param p0, "rHost"    # Ljava/lang/String;
    .param p1, "rAddr"    # Ljava/net/InetAddress;
    .param p2, "rPort"    # I
    .param p3, "rProtocol"    # Ljava/lang/String;
    .param p4, "rPrompt"    # Ljava/lang/String;
    .param p5, "rScheme"    # Ljava/lang/String;
    .param p6, "rURL"    # Ljava/net/URL;
    .param p7, "reqType"    # Ljava/net/Authenticator$RequestorType;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 232
    return-object v1

    #@6
    .line 236
    :cond_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@8
    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    #@a
    .line 237
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@c
    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    #@e
    .line 238
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@10
    iput p2, v0, Ljava/net/Authenticator;->port:I

    #@12
    .line 239
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@14
    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    #@16
    .line 240
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@18
    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    #@1a
    .line 241
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@1c
    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    #@1e
    .line 242
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@20
    iput-object p6, v0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    #@22
    .line 243
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@24
    iput-object p7, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    #@26
    .line 247
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@28
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 3
    .param p0, "rAddr"    # Ljava/net/InetAddress;
    .param p1, "rPort"    # I
    .param p2, "rProtocol"    # Ljava/lang/String;
    .param p3, "rPrompt"    # Ljava/lang/String;
    .param p4, "rScheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-class v1, Ljava/net/Authenticator;

    #@3
    monitor-enter v1

    #@4
    .line 126
    :try_start_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 127
    return-object v2

    #@a
    .line 131
    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@c
    iput-object p0, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    #@e
    .line 132
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@10
    iput p1, v0, Ljava/net/Authenticator;->port:I

    #@12
    .line 133
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@14
    iput-object p2, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    #@16
    .line 134
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@18
    iput-object p3, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    #@1a
    .line 135
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@1c
    iput-object p4, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    #@1e
    .line 136
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@20
    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@22
    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    #@24
    .line 140
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@26
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result-object v0

    #@2a
    monitor-exit v1

    #@2b
    return-object v0

    #@2c
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public static setDefault(Ljava/net/Authenticator;)V
    .locals 0
    .param p0, "a"    # Ljava/net/Authenticator;

    #@0
    .prologue
    .line 151
    sput-object p0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    #@2
    .line 150
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 1

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    #@0
    .prologue
    .line 64
    iget v0, p0, Ljava/net/Authenticator;->port:I

    #@2
    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    #@2
    return-object v0
.end method
