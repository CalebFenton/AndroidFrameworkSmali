.class final Lsun/security/ssl/SSLAlgorithmConstraints;
.super Ljava/lang/Object;
.source "SSLAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;,
        Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;,
        Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;,
        Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;
    }
.end annotation


# static fields
.field private static final tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

.field private static final x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;


# instance fields
.field private enabledX509DisabledAlgConstraints:Z

.field private peerAlgConstraints:Ljava/security/AlgorithmConstraints;

.field private userAlgConstraints:Ljava/security/AlgorithmConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;-><init>()V

    #@5
    .line 49
    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@7
    .line 52
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;

    #@9
    invoke-direct {v0}, Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;-><init>()V

    #@c
    .line 51
    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 48
    return-void
.end method

.method constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@8
    .line 56
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@b
    .line 59
    iput-object p1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@d
    .line 58
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "withDefaultCertPathConstraints"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@8
    .line 56
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@b
    .line 76
    if-eqz p1, :cond_0

    #@d
    .line 78
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@14
    move-result-object v0

    #@15
    .line 77
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@17
    .line 81
    :cond_0
    if-nez p2, :cond_1

    #@19
    .line 82
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@1c
    .line 75
    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "supportedAlgorithms"    # [Ljava/lang/String;
    .param p3, "withDefaultCertPathConstraints"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@8
    .line 56
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@b
    .line 102
    if-eqz p1, :cond_0

    #@d
    .line 104
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@14
    move-result-object v0

    #@15
    .line 103
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@17
    .line 106
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    #@19
    invoke-direct {v0, p2}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    #@1c
    .line 105
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@1e
    .line 109
    :cond_0
    if-nez p3, :cond_1

    #@20
    .line 110
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@23
    .line 101
    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "withDefaultCertPathConstraints"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@8
    .line 56
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@b
    .line 64
    if-eqz p1, :cond_0

    #@d
    .line 66
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@14
    move-result-object v0

    #@15
    .line 65
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@17
    .line 69
    :cond_0
    if-nez p2, :cond_1

    #@19
    .line 70
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@1c
    .line 63
    :cond_1
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "supportedAlgorithms"    # [Ljava/lang/String;
    .param p3, "withDefaultCertPathConstraints"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@6
    .line 54
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@8
    .line 56
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@b
    .line 88
    if-eqz p1, :cond_0

    #@d
    .line 90
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@14
    move-result-object v0

    #@15
    .line 89
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@17
    .line 92
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    #@19
    invoke-direct {v0, p2}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    #@1c
    .line 91
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@1e
    .line 95
    :cond_0
    if-nez p3, :cond_1

    #@20
    .line 96
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@23
    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    #@1
    .line 119
    .local v0, "permitted":Z
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 120
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@7
    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@a
    move-result v0

    #@b
    .line 124
    .end local v0    # "permitted":Z
    :cond_0
    if-eqz v0, :cond_1

    #@d
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 125
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@13
    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@16
    move-result v0

    #@17
    .line 129
    :cond_1
    if-eqz v0, :cond_2

    #@19
    .line 130
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@1b
    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@1e
    move-result v0

    #@1f
    .line 134
    :cond_2
    if-eqz v0, :cond_3

    #@21
    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 135
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@27
    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@2a
    move-result v0

    #@2b
    .line 139
    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 168
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    #@1
    .line 170
    .local v0, "permitted":Z
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 171
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@7
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@a
    move-result v0

    #@b
    .line 175
    .end local v0    # "permitted":Z
    :cond_0
    if-eqz v0, :cond_1

    #@d
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 176
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@13
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@16
    move-result v0

    #@17
    .line 180
    :cond_1
    if-eqz v0, :cond_2

    #@19
    .line 181
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@1b
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@1e
    move-result v0

    #@1f
    .line 185
    :cond_2
    if-eqz v0, :cond_3

    #@21
    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 186
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@27
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@2a
    move-result v0

    #@2b
    .line 190
    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    #@1
    .line 146
    .local v0, "permitted":Z
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 147
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->peerAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@7
    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    #@a
    move-result v0

    #@b
    .line 150
    .end local v0    # "permitted":Z
    :cond_0
    if-eqz v0, :cond_1

    #@d
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 151
    iget-object v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->userAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@13
    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    #@16
    move-result v0

    #@17
    .line 154
    :cond_1
    if-eqz v0, :cond_2

    #@19
    .line 155
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@1b
    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    #@1e
    move-result v0

    #@1f
    .line 158
    :cond_2
    if-eqz v0, :cond_3

    #@21
    iget-boolean v1, p0, Lsun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 159
    sget-object v1, Lsun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    #@27
    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    #@2a
    move-result v0

    #@2b
    .line 162
    :cond_3
    return v0
.end method
