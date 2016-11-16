.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private iterationCount:I

.field private keyLength:I

.field private password:[C

.field private salt:[B


# direct methods
.method public constructor <init>([C)V
    .locals 2
    .param p1, "password"    # [C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 66
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@7
    .line 67
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@9
    .line 68
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@b
    .line 80
    if-eqz p1, :cond_0

    #@d
    array-length v0, p1

    #@e
    if-nez v0, :cond_1

    #@10
    .line 81
    :cond_0
    new-array v0, v1, [C

    #@12
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@14
    .line 79
    :goto_0
    return-void

    #@15
    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [C

    #@1b
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@1d
    goto :goto_0
.end method

.method public constructor <init>([C[BI)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 66
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@7
    .line 67
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@9
    .line 68
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@b
    .line 151
    if-eqz p1, :cond_0

    #@d
    array-length v0, p1

    #@e
    if-nez v0, :cond_1

    #@10
    .line 152
    :cond_0
    new-array v0, v1, [C

    #@12
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@14
    .line 156
    :goto_0
    if-nez p2, :cond_2

    #@16
    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    #@18
    const-string/jumbo v1, "the salt parameter must be non-null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 154
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [C

    #@25
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@27
    goto :goto_0

    #@28
    .line 159
    :cond_2
    array-length v0, p2

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "the salt parameter must not be empty"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 163
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, [B

    #@3a
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@3c
    .line 165
    if-gtz p3, :cond_4

    #@3e
    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v1, "invalid iterationCount value"

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 168
    :cond_4
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@49
    .line 150
    return-void
.end method

.method public constructor <init>([C[BII)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keyLength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 66
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@7
    .line 67
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@9
    .line 68
    iput v1, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@b
    .line 109
    if-eqz p1, :cond_0

    #@d
    array-length v0, p1

    #@e
    if-nez v0, :cond_1

    #@10
    .line 110
    :cond_0
    new-array v0, v1, [C

    #@12
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@14
    .line 114
    :goto_0
    if-nez p2, :cond_2

    #@16
    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    #@18
    const-string/jumbo v1, "the salt parameter must be non-null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [C

    #@25
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@27
    goto :goto_0

    #@28
    .line 117
    :cond_2
    array-length v0, p2

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "the salt parameter must not be empty"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 121
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, [B

    #@3a
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@3c
    .line 123
    if-gtz p3, :cond_4

    #@3e
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v1, "invalid iterationCount value"

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 126
    :cond_4
    if-gtz p4, :cond_5

    #@49
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4b
    const-string/jumbo v1, "invalid keyLength value"

    #@4e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 129
    :cond_5
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@54
    .line 130
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@56
    .line 108
    return-void
.end method


# virtual methods
.method public final clearPassword()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 176
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 177
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 178
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@d
    const/16 v2, 0x20

    #@f
    aput-char v2, v1, v0

    #@11
    .line 177
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 180
    :cond_0
    iput-object v3, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@16
    .line 175
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final getIterationCount()I
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@2
    return v0
.end method

.method public final getKeyLength()I
    .locals 1

    #@0
    .prologue
    .line 238
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@2
    return v0
.end method

.method public final getPassword()[C
    .locals 2

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "password has been cleared"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 199
    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [C

    #@15
    return-object v0
.end method

.method public final getSalt()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 212
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 213
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [B

    #@d
    return-object v0

    #@e
    .line 215
    :cond_0
    return-object v1
.end method
