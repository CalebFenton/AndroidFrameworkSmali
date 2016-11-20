.class public Lsun/security/internal/spec/TlsKeyMaterialSpec;
.super Ljava/lang/Object;
.source "TlsKeyMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0xb480bf039c33324L


# instance fields
.field private final clientCipherKey:Ljavax/crypto/SecretKey;

.field private final clientIv:Ljavax/crypto/spec/IvParameterSpec;

.field private final clientMacKey:Ljavax/crypto/SecretKey;

.field private final serverCipherKey:Ljavax/crypto/SecretKey;

.field private final serverIv:Ljavax/crypto/spec/IvParameterSpec;

.field private final serverMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 7
    .param p1, "clientMacKey"    # Ljavax/crypto/SecretKey;
    .param p2, "serverMacKey"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, v3

    #@5
    move-object v5, v3

    #@6
    move-object v6, v3

    #@7
    .line 66
    invoke-direct/range {v0 .. v6}, Lsun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    #@a
    .line 65
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 7
    .param p1, "clientMacKey"    # Ljavax/crypto/SecretKey;
    .param p2, "serverMacKey"    # Ljavax/crypto/SecretKey;
    .param p3, "clientCipherKey"    # Ljavax/crypto/SecretKey;
    .param p4, "serverCipherKey"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, v4

    #@7
    .line 84
    invoke-direct/range {v0 .. v6}, Lsun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    #@a
    .line 83
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 2
    .param p1, "clientMacKey"    # Ljavax/crypto/SecretKey;
    .param p2, "serverMacKey"    # Ljavax/crypto/SecretKey;
    .param p3, "clientCipherKey"    # Ljavax/crypto/SecretKey;
    .param p4, "clientIv"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p5, "serverCipherKey"    # Ljavax/crypto/SecretKey;
    .param p6, "serverIv"    # Ljavax/crypto/spec/IvParameterSpec;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "MAC keys must not be null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 108
    :cond_1
    iput-object p1, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientMacKey:Ljavax/crypto/SecretKey;

    #@12
    .line 109
    iput-object p2, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverMacKey:Ljavax/crypto/SecretKey;

    #@14
    .line 110
    iput-object p3, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientCipherKey:Ljavax/crypto/SecretKey;

    #@16
    .line 111
    iput-object p5, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverCipherKey:Ljavax/crypto/SecretKey;

    #@18
    .line 112
    iput-object p4, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientIv:Ljavax/crypto/spec/IvParameterSpec;

    #@1a
    .line 113
    iput-object p6, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverIv:Ljavax/crypto/spec/IvParameterSpec;

    #@1c
    .line 104
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    const-string/jumbo v0, "TlsKeyMaterial"

    #@3
    return-object v0
.end method

.method public getClientCipherKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientCipherKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getClientIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientIv:Ljavax/crypto/spec/IvParameterSpec;

    #@2
    return-object v0
.end method

.method public getClientMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientMacKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getServerCipherKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverCipherKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getServerIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverIv:Ljavax/crypto/spec/IvParameterSpec;

    #@2
    return-object v0
.end method

.method public getServerMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverMacKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method
