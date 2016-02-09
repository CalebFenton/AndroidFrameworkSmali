.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final iterationCount:I

.field private final keyLength:I

.field private password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C)V
    .locals 4
    .param p1, "password"    # [C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    if-nez p1, :cond_0

    #@7
    .line 45
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    #@9
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@b
    .line 50
    :goto_0
    iput-object v3, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@d
    .line 51
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@f
    .line 52
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@11
    .line 43
    return-void

    #@12
    .line 47
    :cond_0
    array-length v0, p1

    #@13
    new-array v0, v0, [C

    #@15
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@17
    .line 48
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@19
    array-length v1, p1

    #@1a
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1d
    goto :goto_0
.end method

.method public constructor <init>([C[BI)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 116
    if-nez p2, :cond_0

    #@6
    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "salt == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 119
    :cond_0
    array-length v0, p2

    #@10
    if-nez v0, :cond_1

    #@12
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "salt.length == 0"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 122
    :cond_1
    if-gtz p3, :cond_2

    #@1d
    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "iterationCount <= 0"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 126
    :cond_2
    if-nez p1, :cond_3

    #@28
    .line 127
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    #@2a
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@2c
    .line 132
    :goto_0
    array-length v0, p2

    #@2d
    new-array v0, v0, [B

    #@2f
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@31
    .line 133
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@33
    array-length v1, p2

    #@34
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@37
    .line 134
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@39
    .line 135
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@3b
    .line 115
    return-void

    #@3c
    .line 129
    :cond_3
    array-length v0, p1

    #@3d
    new-array v0, v0, [C

    #@3f
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@41
    .line 130
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@43
    array-length v1, p1

    #@44
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@47
    goto :goto_0
.end method

.method public constructor <init>([C[BII)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keyLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    if-nez p2, :cond_0

    #@6
    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "salt == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 78
    :cond_0
    array-length v0, p2

    #@10
    if-nez v0, :cond_1

    #@12
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "salt.length == 0"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 81
    :cond_1
    if-gtz p3, :cond_2

    #@1d
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "iterationCount <= 0"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 84
    :cond_2
    if-gtz p4, :cond_3

    #@28
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v1, "keyLength <= 0"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 88
    :cond_3
    if-nez p1, :cond_4

    #@33
    .line 89
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    #@35
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@37
    .line 94
    :goto_0
    array-length v0, p2

    #@38
    new-array v0, v0, [B

    #@3a
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@3c
    .line 95
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@3e
    array-length v1, p2

    #@3f
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@42
    .line 96
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@44
    .line 97
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@46
    .line 74
    return-void

    #@47
    .line 91
    :cond_4
    array-length v0, p1

    #@48
    new-array v0, v0, [C

    #@4a
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@4c
    .line 92
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@4e
    array-length v1, p1

    #@4f
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@52
    goto :goto_0
.end method


# virtual methods
.method public final clearPassword()V
    .locals 2

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@2
    const/16 v1, 0x3f

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@7
    .line 143
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@a
    .line 141
    return-void
.end method

.method public final getIterationCount()I
    .locals 1

    #@0
    .prologue
    .line 183
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    #@2
    return v0
.end method

.method public final getKeyLength()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    #@2
    return v0
.end method

.method public final getPassword()[C
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 154
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@3
    if-nez v1, :cond_0

    #@5
    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "The password has been cleared"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 157
    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@10
    array-length v1, v1

    #@11
    new-array v0, v1, [C

    #@13
    .line 158
    .local v0, "result":[C
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@15
    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    #@17
    array-length v2, v2

    #@18
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1b
    .line 159
    return-object v0
.end method

.method public final getSalt()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 169
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 170
    return-object v2

    #@7
    .line 172
    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 173
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@e
    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 174
    return-object v0
.end method
