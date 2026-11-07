.class public final Ljava/security/SignedObject;
.super Ljava/lang/Object;
.source "SignedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x9ffbd682a3cd5ffL


# instance fields
.field private greylist-max-o content:[B

.field private greylist-max-o signature:[B

.field private greylist-max-o thealgorithm:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/Serializable;Ljava/security/PrivateKey;Ljava/security/Signature;)V
    .registers 7
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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v1, "a":Ljava/io/ObjectOutput;
    invoke-interface {v1, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 155
    invoke-interface {v1}, Ljava/io/ObjectOutput;->flush()V

    .line 156
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->content:[B

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 161
    invoke-direct {p0, p2, p3}, Ljava/security/SignedObject;->sign(Ljava/security/PrivateKey;Ljava/security/Signature;)V

    .line 162
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 254
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/security/SignedObject;->content:[B

    .line 255
    const-string v1, "signature"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/security/SignedObject;->signature:[B

    .line 256
    const-string v1, "thealgorithm"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private greylist-max-o sign(Ljava/security/PrivateKey;Ljava/security/Signature;)V
    .registers 4
    .param p1, "signingKey"    # Ljava/security/PrivateKey;
    .param p2, "signingEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 241
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 242
    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    .line 243
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/SignedObject;->signature:[B

    .line 244
    invoke-virtual {p2}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    .line 245
    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getObject()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 179
    .local v0, "b":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    .local v1, "a":Ljava/io/ObjectInput;
    invoke-interface {v1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 181
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 182
    invoke-interface {v1}, Ljava/io/ObjectInput;->close()V

    .line 183
    return-object v2
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 194
    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Signature;)Z
    .registers 4
    .param p1, "verificationKey"    # Ljava/security/PublicKey;
    .param p2, "verificationEngine"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 223
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 224
    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    .line 225
    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
