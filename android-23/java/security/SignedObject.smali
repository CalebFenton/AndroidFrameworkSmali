.class public final Ljava/security/SignedObject;
.super Ljava/lang/Object;
.source "SignedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9ffbd682a3cd5ffL


# instance fields
.field private content:[B

.field private signature:[B

.field private thealgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/security/PrivateKey;Ljava/security/Signature;)V
    .locals 3
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "signingKey"    # Ljava/security/PrivateKey;
    .param p3, "signingEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 77
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@a
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@d
    .line 80
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@10
    .line 81
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 83
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@16
    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Ljava/security/SignedObject;->content:[B

    #@1c
    .line 86
    invoke-virtual {p3, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@1f
    .line 87
    invoke-virtual {p3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    #@25
    .line 88
    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    #@27
    invoke-virtual {p3, v2}, Ljava/security/Signature;->update([B)V

    #@2a
    .line 89
    invoke-virtual {p3}, Ljava/security/Signature;->sign()[B

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Ljava/security/SignedObject;->signature:[B

    #@30
    .line 74
    return-void

    #@31
    .line 82
    :catchall_0
    move-exception v2

    #@32
    .line 83
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@35
    .line 82
    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 45
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 46
    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    #@6
    array-length v1, v1

    #@7
    new-array v0, v1, [B

    #@9
    .line 47
    .local v0, "tmp":[B
    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    #@b
    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    #@d
    array-length v2, v2

    #@e
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 48
    iput-object v0, p0, Ljava/security/SignedObject;->content:[B

    #@13
    .line 49
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    #@15
    array-length v1, v1

    #@16
    new-array v0, v1, [B

    #@18
    .line 50
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    #@1a
    iget-object v2, p0, Ljava/security/SignedObject;->signature:[B

    #@1c
    array-length v2, v2

    #@1d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 51
    iput-object v0, p0, Ljava/security/SignedObject;->signature:[B

    #@22
    .line 43
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/io/ObjectInputStream;

    #@2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@4
    .line 105
    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    #@6
    .line 104
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@9
    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@c
    .line 107
    .local v0, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v1

    #@10
    .line 109
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    #@13
    .line 107
    return-object v1

    #@14
    .line 108
    :catchall_0
    move-exception v1

    #@15
    .line 109
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    #@18
    .line 108
    throw v1
.end method

.method public getSignature()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 120
    .local v0, "sig":[B
    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    #@8
    iget-object v2, p0, Ljava/security/SignedObject;->signature:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 121
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Signature;)Z
    .locals 1
    .param p1, "verificationKey"    # Ljava/security/PublicKey;
    .param p2, "verificationEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@3
    .line 153
    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    #@5
    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    #@8
    .line 154
    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    #@a
    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    #@d
    move-result v0

    #@e
    return v0
.end method
