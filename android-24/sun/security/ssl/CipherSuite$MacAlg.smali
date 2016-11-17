.class final Lsun/security/ssl/CipherSuite$MacAlg;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MacAlg"
.end annotation


# instance fields
.field final hashBlockSize:I

.field final minimalPaddingSize:I

.field final name:Ljava/lang/String;

.field final size:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "hashBlockSize"    # I
    .param p4, "minimalPaddingSize"    # I

    #@0
    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 545
    iput-object p1, p0, Lsun/security/ssl/CipherSuite$MacAlg;->name:Ljava/lang/String;

    #@5
    .line 546
    iput p2, p0, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    #@7
    .line 547
    iput p3, p0, Lsun/security/ssl/CipherSuite$MacAlg;->hashBlockSize:I

    #@9
    .line 548
    iput p4, p0, Lsun/security/ssl/CipherSuite$MacAlg;->minimalPaddingSize:I

    #@b
    .line 544
    return-void
.end method


# virtual methods
.method newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "secret"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 559
    new-instance v0, Lsun/security/ssl/MAC;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/security/ssl/MAC;-><init>(Lsun/security/ssl/CipherSuite$MacAlg;Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lsun/security/ssl/CipherSuite$MacAlg;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
