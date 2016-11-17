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
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 150
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 151
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    #@a
    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@d
    .line 154
    .local v0, "a":Ljava/io/ObjectOutput;
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@10
    .line 155
    invoke-interface {v0}, Ljava/io/ObjectOutput;->flush()V

    #@13
    .line 156
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    #@16
    .line 157
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Ljava/security/SignedObject;->content:[B

    #@1c
    .line 158
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    #@1f
    .line 161
    invoke-direct {p0, p2, p3}, Ljava/security/SignedObject;->sign(Ljava/security/PrivateKey;Ljava/security/Signature;)V

    #@22
    .line 148
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v0

    #@5
    .line 254
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [B

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, [B

    #@14
    iput-object v1, p0, Ljava/security/SignedObject;->content:[B

    #@16
    .line 255
    const-string/jumbo v1, "signature"

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, [B

    #@1f
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, [B

    #@25
    iput-object v1, p0, Ljava/security/SignedObject;->signature:[B

    #@27
    .line 256
    const-string/jumbo v1, "thealgorithm"

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    iput-object v1, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    #@32
    .line 252
    return-void
.end method

.method private sign(Ljava/security/PrivateKey;Ljava/security/Signature;)V
    .locals 1
    .param p1, "signingKey"    # Ljava/security/PrivateKey;
    .param p2, "signingEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@3
    .line 242
    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [B

    #@b
    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    #@e
    .line 243
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, [B

    #@18
    iput-object v0, p0, Ljava/security/SignedObject;->signature:[B

    #@1a
    .line 244
    invoke-virtual {p2}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    #@20
    .line 239
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v3, p0, Ljava/security/SignedObject;->content:[B

    #@4
    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    .line 179
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/ObjectInputStream;

    #@9
    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@c
    .line 180
    .local v0, "a":Ljava/io/ObjectInput;
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    .line 181
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    #@13
    .line 182
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    #@16
    .line 183
    return-object v2
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
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
    .line 223
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@3
    .line 224
    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [B

    #@b
    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    #@e
    .line 225
    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [B

    #@16
    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method
