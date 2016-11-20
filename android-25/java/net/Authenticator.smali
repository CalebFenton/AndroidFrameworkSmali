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
.field private static theAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private requestingAuthType:Ljava/net/Authenticator$RequestorType;

.field private requestingHost:Ljava/lang/String;

.field private requestingPort:I

.field private requestingPrompt:Ljava/lang/String;

.field private requestingProtocol:Ljava/lang/String;

.field private requestingScheme:Ljava/lang/String;

.field private requestingSite:Ljava/net/InetAddress;

.field private requestingURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 229
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v2

    #@5
    .line 230
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    #@7
    .line 232
    new-instance v1, Ljava/net/NetPermission;

    #@9
    const-string/jumbo v3, "requestPasswordAuthentication"

    #@c
    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@f
    .line 233
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@12
    .line 236
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_0
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    #@14
    .line 237
    .local v0, "a":Ljava/net/Authenticator;
    if-nez v0, :cond_1

    #@16
    .line 238
    return-object v4

    #@17
    .line 240
    :cond_1
    monitor-enter v0

    #@18
    .line 241
    :try_start_0
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    #@1b
    .line 242
    iput-object p0, v0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    #@1d
    .line 243
    iput-object p1, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    #@1f
    .line 244
    iput p2, v0, Ljava/net/Authenticator;->requestingPort:I

    #@21
    .line 245
    iput-object p3, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    #@23
    .line 246
    iput-object p4, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    #@25
    .line 247
    iput-object p5, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    #@27
    .line 248
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result-object v3

    #@2b
    monitor-exit v0

    #@2c
    return-object v3

    #@2d
    .line 240
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v0

    #@2f
    throw v3
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/net/URL;
    .param p7, "reqType"    # Ljava/net/Authenticator$RequestorType;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 296
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v2

    #@5
    .line 297
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    #@7
    .line 299
    new-instance v1, Ljava/net/NetPermission;

    #@9
    const-string/jumbo v3, "requestPasswordAuthentication"

    #@c
    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@f
    .line 300
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@12
    .line 303
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_0
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    #@14
    .line 304
    .local v0, "a":Ljava/net/Authenticator;
    if-nez v0, :cond_1

    #@16
    .line 305
    return-object v4

    #@17
    .line 307
    :cond_1
    monitor-enter v0

    #@18
    .line 308
    :try_start_0
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    #@1b
    .line 309
    iput-object p0, v0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    #@1d
    .line 310
    iput-object p1, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    #@1f
    .line 311
    iput p2, v0, Ljava/net/Authenticator;->requestingPort:I

    #@21
    .line 312
    iput-object p3, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    #@23
    .line 313
    iput-object p4, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    #@25
    .line 314
    iput-object p5, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    #@27
    .line 315
    iput-object p6, v0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    #@29
    .line 316
    iput-object p7, v0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    #@2b
    .line 317
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v3

    #@2f
    monitor-exit v0

    #@30
    return-object v3

    #@31
    .line 307
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v0

    #@33
    throw v3
.end method

.method public static requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 5
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "prompt"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 167
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v2

    #@5
    .line 168
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    #@7
    .line 170
    new-instance v1, Ljava/net/NetPermission;

    #@9
    const-string/jumbo v3, "requestPasswordAuthentication"

    #@c
    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@f
    .line 171
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@12
    .line 174
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_0
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    #@14
    .line 175
    .local v0, "a":Ljava/net/Authenticator;
    if-nez v0, :cond_1

    #@16
    .line 176
    return-object v4

    #@17
    .line 178
    :cond_1
    monitor-enter v0

    #@18
    .line 179
    :try_start_0
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    #@1b
    .line 180
    iput-object p0, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    #@1d
    .line 181
    iput p1, v0, Ljava/net/Authenticator;->requestingPort:I

    #@1f
    .line 182
    iput-object p2, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    #@21
    .line 183
    iput-object p3, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    #@23
    .line 184
    iput-object p4, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    #@25
    .line 185
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v3

    #@29
    monitor-exit v0

    #@2a
    return-object v3

    #@2b
    .line 178
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit v0

    #@2d
    throw v3
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    iput-object v1, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    #@3
    .line 92
    iput-object v1, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    #@5
    .line 93
    const/4 v0, -0x1

    #@6
    iput v0, p0, Ljava/net/Authenticator;->requestingPort:I

    #@8
    .line 94
    iput-object v1, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    #@a
    .line 95
    iput-object v1, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    #@c
    .line 96
    iput-object v1, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    #@e
    .line 97
    iput-object v1, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    #@10
    .line 98
    sget-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@12
    iput-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    #@14
    .line 90
    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/net/Authenticator;)V
    .locals 4
    .param p0, "a"    # Ljava/net/Authenticator;

    #@0
    .prologue
    const-class v3, Ljava/net/Authenticator;

    #@2
    monitor-enter v3

    #@3
    .line 123
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@6
    move-result-object v1

    #@7
    .line 124
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@9
    .line 126
    new-instance v0, Ljava/net/NetPermission;

    #@b
    const-string/jumbo v2, "setDefaultAuthenticator"

    #@e
    invoke-direct {v0, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@11
    .line 127
    .local v0, "setDefaultPermission":Ljava/net/NetPermission;
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@14
    .line 130
    .end local v0    # "setDefaultPermission":Ljava/net/NetPermission;
    :cond_0
    sput-object p0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v3

    #@17
    .line 122
    return-void

    #@18
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 1

    #@0
    .prologue
    .line 398
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    #@0
    .prologue
    .line 353
    iget v0, p0, Ljava/net/Authenticator;->requestingPort:I

    #@2
    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .locals 1

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    #@2
    return-object v0
.end method
