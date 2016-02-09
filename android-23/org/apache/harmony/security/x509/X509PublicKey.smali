.class public final Lorg/apache/harmony/security/x509/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B

.field private final keyBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "encoded"    # [B
    .param p3, "keyBytes"    # [B

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    #@5
    .line 29
    iput-object p2, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    #@7
    .line 30
    iput-object p3, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->keyBytes:[B

    #@9
    .line 27
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    #@2
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "algorithm = "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 48
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 49
    const-string/jumbo v1, ", params unparsed, unparsed keybits = \n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method
