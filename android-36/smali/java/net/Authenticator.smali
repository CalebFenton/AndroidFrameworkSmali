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
.field private static greylist theAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private greylist-max-o requestingAuthType:Ljava/net/Authenticator$RequestorType;

.field private greylist-max-o requestingHost:Ljava/lang/String;

.field private greylist-max-o requestingPort:I

.field private greylist-max-o requestingPrompt:Ljava/lang/String;

.field private greylist-max-o requestingProtocol:Ljava/lang/String;

.field private greylist-max-o requestingScheme:Ljava/lang/String;

.field private greylist-max-o requestingSite:Ljava/net/InetAddress;

.field private greylist-max-o requestingURL:Ljava/net/URL;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;

    .line 229
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 230
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 231
    new-instance v1, Ljava/net/NetPermission;

    const-string v2, "requestPasswordAuthentication"

    invoke-direct {v1, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 236
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_10
    sget-object v1, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    .line 237
    .local v1, "a":Ljava/net/Authenticator;
    if-nez v1, :cond_16

    .line 238
    const/4 v2, 0x0

    return-object v2

    .line 240
    :cond_16
    monitor-enter v1

    .line 241
    :try_start_17
    invoke-direct {v1}, Ljava/net/Authenticator;->reset()V

    .line 242
    iput-object p0, v1, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    .line 243
    iput-object p1, v1, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 244
    iput p2, v1, Ljava/net/Authenticator;->requestingPort:I

    .line 245
    iput-object p3, v1, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 246
    iput-object p4, v1, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 247
    iput-object p5, v1, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 248
    invoke-virtual {v1}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 249
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public static whitelist test-api requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .registers 11
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/net/URL;
    .param p7, "reqType"    # Ljava/net/Authenticator$RequestorType;

    .line 296
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 297
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 298
    new-instance v1, Ljava/net/NetPermission;

    const-string v2, "requestPasswordAuthentication"

    invoke-direct {v1, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 303
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_10
    sget-object v1, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    .line 304
    .local v1, "a":Ljava/net/Authenticator;
    if-nez v1, :cond_16

    .line 305
    const/4 v2, 0x0

    return-object v2

    .line 307
    :cond_16
    monitor-enter v1

    .line 308
    :try_start_17
    invoke-direct {v1}, Ljava/net/Authenticator;->reset()V

    .line 309
    iput-object p0, v1, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    .line 310
    iput-object p1, v1, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 311
    iput p2, v1, Ljava/net/Authenticator;->requestingPort:I

    .line 312
    iput-object p3, v1, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 313
    iput-object p4, v1, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 314
    iput-object p5, v1, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 315
    iput-object p6, v1, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    .line 316
    iput-object p7, v1, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    .line 317
    invoke-virtual {v1}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 318
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public static whitelist test-api requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 8
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "prompt"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .line 167
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 168
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 169
    new-instance v1, Ljava/net/NetPermission;

    const-string v2, "requestPasswordAuthentication"

    invoke-direct {v1, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 174
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_10
    sget-object v1, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    .line 175
    .local v1, "a":Ljava/net/Authenticator;
    if-nez v1, :cond_16

    .line 176
    const/4 v2, 0x0

    return-object v2

    .line 178
    :cond_16
    monitor-enter v1

    .line 179
    :try_start_17
    invoke-direct {v1}, Ljava/net/Authenticator;->reset()V

    .line 180
    iput-object p0, v1, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 181
    iput p1, v1, Ljava/net/Authenticator;->requestingPort:I

    .line 182
    iput-object p2, v1, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 183
    iput-object p3, v1, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 184
    iput-object p4, v1, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 185
    invoke-virtual {v1}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 186
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method private greylist-max-o reset()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/Authenticator;->requestingPort:I

    .line 94
    iput-object v0, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    .line 98
    sget-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    .line 99
    return-void
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljava/net/Authenticator;)V
    .registers 5
    .param p0, "a"    # Ljava/net/Authenticator;

    const-class v0, Ljava/net/Authenticator;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 124
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_13

    .line 125
    new-instance v2, Ljava/net/NetPermission;

    const-string v3, "setDefaultAuthenticator"

    invoke-direct {v2, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "setDefaultPermission":Ljava/net/NetPermission;
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 130
    .end local v2    # "setDefaultPermission":Ljava/net/NetPermission;
    :cond_13
    sput-object p0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 131
    monitor-exit v0

    return-void

    .line 122
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "a":Ljava/net/Authenticator;
    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method


# virtual methods
.method protected whitelist test-api getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .registers 2

    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist test-api getRequestingHost()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    return-object v0
.end method

.method protected final whitelist test-api getRequestingPort()I
    .registers 2

    .line 353
    iget v0, p0, Ljava/net/Authenticator;->requestingPort:I

    return v0
.end method

.method protected final whitelist test-api getRequestingPrompt()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final whitelist test-api getRequestingProtocol()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final whitelist test-api getRequestingScheme()Ljava/lang/String;
    .registers 2

    .line 388
    iget-object v0, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final whitelist test-api getRequestingSite()Ljava/net/InetAddress;
    .registers 2

    .line 344
    iget-object v0, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected whitelist test-api getRequestingURL()Ljava/net/URL;
    .registers 2

    .line 411
    iget-object v0, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    return-object v0
.end method

.method protected whitelist test-api getRequestorType()Ljava/net/Authenticator$RequestorType;
    .registers 2

    .line 423
    iget-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
