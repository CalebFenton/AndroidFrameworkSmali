.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private greylist-max-o iterationCount:I

.field private greylist-max-o keyLength:I

.field private greylist-max-o password:[C

.field private greylist-max-o salt:[B


# direct methods
.method public constructor whitelist test-api <init>([C)V
    .registers 4
    .param p1, "password"    # [C

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 69
    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 81
    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 84
    :cond_11
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_1e

    .line 82
    :cond_1a
    :goto_1a
    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 86
    :goto_1e
    return-void
.end method

.method public constructor whitelist test-api <init>([C[BI)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 69
    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 152
    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 155
    :cond_11
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_1e

    .line 153
    :cond_1a
    :goto_1a
    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 157
    :goto_1e
    if-eqz p2, :cond_40

    .line 160
    array-length v0, p2

    if-eqz v0, :cond_38

    .line 164
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 166
    if-lez p3, :cond_30

    .line 169
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 170
    return-void

    .line 167
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([C[BII)V
    .registers 7
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keyLength"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 69
    iput v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 110
    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 113
    :cond_11
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    goto :goto_1e

    .line 111
    :cond_1a
    :goto_1a
    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 115
    :goto_1e
    if-eqz p2, :cond_4c

    .line 118
    array-length v0, p2

    if-eqz v0, :cond_44

    .line 122
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 124
    if-lez p3, :cond_3c

    .line 127
    if-lez p4, :cond_34

    .line 130
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 131
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 132
    return-void

    .line 128
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid keyLength value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iterationCount value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the salt parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the salt parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api clearPassword()V
    .registers 3

    .line 177
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-eqz v0, :cond_e

    .line 178
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 181
    :cond_e
    return-void
.end method

.method public final whitelist test-api getIterationCount()I
    .registers 2

    .line 224
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final whitelist test-api getKeyLength()I
    .registers 2

    .line 237
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final whitelist test-api getPassword()[C
    .registers 3

    .line 195
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-eqz v0, :cond_d

    .line 198
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0

    .line 196
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "password has been cleared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getSalt()[B
    .registers 2

    .line 211
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-eqz v0, :cond_d

    .line 212
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 214
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
