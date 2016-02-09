.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MINUS_ONE:Ljava/math/BigInteger;

.field public static final ONE:Ljava/math/BigInteger;

.field static final SMALL_VALUES:[Ljava/math/BigInteger;

.field public static final TEN:Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigInteger;

.field private static final serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field private transient bigInt:Ljava/math/BigInt;

.field transient digits:[I

.field private transient firstNonzeroDigit:I

.field private transient hashCode:I

.field private transient javaIsValid:Z

.field private magnitude:[B

.field private transient nativeIsValid:Z

.field transient numberLength:I

.field transient sign:I

.field private signum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 66
    new-instance v0, Ljava/math/BigInteger;

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {v0, v5, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@b
    sput-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@d
    .line 69
    new-instance v0, Ljava/math/BigInteger;

    #@f
    invoke-direct {v0, v4, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    #@12
    sput-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@14
    .line 72
    new-instance v0, Ljava/math/BigInteger;

    #@16
    const-wide/16 v2, 0xa

    #@18
    invoke-direct {v0, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@1b
    sput-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    #@1d
    .line 75
    new-instance v0, Ljava/math/BigInteger;

    #@1f
    const/4 v1, -0x1

    #@20
    invoke-direct {v0, v1, v6, v7}, Ljava/math/BigInteger;-><init>(IJ)V

    #@23
    sput-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@25
    .line 78
    const/16 v0, 0xb

    #@27
    new-array v0, v0, [Ljava/math/BigInteger;

    #@29
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@2b
    aput-object v1, v0, v5

    #@2d
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@2f
    aput-object v1, v0, v4

    #@31
    new-instance v1, Ljava/math/BigInteger;

    #@33
    const-wide/16 v2, 0x2

    #@35
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@38
    const/4 v2, 0x2

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 79
    new-instance v1, Ljava/math/BigInteger;

    #@3d
    const-wide/16 v2, 0x3

    #@3f
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@42
    const/4 v2, 0x3

    #@43
    aput-object v1, v0, v2

    #@45
    new-instance v1, Ljava/math/BigInteger;

    #@47
    const-wide/16 v2, 0x4

    #@49
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@4c
    const/4 v2, 0x4

    #@4d
    aput-object v1, v0, v2

    #@4f
    new-instance v1, Ljava/math/BigInteger;

    #@51
    const-wide/16 v2, 0x5

    #@53
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@56
    const/4 v2, 0x5

    #@57
    aput-object v1, v0, v2

    #@59
    .line 80
    new-instance v1, Ljava/math/BigInteger;

    #@5b
    const-wide/16 v2, 0x6

    #@5d
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@60
    const/4 v2, 0x6

    #@61
    aput-object v1, v0, v2

    #@63
    new-instance v1, Ljava/math/BigInteger;

    #@65
    const-wide/16 v2, 0x7

    #@67
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@6a
    const/4 v2, 0x7

    #@6b
    aput-object v1, v0, v2

    #@6d
    new-instance v1, Ljava/math/BigInteger;

    #@6f
    const-wide/16 v2, 0x8

    #@71
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@74
    const/16 v2, 0x8

    #@76
    aput-object v1, v0, v2

    #@78
    .line 81
    new-instance v1, Ljava/math/BigInteger;

    #@7a
    const-wide/16 v2, 0x9

    #@7c
    invoke-direct {v1, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@7f
    const/16 v2, 0x9

    #@81
    aput-object v1, v0, v2

    #@83
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    #@85
    const/16 v2, 0xa

    #@87
    aput-object v1, v0, v2

    #@89
    .line 78
    sput-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    #@8b
    .line 41
    return-void
.end method

.method public constructor <init>(IILjava/util/Random;)V
    .locals 7
    .param p1, "bitLength"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/util/Random;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 163
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@6
    .line 49
    iput-boolean v4, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@8
    .line 51
    iput-boolean v4, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@a
    .line 83
    const/4 v2, -0x2

    #@b
    iput v2, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@d
    .line 92
    iput v4, p0, Ljava/math/BigInteger;->hashCode:I

    #@f
    .line 164
    if-ge p1, v6, :cond_0

    #@11
    .line 165
    new-instance v2, Ljava/lang/ArithmeticException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "bitLength < 2: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 167
    :cond_0
    const/16 v2, 0x10

    #@2d
    if-ge p1, v2, :cond_4

    #@2f
    .line 171
    :cond_1
    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    #@32
    move-result v2

    #@33
    shl-int v3, v5, p1

    #@35
    add-int/lit8 v3, v3, -0x1

    #@37
    and-int v0, v2, v3

    #@39
    .line 172
    .local v0, "candidate":I
    add-int/lit8 v2, p1, -0x1

    #@3b
    shl-int v2, v5, v2

    #@3d
    or-int/2addr v0, v2

    #@3e
    .line 173
    if-le p1, v6, :cond_2

    #@40
    .line 174
    or-int/lit8 v0, v0, 0x1

    #@42
    .line 176
    :cond_2
    invoke-static {v0}, Ljava/math/BigInteger;->isSmallPrime(I)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_1

    #@48
    .line 177
    new-instance v1, Ljava/math/BigInt;

    #@4a
    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    #@4d
    .line 178
    .local v1, "prime":Ljava/math/BigInt;
    int-to-long v2, v0

    #@4e
    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigInt;->putULongInt(JZ)V

    #@51
    .line 179
    invoke-direct {p0, v1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@54
    .line 163
    .end local v0    # "candidate":I
    .end local v1    # "prime":Ljava/math/BigInt;
    :cond_3
    return-void

    #@55
    .line 183
    :cond_4
    :goto_0
    invoke-static {p1}, Ljava/math/BigInt;->generatePrimeDefault(I)Ljava/math/BigInt;

    #@58
    move-result-object v2

    #@59
    invoke-direct {p0, v2}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@5c
    .line 184
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@5f
    move-result v2

    #@60
    if-eq v2, p1, :cond_3

    #@62
    goto :goto_0
.end method

.method constructor <init>(II[I)V
    .locals 2
    .param p1, "sign"    # I
    .param p2, "numberLength"    # I
    .param p3, "digits"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 49
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@6
    .line 51
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@8
    .line 83
    const/4 v0, -0x2

    #@9
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@b
    .line 92
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@d
    .line 116
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    #@10
    .line 115
    return-void
.end method

.method constructor <init>(IJ)V
    .locals 4
    .param p1, "sign"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 49
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@6
    .line 51
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@8
    .line 83
    const/4 v2, -0x2

    #@9
    iput v2, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@b
    .line 92
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@d
    .line 102
    new-instance v0, Ljava/math/BigInt;

    #@f
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@12
    .line 103
    .local v0, "bigInt":Ljava/math/BigInt;
    if-gez p1, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, p2, p3, v1}, Ljava/math/BigInt;->putULongInt(JZ)V

    #@18
    .line 104
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@1b
    .line 101
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 8
    .param p1, "numBits"    # I
    .param p2, "random"    # Ljava/util/Random;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 127
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@5
    .line 49
    iput-boolean v5, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@7
    .line 51
    iput-boolean v5, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@9
    .line 83
    const/4 v4, -0x2

    #@a
    iput v4, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@c
    .line 92
    iput v5, p0, Ljava/math/BigInteger;->hashCode:I

    #@e
    .line 128
    if-gez p1, :cond_0

    #@10
    .line 129
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "numBits < 0: "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v4

    #@2a
    .line 131
    :cond_0
    if-nez p1, :cond_1

    #@2c
    .line 132
    new-array v4, v7, [I

    #@2e
    aput v5, v4, v5

    #@30
    invoke-direct {p0, v5, v7, v4}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    #@33
    .line 144
    :goto_0
    iput-boolean v7, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@35
    .line 127
    return-void

    #@36
    .line 134
    :cond_1
    const/4 v3, 0x1

    #@37
    .line 135
    .local v3, "sign":I
    add-int/lit8 v4, p1, 0x1f

    #@39
    shr-int/lit8 v2, v4, 0x5

    #@3b
    .line 136
    .local v2, "numberLength":I
    new-array v0, v2, [I

    #@3d
    .line 137
    .local v0, "digits":[I
    const/4 v1, 0x0

    #@3e
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@40
    .line 138
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    #@43
    move-result v4

    #@44
    aput v4, v0, v1

    #@46
    .line 137
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 141
    :cond_2
    add-int/lit8 v4, v2, -0x1

    #@4b
    aget v5, v0, v4

    #@4d
    neg-int v6, p1

    #@4e
    and-int/lit8 v6, v6, 0x1f

    #@50
    ushr-int/2addr v5, v6

    #@51
    aput v5, v0, v4

    #@53
    .line 142
    invoke-direct {p0, v3, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    #@56
    goto :goto_0
.end method

.method public constructor <init>(I[B)V
    .locals 6
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 269
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@5
    .line 49
    iput-boolean v3, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@7
    .line 51
    iput-boolean v3, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@9
    .line 83
    const/4 v4, -0x2

    #@a
    iput v4, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@c
    .line 92
    iput v3, p0, Ljava/math/BigInteger;->hashCode:I

    #@e
    .line 270
    if-nez p2, :cond_0

    #@10
    .line 271
    new-instance v2, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v3, "magnitude == null"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 273
    :cond_0
    const/4 v4, -0x1

    #@1a
    if-lt p1, v4, :cond_1

    #@1c
    if-le p1, v2, :cond_2

    #@1e
    .line 274
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Invalid signum: "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 276
    :cond_2
    if-nez p1, :cond_4

    #@3a
    .line 277
    array-length v5, p2

    #@3b
    move v4, v3

    #@3c
    :goto_0
    if-ge v4, v5, :cond_4

    #@3e
    aget-byte v1, p2, v4

    #@40
    .line 278
    .local v1, "element":B
    if-eqz v1, :cond_3

    #@42
    .line 279
    new-instance v2, Ljava/lang/NumberFormatException;

    #@44
    const-string/jumbo v3, "signum-magnitude mismatch"

    #@47
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 277
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 283
    .end local v1    # "element":B
    :cond_4
    new-instance v0, Ljava/math/BigInt;

    #@50
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@53
    .line 284
    .local v0, "bigInt":Ljava/math/BigInt;
    if-gez p1, :cond_5

    #@55
    :goto_1
    invoke-virtual {v0, p2, v2}, Ljava/math/BigInt;->putBigEndian([BZ)V

    #@58
    .line 285
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@5b
    .line 269
    return-void

    #@5c
    :cond_5
    move v2, v3

    #@5d
    .line 284
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 215
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 49
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@6
    .line 51
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@8
    .line 83
    const/4 v1, -0x2

    #@9
    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@b
    .line 92
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    #@d
    .line 216
    new-instance v0, Ljava/math/BigInt;

    #@f
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@12
    .line 217
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    #@15
    .line 218
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@18
    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "radix"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 234
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 49
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@6
    .line 51
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@8
    .line 83
    const/4 v1, -0x2

    #@9
    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@b
    .line 92
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    #@d
    .line 235
    if-nez p1, :cond_0

    #@f
    .line 236
    new-instance v1, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v2, "value == null"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 238
    :cond_0
    const/16 v1, 0xa

    #@1a
    if-ne p2, v1, :cond_1

    #@1c
    .line 239
    new-instance v0, Ljava/math/BigInt;

    #@1e
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@21
    .line 240
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    #@24
    .line 241
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@27
    .line 234
    .end local v0    # "bigInt":Ljava/math/BigInt;
    :goto_0
    return-void

    #@28
    .line 242
    :cond_1
    const/16 v1, 0x10

    #@2a
    if-ne p2, v1, :cond_2

    #@2c
    .line 243
    new-instance v0, Ljava/math/BigInt;

    #@2e
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@31
    .line 244
    .restart local v0    # "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putHexString(Ljava/lang/String;)V

    #@34
    .line 245
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@37
    goto :goto_0

    #@38
    .line 247
    .end local v0    # "bigInt":Ljava/math/BigInt;
    :cond_2
    const/4 v1, 0x2

    #@39
    if-lt p2, v1, :cond_3

    #@3b
    const/16 v1, 0x24

    #@3d
    if-le p2, v1, :cond_4

    #@3f
    .line 248
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "Invalid radix: "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 250
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_5

    #@5f
    .line 251
    new-instance v1, Ljava/lang/NumberFormatException;

    #@61
    const-string/jumbo v2, "value.isEmpty()"

    #@64
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@67
    throw v1

    #@68
    .line 253
    :cond_5
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V

    #@6b
    goto :goto_0
.end method

.method constructor <init>(Ljava/math/BigInt;)V
    .locals 4
    .param p1, "bigInt"    # Ljava/math/BigInt;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 49
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@6
    .line 51
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@8
    .line 83
    const/4 v0, -0x2

    #@9
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@b
    .line 92
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@d
    .line 95
    if-eqz p1, :cond_0

    #@f
    invoke-virtual {p1}, Ljava/math/BigInt;->getNativeBIGNUM()J

    #@12
    move-result-wide v0

    #@13
    const-wide/16 v2, 0x0

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 96
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1e
    throw v0

    #@1f
    .line 98
    :cond_1
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@22
    .line 94
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 299
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@4
    .line 49
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@6
    .line 51
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@8
    .line 83
    const/4 v1, -0x2

    #@9
    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@b
    .line 92
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    #@d
    .line 300
    array-length v1, p1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 301
    new-instance v1, Ljava/lang/NumberFormatException;

    #@12
    const-string/jumbo v2, "value.length == 0"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 303
    :cond_0
    new-instance v0, Ljava/math/BigInt;

    #@1b
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@1e
    .line 304
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putBigEndianTwosComplement([B)V

    #@21
    .line 305
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@24
    .line 299
    return-void
.end method

.method static inplaceAdd([III)I
    .locals 8
    .param p0, "a"    # [I
    .param p1, "aSize"    # I
    .param p2, "addend"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 1147
    int-to-long v4, p2

    #@6
    and-long v0, v4, v6

    #@8
    .line 1149
    .local v0, "carry":J
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    const-wide/16 v4, 0x0

    #@b
    cmp-long v3, v0, v4

    #@d
    if-eqz v3, :cond_0

    #@f
    if-ge v2, p1, :cond_0

    #@11
    .line 1150
    aget v3, p0, v2

    #@13
    int-to-long v4, v3

    #@14
    and-long/2addr v4, v6

    #@15
    add-long/2addr v0, v4

    #@16
    .line 1151
    long-to-int v3, v0

    #@17
    aput v3, p0, v2

    #@19
    .line 1152
    const/16 v3, 0x20

    #@1b
    shr-long/2addr v0, v3

    #@1c
    .line 1149
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1154
    :cond_0
    long-to-int v3, v0

    #@20
    return v3
.end method

.method private static isSmallPrime(I)Z
    .locals 6
    .param p0, "x"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 189
    const/4 v2, 0x2

    #@3
    if-ne p0, v2, :cond_0

    #@5
    .line 190
    return v5

    #@6
    .line 192
    :cond_0
    rem-int/lit8 v2, p0, 0x2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 193
    return v4

    #@b
    .line 195
    :cond_1
    int-to-double v2, p0

    #@c
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@f
    move-result-wide v2

    #@10
    double-to-int v1, v2

    #@11
    .line 196
    .local v1, "max":I
    const/4 v0, 0x3

    #@12
    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_3

    #@14
    .line 197
    rem-int v2, p0, v0

    #@16
    if-nez v2, :cond_2

    #@18
    .line 198
    return v4

    #@19
    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x2

    #@1b
    goto :goto_0

    #@1c
    .line 201
    :cond_3
    return v5
.end method

.method static multiplyByInt([I[III)I
    .locals 10
    .param p0, "res"    # [I
    .param p1, "a"    # [I
    .param p2, "aSize"    # I
    .param p3, "factor"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 1136
    const-wide/16 v0, 0x0

    #@7
    .line 1138
    .local v0, "carry":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    #@a
    .line 1139
    aget v3, p1, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    int-to-long v6, p3

    #@f
    and-long/2addr v6, v8

    #@10
    mul-long/2addr v4, v6

    #@11
    add-long/2addr v0, v4

    #@12
    .line 1140
    long-to-int v3, v0

    #@13
    aput v3, p0, v2

    #@15
    .line 1141
    const/16 v3, 0x20

    #@17
    ushr-long/2addr v0, v3

    #@18
    .line 1138
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1143
    :cond_0
    long-to-int v3, v0

    #@1c
    return v3
.end method

.method private static parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V
    .locals 20
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "radix"    # I

    #@0
    .prologue
    .line 1159
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v14

    #@4
    .line 1160
    .local v14, "stringLength":I
    move v9, v14

    #@5
    .line 1164
    .local v9, "endChar":I
    const/16 v18, 0x0

    #@7
    move-object/from16 v0, p1

    #@9
    move/from16 v1, v18

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v18

    #@f
    const/16 v19, 0x2d

    #@11
    move/from16 v0, v18

    #@13
    move/from16 v1, v19

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 1165
    const/4 v12, -0x1

    #@18
    .line 1166
    .local v12, "sign":I
    const/4 v13, 0x1

    #@19
    .line 1167
    .local v13, "startChar":I
    add-int/lit8 v14, v14, -0x1

    #@1b
    .line 1181
    :goto_0
    sget-object v18, Ljava/math/Conversion;->digitFitInInt:[I

    #@1d
    aget v5, v18, p2

    #@1f
    .line 1182
    .local v5, "charsPerInt":I
    div-int v4, v14, v5

    #@21
    .line 1183
    .local v4, "bigRadixDigitsLength":I
    rem-int v17, v14, v5

    #@23
    .line 1185
    .local v17, "topChars":I
    if-eqz v17, :cond_0

    #@25
    .line 1186
    add-int/lit8 v4, v4, 0x1

    #@27
    .line 1188
    :cond_0
    new-array v8, v4, [I

    #@29
    .line 1190
    .local v8, "digits":[I
    sget-object v18, Ljava/math/Conversion;->bigRadices:[I

    #@2b
    add-int/lit8 v19, p2, -0x2

    #@2d
    aget v2, v18, v19

    #@2f
    .line 1192
    .local v2, "bigRadix":I
    const/4 v6, 0x0

    #@30
    .line 1193
    .local v6, "digitIndex":I
    if-nez v17, :cond_1

    #@32
    move/from16 v17, v5

    #@34
    .end local v17    # "topChars":I
    :cond_1
    add-int v15, v13, v17

    #@36
    .line 1195
    .local v15, "substrEnd":I
    move/from16 v16, v13

    #@38
    .local v16, "substrStart":I
    move v7, v6

    #@39
    .end local v6    # "digitIndex":I
    .local v7, "digitIndex":I
    :goto_1
    move/from16 v0, v16

    #@3b
    if-ge v0, v9, :cond_3

    #@3d
    .line 1197
    move-object/from16 v0, p1

    #@3f
    move/from16 v1, v16

    #@41
    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v18

    #@45
    move-object/from16 v0, v18

    #@47
    move/from16 v1, p2

    #@49
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@4c
    move-result v3

    #@4d
    .line 1198
    .local v3, "bigRadixDigit":I
    invoke-static {v8, v8, v7, v2}, Ljava/math/BigInteger;->multiplyByInt([I[III)I

    #@50
    move-result v10

    #@51
    .line 1199
    .local v10, "newDigit":I
    invoke-static {v8, v7, v3}, Ljava/math/BigInteger;->inplaceAdd([III)I

    #@54
    move-result v18

    #@55
    add-int v10, v10, v18

    #@57
    .line 1200
    add-int/lit8 v6, v7, 0x1

    #@59
    .end local v7    # "digitIndex":I
    .restart local v6    # "digitIndex":I
    aput v10, v8, v7

    #@5b
    .line 1196
    move/from16 v16, v15

    #@5d
    add-int v15, v16, v5

    #@5f
    move v7, v6

    #@60
    .end local v6    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_1

    #@61
    .line 1169
    .end local v2    # "bigRadix":I
    .end local v3    # "bigRadixDigit":I
    .end local v4    # "bigRadixDigitsLength":I
    .end local v5    # "charsPerInt":I
    .end local v7    # "digitIndex":I
    .end local v8    # "digits":[I
    .end local v10    # "newDigit":I
    .end local v12    # "sign":I
    .end local v13    # "startChar":I
    .end local v15    # "substrEnd":I
    .end local v16    # "substrStart":I
    :cond_2
    const/4 v12, 0x1

    #@62
    .line 1170
    .restart local v12    # "sign":I
    const/4 v13, 0x0

    #@63
    .restart local v13    # "startChar":I
    goto :goto_0

    #@64
    .line 1202
    .restart local v2    # "bigRadix":I
    .restart local v4    # "bigRadixDigitsLength":I
    .restart local v5    # "charsPerInt":I
    .restart local v7    # "digitIndex":I
    .restart local v8    # "digits":[I
    .restart local v15    # "substrEnd":I
    .restart local v16    # "substrStart":I
    :cond_3
    move v11, v7

    #@65
    .line 1203
    .local v11, "numberLength":I
    move-object/from16 v0, p0

    #@67
    invoke-direct {v0, v12, v11, v8}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    #@6a
    .line 1158
    return-void
.end method

.method public static probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/util/Random;

    #@0
    .prologue
    .line 1062
    new-instance v0, Ljava/math/BigInteger;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-direct {v0, p0, v1, p1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    #@7
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 1238
    new-instance v0, Ljava/math/BigInt;

    #@6
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@9
    .line 1239
    .local v0, "bigInt":Ljava/math/BigInt;
    iget-object v2, p0, Ljava/math/BigInteger;->magnitude:[B

    #@b
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    #@d
    if-gez v3, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInt;->putBigEndian([BZ)V

    #@13
    .line 1240
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    #@16
    .line 1236
    return-void
.end method

.method private setBigInt(Ljava/math/BigInt;)V
    .locals 1
    .param p1, "bigInt"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 329
    iput-object p1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@2
    .line 330
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@5
    .line 328
    return-void
.end method

.method private setJavaRepresentation(II[I)V
    .locals 2
    .param p1, "sign"    # I
    .param p2, "numberLength"    # I
    .param p3, "digits"    # [I

    #@0
    .prologue
    .line 335
    :cond_0
    if-lez p2, :cond_1

    #@2
    add-int/lit8 p2, p2, -0x1

    #@4
    aget v1, p3, p2

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 339
    :cond_1
    add-int/lit8 v0, p2, 0x1

    #@a
    .end local p2    # "numberLength":I
    .local v0, "numberLength":I
    aget v1, p3, p2

    #@c
    if-nez v1, :cond_2

    #@e
    .line 340
    const/4 p1, 0x0

    #@f
    .line 342
    :cond_2
    iput p1, p0, Ljava/math/BigInteger;->sign:I

    #@11
    .line 343
    iput-object p3, p0, Ljava/math/BigInteger;->digits:[I

    #@13
    .line 344
    iput v0, p0, Ljava/math/BigInteger;->numberLength:I

    #@15
    .line 345
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@18
    .line 333
    return-void
.end method

.method private twosComplement()[B
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v13, 0x0

    #@2
    .line 1072
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@5
    .line 1073
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    #@7
    if-nez v12, :cond_0

    #@9
    .line 1074
    new-array v12, v14, [B

    #@b
    aput-byte v13, v12, v13

    #@d
    return-object v12

    #@e
    .line 1076
    :cond_0
    move-object v11, p0

    #@f
    .line 1077
    .local v11, "temp":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@12
    move-result v0

    #@13
    .line 1078
    .local v0, "bitLen":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@16
    move-result v10

    #@17
    .line 1079
    .local v10, "iThis":I
    shr-int/lit8 v12, v0, 0x3

    #@19
    add-int/lit8 v3, v12, 0x1

    #@1b
    .line 1082
    .local v3, "bytesLen":I
    new-array v1, v3, [B

    #@1d
    .line 1083
    .local v1, "bytes":[B
    const/4 v6, 0x0

    #@1e
    .line 1085
    .local v6, "firstByteNumber":I
    const/4 v2, 0x4

    #@1f
    .line 1088
    .local v2, "bytesInInteger":I
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    #@21
    shl-int/lit8 v12, v12, 0x2

    #@23
    sub-int v12, v3, v12

    #@25
    if-ne v12, v14, :cond_3

    #@27
    .line 1089
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    #@29
    if-gez v12, :cond_2

    #@2b
    const/4 v12, -0x1

    #@2c
    :goto_0
    int-to-byte v12, v12

    #@2d
    aput-byte v12, v1, v13

    #@2f
    .line 1090
    const/4 v8, 0x4

    #@30
    .line 1091
    .local v8, "highBytes":I
    const/4 v6, 0x1

    #@31
    .line 1097
    :goto_1
    move v5, v10

    #@32
    .line 1098
    .local v5, "digitIndex":I
    shl-int/lit8 v12, v10, 0x2

    #@34
    sub-int/2addr v3, v12

    #@35
    .line 1100
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    #@37
    if-gez v12, :cond_7

    #@39
    .line 1101
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    #@3b
    aget v12, v12, v5

    #@3d
    neg-int v4, v12

    #@3e
    .line 1102
    .local v4, "digit":I
    add-int/lit8 v5, v5, 0x1

    #@40
    .line 1103
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    #@42
    if-ne v5, v12, :cond_1

    #@44
    .line 1104
    move v2, v8

    #@45
    .line 1106
    :cond_1
    const/4 v9, 0x0

    #@46
    .local v9, "i":I
    :goto_2
    if-ge v9, v2, :cond_5

    #@48
    .line 1107
    add-int/lit8 v3, v3, -0x1

    #@4a
    int-to-byte v12, v4

    #@4b
    aput-byte v12, v1, v3

    #@4d
    .line 1106
    add-int/lit8 v9, v9, 0x1

    #@4f
    shr-int/lit8 v4, v4, 0x8

    #@51
    goto :goto_2

    #@52
    .end local v4    # "digit":I
    .end local v5    # "digitIndex":I
    .end local v8    # "highBytes":I
    .end local v9    # "i":I
    :cond_2
    move v12, v13

    #@53
    .line 1089
    goto :goto_0

    #@54
    .line 1093
    :cond_3
    and-int/lit8 v7, v3, 0x3

    #@56
    .line 1094
    .local v7, "hB":I
    if-nez v7, :cond_4

    #@58
    const/4 v8, 0x4

    #@59
    .restart local v8    # "highBytes":I
    goto :goto_1

    #@5a
    .end local v8    # "highBytes":I
    :cond_4
    move v8, v7

    #@5b
    .restart local v8    # "highBytes":I
    goto :goto_1

    #@5c
    .line 1109
    .end local v7    # "hB":I
    .restart local v4    # "digit":I
    .restart local v5    # "digitIndex":I
    .restart local v9    # "i":I
    :cond_5
    if-le v3, v6, :cond_9

    #@5e
    .line 1110
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    #@60
    aget v12, v12, v5

    #@62
    not-int v4, v12

    #@63
    .line 1111
    add-int/lit8 v5, v5, 0x1

    #@65
    .line 1112
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    #@67
    if-ne v5, v12, :cond_6

    #@69
    .line 1113
    move v2, v8

    #@6a
    .line 1115
    :cond_6
    const/4 v9, 0x0

    #@6b
    :goto_3
    if-ge v9, v2, :cond_5

    #@6d
    .line 1116
    add-int/lit8 v3, v3, -0x1

    #@6f
    int-to-byte v12, v4

    #@70
    aput-byte v12, v1, v3

    #@72
    .line 1115
    add-int/lit8 v9, v9, 0x1

    #@74
    shr-int/lit8 v4, v4, 0x8

    #@76
    goto :goto_3

    #@77
    .line 1120
    .end local v4    # "digit":I
    .end local v9    # "i":I
    :cond_7
    if-le v3, v6, :cond_9

    #@79
    .line 1121
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    #@7b
    aget v4, v12, v5

    #@7d
    .line 1122
    .restart local v4    # "digit":I
    add-int/lit8 v5, v5, 0x1

    #@7f
    .line 1123
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    #@81
    if-ne v5, v12, :cond_8

    #@83
    .line 1124
    move v2, v8

    #@84
    .line 1126
    :cond_8
    const/4 v9, 0x0

    #@85
    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v2, :cond_7

    #@87
    .line 1127
    add-int/lit8 v3, v3, -0x1

    #@89
    int-to-byte v12, v4

    #@8a
    aput-byte v12, v1, v3

    #@8c
    .line 1126
    add-int/lit8 v9, v9, 0x1

    #@8e
    shr-int/lit8 v4, v4, 0x8

    #@90
    goto :goto_4

    #@91
    .line 1131
    .end local v4    # "digit":I
    .end local v9    # "i":I
    :cond_9
    return-object v1
.end method

.method public static valueOf(J)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # J

    #@0
    .prologue
    .line 365
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_1

    #@6
    .line 366
    const-wide/16 v0, -0x1

    #@8
    cmp-long v0, p0, v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 367
    new-instance v0, Ljava/math/BigInteger;

    #@e
    neg-long v2, p0

    #@f
    const/4 v1, -0x1

    #@10
    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    #@13
    return-object v0

    #@14
    .line 369
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    #@16
    return-object v0

    #@17
    .line 370
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    #@19
    array-length v0, v0

    #@1a
    int-to-long v0, v0

    #@1b
    cmp-long v0, p0, v0

    #@1d
    if-gez v0, :cond_2

    #@1f
    .line 371
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    #@21
    long-to-int v1, p0

    #@22
    aget-object v0, v0, v1

    #@24
    return-object v0

    #@25
    .line 373
    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    #@27
    const/4 v1, 0x1

    #@28
    invoke-direct {v0, v1, p0, p1}, Ljava/math/BigInteger;-><init>(IJ)V

    #@2b
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1248
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    .line 1249
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Ljava/math/BigInteger;->signum:I

    #@a
    .line 1250
    invoke-virtual {v0}, Ljava/math/BigInt;->bigEndianMagnitude()[B

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/math/BigInteger;->magnitude:[B

    #@10
    .line 1251
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@13
    .line 1247
    return-void
.end method


# virtual methods
.method public abs()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v1

    #@4
    .line 391
    .local v1, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    #@7
    move-result v2

    #@8
    if-ltz v2, :cond_0

    #@a
    .line 392
    return-object p0

    #@b
    .line 394
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    #@e
    move-result-object v0

    #@f
    .line 395
    .local v0, "a":Ljava/math/BigInt;
    const/4 v2, 0x1

    #@10
    invoke-virtual {v0, v2}, Ljava/math/BigInt;->setSign(I)V

    #@13
    .line 396
    new-instance v2, Ljava/math/BigInteger;

    #@15
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@18
    return-object v2
.end method

.method public add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    .line 418
    .local v0, "lhs":Ljava/math/BigInt;
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@7
    move-result-object v1

    #@8
    .line 419
    .local v1, "rhs":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 420
    return-object p0

    #@f
    .line 422
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 423
    return-object p1

    #@16
    .line 425
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    #@18
    invoke-static {v0, v1}, Ljava/math/BigInt;->addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@1f
    return-object v2
.end method

.method public and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 687
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 688
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@6
    .line 689
    invoke-static {p0, p1}, Ljava/math/Logical;->and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 734
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 735
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@6
    .line 736
    invoke-static {p0, p1}, Ljava/math/Logical;->andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public bitCount()I
    .locals 1

    #@0
    .prologue
    .line 661
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 662
    invoke-static {p0}, Ljava/math/BitLevel;->bitCount(Ljava/math/BigInteger;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public bitLength()I
    .locals 1

    #@0
    .prologue
    .line 520
    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 521
    invoke-static {p0}, Ljava/math/BitLevel;->bitLength(Ljava/math/BigInteger;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 523
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/math/BigInt;->bitLength()I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public clearBit(I)Ljava/math/BigInteger;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 604
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 605
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 607
    :cond_0
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 802
    check-cast p1, Ljava/math/BigInteger;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 803
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/math/BigInt;->cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method copy()Ljava/math/BigInteger;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1225
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@4
    .line 1226
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    #@6
    new-array v0, v1, [I

    #@8
    .line 1227
    .local v0, "copyDigits":[I
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    #@a
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@c
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@f
    .line 1228
    new-instance v1, Ljava/math/BigInteger;

    #@11
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@13
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    #@15
    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    #@18
    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "divisor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 937
    new-instance v0, Ljava/math/BigInt;

    #@2
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@5
    .line 938
    .local v0, "quotient":Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    invoke-static {v1, v2, v0, v3}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    #@11
    .line 939
    new-instance v1, Ljava/math/BigInteger;

    #@13
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@16
    return-object v1
.end method

.method public divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 6
    .param p1, "divisor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 921
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    .line 922
    .local v0, "divisorBigInt":Ljava/math/BigInt;
    new-instance v1, Ljava/math/BigInt;

    #@6
    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    #@9
    .line 923
    .local v1, "quotient":Ljava/math/BigInt;
    new-instance v2, Ljava/math/BigInt;

    #@b
    invoke-direct {v2}, Ljava/math/BigInt;-><init>()V

    #@e
    .line 924
    .local v2, "remainder":Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3, v0, v1, v2}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    #@15
    .line 925
    const/4 v3, 0x2

    #@16
    new-array v3, v3, [Ljava/math/BigInteger;

    #@18
    new-instance v4, Ljava/math/BigInteger;

    #@1a
    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@1d
    const/4 v5, 0x0

    #@1e
    aput-object v4, v3, v5

    #@20
    new-instance v4, Ljava/math/BigInteger;

    #@22
    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@25
    const/4 v5, 0x1

    #@26
    aput-object v4, v3, v5

    #@28
    return-object v3
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 791
    invoke-static {p0}, Ljava/math/Conversion;->bigInteger2Double(Ljava/math/BigInteger;)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 841
    if-ne p0, p1, :cond_0

    #@4
    .line 842
    return v0

    #@5
    .line 844
    :cond_0
    instance-of v2, p1, Ljava/math/BigInteger;

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 845
    check-cast p1, Ljava/math/BigInteger;

    #@b
    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    :goto_0
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 847
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public flipBit(I)Ljava/math/BigInteger;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 623
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 624
    if-gez p1, :cond_0

    #@5
    .line 625
    new-instance v0, Ljava/lang/ArithmeticException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "n < 0: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 627
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 779
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    double-to-float v0, v0

    #@5
    return v0
.end method

.method public gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 886
    new-instance v0, Ljava/math/BigInteger;

    #@2
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, v2}, Ljava/math/BigInt;->gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@11
    return-object v0
.end method

.method getBigInt()Ljava/math/BigInt;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 313
    iget-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 314
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@7
    return-object v1

    #@8
    .line 317
    :cond_0
    monitor-enter p0

    #@9
    .line 318
    :try_start_0
    iget-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 319
    iget-object v1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    return-object v1

    #@11
    .line 321
    :cond_1
    :try_start_1
    new-instance v0, Ljava/math/BigInt;

    #@13
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@16
    .line 322
    .local v0, "bigInt":Ljava/math/BigInt;
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@18
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    #@1a
    if-gez v3, :cond_2

    #@1c
    const/4 v1, 0x1

    #@1d
    :cond_2
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInt;->putLittleEndianInts([IZ)V

    #@20
    .line 323
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 324
    return-object v0

    #@25
    .line 317
    .end local v0    # "bigInt":Ljava/math/BigInt;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method

.method getFirstNonzeroDigit()I
    .locals 3

    #@0
    .prologue
    .line 1207
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@2
    const/4 v2, -0x2

    #@3
    if-ne v1, v2, :cond_1

    #@5
    .line 1209
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    #@7
    if-nez v1, :cond_2

    #@9
    .line 1210
    const/4 v0, -0x1

    #@a
    .line 1216
    .local v0, "i":I
    :cond_0
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@c
    .line 1218
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    #@e
    return v1

    #@f
    .line 1212
    :cond_2
    const/4 v0, 0x0

    #@10
    .restart local v0    # "i":I
    :goto_0
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    #@12
    aget v1, v1, v0

    #@14
    if-nez v1, :cond_0

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0
.end method

.method public getLowestSetBit()I
    .locals 3

    #@0
    .prologue
    .line 639
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 640
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    #@5
    if-nez v1, :cond_0

    #@7
    .line 641
    const/4 v1, -0x1

    #@8
    return v1

    #@9
    .line 644
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@c
    move-result v0

    #@d
    .line 645
    .local v0, "i":I
    shl-int/lit8 v1, v0, 0x5

    #@f
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@11
    aget v2, v2, v0

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@16
    move-result v2

    #@17
    add-int/2addr v1, v2

    #@18
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 828
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 829
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@6
    return v1

    #@7
    .line 831
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@a
    .line 832
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 833
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@11
    mul-int/lit8 v1, v1, 0x21

    #@13
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@15
    aget v2, v2, v0

    #@17
    add-int/2addr v1, v2

    #@18
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@1a
    .line 832
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 835
    :cond_1
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@1f
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@21
    mul-int/2addr v1, v2

    #@22
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@24
    .line 836
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    #@26
    return v1
.end method

.method public intValue()I
    .locals 3

    #@0
    .prologue
    .line 746
    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 747
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@f
    invoke-virtual {v0}, Ljava/math/BigInt;->longInt()J

    #@12
    move-result-wide v0

    #@13
    long-to-int v0, v0

    #@14
    return v0

    #@15
    .line 749
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@18
    .line 750
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@1a
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    #@1c
    const/4 v2, 0x0

    #@1d
    aget v1, v1, v2

    #@1f
    mul-int/2addr v0, v1

    #@20
    return v0
.end method

.method public isProbablePrime(I)Z
    .locals 1
    .param p1, "certainty"    # I

    #@0
    .prologue
    .line 1031
    if-gtz p1, :cond_0

    #@2
    .line 1032
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 1034
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->isPrime(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public longValue()J
    .locals 8

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    const/4 v4, 0x1

    #@6
    const/4 v5, 0x0

    #@7
    .line 760
    iget-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@d
    const/16 v3, 0x8

    #@f
    invoke-virtual {v2, v3}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 761
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@17
    invoke-virtual {v2}, Ljava/math/BigInt;->longInt()J

    #@1a
    move-result-wide v2

    #@1b
    return-wide v2

    #@1c
    .line 763
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@1f
    .line 764
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    #@21
    if-le v2, v4, :cond_1

    #@23
    .line 765
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@25
    aget v2, v2, v4

    #@27
    int-to-long v2, v2

    #@28
    const/16 v4, 0x20

    #@2a
    shl-long/2addr v2, v4

    #@2b
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    #@2d
    aget v4, v4, v5

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    or-long v0, v2, v4

    #@33
    .line 767
    .local v0, "value":J
    :goto_0
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    #@35
    int-to-long v2, v2

    #@36
    mul-long/2addr v2, v0

    #@37
    return-wide v2

    #@38
    .line 766
    .end local v0    # "value":J
    :cond_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    #@3a
    aget v2, v2, v5

    #@3c
    int-to-long v2, v2

    #@3d
    and-long v0, v2, v6

    #@3f
    .restart local v0    # "value":J
    goto :goto_0
.end method

.method public max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 823
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    #@8
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_0
    move-object p0, p1

    #@9
    goto :goto_0
.end method

.method public min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 813
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    #@8
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_0
    move-object p0, p1

    #@9
    goto :goto_0
.end method

.method public mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "m"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 1013
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 1014
    new-instance v0, Ljava/lang/ArithmeticException;

    #@8
    const-string/jumbo v1, "m.signum() <= 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1016
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    #@11
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Ljava/math/BigInt;->modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@20
    return-object v0
.end method

.method public modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "m"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 969
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 970
    new-instance v0, Ljava/lang/ArithmeticException;

    #@8
    const-string/jumbo v1, "modulus not positive"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 972
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    #@11
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Ljava/math/BigInt;->modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@20
    return-object v0
.end method

.method public modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "exponent"    # Ljava/math/BigInteger;
    .param p2, "modulus"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 989
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v2

    #@4
    if-gtz v2, :cond_0

    #@6
    .line 990
    new-instance v2, Ljava/lang/ArithmeticException;

    #@8
    const-string/jumbo v3, "modulus.signum() <= 0"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 992
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@12
    move-result v1

    #@13
    .line 993
    .local v1, "exponentSignum":I
    if-nez v1, :cond_1

    #@15
    .line 994
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 996
    :cond_1
    if-gez v1, :cond_2

    #@1e
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@21
    move-result-object v0

    #@22
    .line 997
    .local v0, "base":Ljava/math/BigInteger;
    :goto_0
    new-instance v2, Ljava/math/BigInteger;

    #@24
    invoke-virtual {v0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {p2}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v3, v4, v5}, Ljava/math/BigInt;->modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@37
    return-object v2

    #@38
    .line 996
    .end local v0    # "base":Ljava/math/BigInteger;
    :cond_2
    move-object v0, p0

    #@39
    .restart local v0    # "base":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 895
    new-instance v0, Ljava/math/BigInteger;

    #@2
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, v2}, Ljava/math/BigInt;->product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@11
    return-object v0
.end method

.method public negate()Ljava/math/BigInteger;
    .locals 4

    #@0
    .prologue
    .line 403
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v1

    #@4
    .line 404
    .local v1, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    #@7
    move-result v2

    #@8
    .line 405
    .local v2, "sign":I
    if-nez v2, :cond_0

    #@a
    .line 406
    return-object p0

    #@b
    .line 408
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    #@e
    move-result-object v0

    #@f
    .line 409
    .local v0, "a":Ljava/math/BigInt;
    neg-int v3, v2

    #@10
    invoke-virtual {v0, v3}, Ljava/math/BigInt;->setSign(I)V

    #@13
    .line 410
    new-instance v3, Ljava/math/BigInteger;

    #@15
    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@18
    return-object v3
.end method

.method public nextProbablePrime()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 1046
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 1047
    new-instance v0, Ljava/lang/ArithmeticException;

    #@6
    const-string/jumbo v1, "sign < 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1049
    :cond_0
    invoke-static {p0}, Ljava/math/Primality;->nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public not()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 673
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 674
    invoke-static {p0}, Ljava/math/Logical;->not(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 703
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@6
    .line 704
    invoke-static {p0, p1}, Ljava/math/Logical;->or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public pow(I)Ljava/math/BigInteger;
    .locals 3
    .param p1, "exp"    # I

    #@0
    .prologue
    .line 904
    if-gez p1, :cond_0

    #@2
    .line 905
    new-instance v0, Ljava/lang/ArithmeticException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "exp < 0: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 907
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    #@1e
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1, p1}, Ljava/math/BigInt;->exp(Ljava/math/BigInt;I)Ljava/math/BigInt;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@29
    return-object v0
.end method

.method prepareJavaRepresentation()V
    .locals 4

    #@0
    .prologue
    .line 349
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 350
    return-void

    #@5
    .line 353
    :cond_0
    monitor-enter p0

    #@6
    .line 354
    :try_start_0
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v2, :cond_1

    #@a
    monitor-exit p0

    #@b
    .line 355
    return-void

    #@c
    .line 357
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@e
    invoke-virtual {v2}, Ljava/math/BigInt;->sign()I

    #@11
    move-result v1

    #@12
    .line 358
    .local v1, "sign":I
    if-eqz v1, :cond_2

    #@14
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    #@16
    invoke-virtual {v2}, Ljava/math/BigInt;->littleEndianIntsMagnitude()[I

    #@19
    move-result-object v0

    #@1a
    .line 359
    .local v0, "digits":[I
    :goto_0
    array-length v2, v0

    #@1b
    invoke-direct {p0, v1, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 348
    return-void

    #@20
    .line 358
    .end local v0    # "digits":[I
    :cond_2
    const/4 v2, 0x1

    #@21
    :try_start_2
    new-array v0, v2, [I

    #@23
    const/4 v2, 0x0

    #@24
    const/4 v3, 0x0

    #@25
    aput v2, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    .restart local v0    # "digits":[I
    goto :goto_0

    #@28
    .line 353
    .end local v0    # "digits":[I
    .end local v1    # "sign":I
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2
.end method

.method public remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "divisor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 952
    new-instance v0, Ljava/math/BigInt;

    #@2
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@5
    .line 953
    .local v0, "remainder":Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    invoke-static {v1, v2, v3, v0}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    #@11
    .line 954
    new-instance v1, Ljava/math/BigInteger;

    #@13
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@16
    return-object v1
.end method

.method public setBit(I)Ljava/math/BigInteger;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 583
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 584
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 585
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 587
    :cond_0
    return-object p0
.end method

.method public shiftLeft(I)Ljava/math/BigInteger;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 483
    if-nez p1, :cond_0

    #@2
    .line 484
    return-object p0

    #@3
    .line 486
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@6
    move-result v0

    #@7
    .line 487
    .local v0, "sign":I
    if-nez v0, :cond_1

    #@9
    .line 488
    return-object p0

    #@a
    .line 490
    :cond_1
    if-gtz v0, :cond_2

    #@c
    if-ltz p1, :cond_3

    #@e
    .line 491
    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    #@10
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2, p1}, Ljava/math/BigInt;->shift(Ljava/math/BigInt;I)Ljava/math/BigInt;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@1b
    return-object v1

    #@1c
    .line 496
    :cond_3
    neg-int v1, p1

    #@1d
    invoke-static {p0, v1}, Ljava/math/BitLevel;->shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method shiftLeftOneBit()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_0
    invoke-static {p0}, Ljava/math/BitLevel;->shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a
    move-result-object p0

    #@b
    goto :goto_0
.end method

.method public shiftRight(I)Ljava/math/BigInteger;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 466
    neg-int v0, p1

    #@1
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public signum()I
    .locals 1

    #@0
    .prologue
    .line 447
    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 448
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    #@6
    return v0

    #@7
    .line 450
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    .line 433
    .local v0, "lhs":Ljava/math/BigInt;
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@7
    move-result-object v1

    #@8
    .line 434
    .local v1, "rhs":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 435
    return-object p0

    #@f
    .line 437
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    #@11
    invoke-static {v0, v1}, Ljava/math/BigInt;->subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    #@18
    return-object v2
.end method

.method public testBit(I)Z
    .locals 7
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 537
    if-gez p1, :cond_0

    #@4
    .line 538
    new-instance v4, Ljava/lang/ArithmeticException;

    #@6
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "n < 0: "

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v4

    #@1e
    .line 540
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@21
    move-result v3

    #@22
    .line 541
    .local v3, "sign":I
    if-lez v3, :cond_1

    #@24
    iget-boolean v6, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    #@26
    if-eqz v6, :cond_1

    #@28
    iget-boolean v6, p0, Ljava/math/BigInteger;->javaIsValid:Z

    #@2a
    if-eqz v6, :cond_2

    #@2c
    .line 547
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@2f
    .line 548
    if-nez p1, :cond_4

    #@31
    .line 549
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@33
    aget v6, v6, v5

    #@35
    and-int/lit8 v6, v6, 0x1

    #@37
    if-eqz v6, :cond_3

    #@39
    :goto_0
    return v4

    #@3a
    .line 542
    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/math/BigInt;->isBitSet(I)Z

    #@41
    move-result v4

    #@42
    return v4

    #@43
    :cond_3
    move v4, v5

    #@44
    .line 549
    goto :goto_0

    #@45
    .line 551
    :cond_4
    shr-int/lit8 v2, p1, 0x5

    #@47
    .line 552
    .local v2, "intCount":I
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    #@49
    if-lt v2, v6, :cond_6

    #@4b
    .line 553
    if-gez v3, :cond_5

    #@4d
    :goto_1
    return v4

    #@4e
    :cond_5
    move v4, v5

    #@4f
    goto :goto_1

    #@50
    .line 555
    :cond_6
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    #@52
    aget v0, v6, v2

    #@54
    .line 556
    .local v0, "digit":I
    and-int/lit8 v6, p1, 0x1f

    #@56
    shl-int p1, v4, v6

    #@58
    .line 557
    if-gez v3, :cond_8

    #@5a
    .line 558
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    #@5d
    move-result v1

    #@5e
    .line 559
    .local v1, "firstNonZeroDigit":I
    if-ge v2, v1, :cond_7

    #@60
    .line 560
    return v5

    #@61
    .line 561
    :cond_7
    if-ne v1, v2, :cond_9

    #@63
    .line 562
    neg-int v0, v0

    #@64
    .line 567
    .end local v1    # "firstNonZeroDigit":I
    :cond_8
    :goto_2
    and-int v6, v0, p1

    #@66
    if-eqz v6, :cond_a

    #@68
    :goto_3
    return v4

    #@69
    .line 564
    .restart local v1    # "firstNonZeroDigit":I
    :cond_9
    not-int v0, v0

    #@6a
    goto :goto_2

    #@6b
    .end local v1    # "firstNonZeroDigit":I
    :cond_a
    move v4, v5

    #@6c
    .line 567
    goto :goto_3
.end method

.method public toByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 382
    invoke-direct {p0}, Ljava/math/BigInteger;->twosComplement()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 856
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 869
    const/16 v0, 0xa

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 870
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 872
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@10
    .line 873
    invoke-static {p0, p1}, Ljava/math/Conversion;->bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 718
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@6
    .line 719
    invoke-static {p0, p1}, Ljava/math/Logical;->xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
