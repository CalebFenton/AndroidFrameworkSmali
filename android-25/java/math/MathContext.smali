.class public final Ljava/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DECIMAL128:Ljava/math/MathContext;

.field public static final DECIMAL32:Ljava/math/MathContext;

.field public static final DECIMAL64:Ljava/math/MathContext;

.field public static final UNLIMITED:Ljava/math/MathContext;

.field private static final serialVersionUID:J = 0x4d6f25c81f7601ffL


# instance fields
.field private final precision:I

.field private final roundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/math/MathContext;

    #@2
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@4
    const/16 v2, 0x22

    #@6
    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    #@9
    sput-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    #@b
    .line 44
    new-instance v0, Ljava/math/MathContext;

    #@d
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@f
    const/4 v2, 0x7

    #@10
    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    #@13
    sput-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    #@15
    .line 51
    new-instance v0, Ljava/math/MathContext;

    #@17
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@19
    const/16 v2, 0x10

    #@1b
    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    #@1e
    sput-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    #@20
    .line 57
    new-instance v0, Ljava/math/MathContext;

    #@22
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@24
    const/4 v2, 0x0

    #@25
    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    #@28
    sput-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    #@2a
    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "precision"    # I

    #@0
    .prologue
    .line 83
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@2
    invoke-direct {p0, p1, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/math/RoundingMode;)V
    .locals 0
    .param p1, "precision"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iput p1, p0, Ljava/math/MathContext;->precision:I

    #@5
    .line 103
    iput-object p2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 104
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V

    #@a
    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    const-string/jumbo v6, "precision="

    #@6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    .line 120
    .local v1, "precisionLength":I
    const-string/jumbo v6, "roundingMode="

    #@d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    .line 123
    .local v3, "roundingModeLength":I
    const-string/jumbo v6, "precision="

    #@14
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    const/16 v6, 0x20

    #@1c
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    #@1f
    move-result v5

    #@20
    .local v5, "spaceIndex":I
    const/4 v6, -0x1

    #@21
    if-ne v5, v6, :cond_1

    #@23
    .line 124
    .end local v5    # "spaceIndex":I
    :cond_0
    const-string/jumbo v6, "Missing precision"

    #@26
    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@29
    move-result-object v6

    #@2a
    throw v6

    #@2b
    .line 126
    .restart local v5    # "spaceIndex":I
    :cond_1
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 128
    .local v2, "precisionString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v6

    #@33
    iput v6, p0, Ljava/math/MathContext;->precision:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 133
    add-int/lit8 v4, v5, 0x1

    #@37
    .line 134
    .local v4, "roundingModeStart":I
    const-string/jumbo v6, "roundingMode="

    #@3a
    const/4 v7, 0x0

    #@3b
    invoke-virtual {p1, v4, v6, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_2

    #@41
    .line 135
    const-string/jumbo v6, "Missing rounding mode"

    #@44
    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@47
    move-result-object v6

    #@48
    throw v6

    #@49
    .line 129
    .end local v4    # "roundingModeStart":I
    :catch_0
    move-exception v0

    #@4a
    .line 130
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "Bad precision"

    #@4d
    invoke-direct {p0, v6, p1}, Ljava/math/MathContext;->invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@50
    move-result-object v6

    #@51
    throw v6

    #@52
    .line 137
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v4    # "roundingModeStart":I
    :cond_2
    add-int/2addr v4, v3

    #@53
    .line 138
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-static {v6}, Ljava/math/RoundingMode;->valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;

    #@5a
    move-result-object v6

    #@5b
    iput-object v6, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@5d
    .line 140
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V

    #@60
    .line 118
    return-void
.end method

.method private checkValid()V
    .locals 3

    #@0
    .prologue
    .line 148
    iget v0, p0, Ljava/math/MathContext;->precision:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Negative precision: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Ljava/math/MathContext;->precision:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 151
    :cond_0
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@22
    if-nez v0, :cond_1

    #@24
    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    #@26
    const-string/jumbo v1, "roundingMode == null"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 147
    :cond_1
    return-void
.end method

.method private invalidMathContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, ": "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
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
    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 244
    :try_start_0
    invoke-direct {p0}, Ljava/math/MathContext;->checkValid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 241
    return-void

    #@7
    .line 245
    :catch_0
    move-exception v0

    #@8
    .line 246
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StreamCorruptedException;

    #@a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    instance-of v0, p1, Ljava/math/MathContext;

    #@3
    if-eqz v0, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 201
    check-cast v0, Ljava/math/MathContext;

    #@8
    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    #@b
    move-result v0

    #@c
    iget v2, p0, Ljava/math/MathContext;->precision:I

    #@e
    if-ne v0, v2, :cond_1

    #@10
    check-cast p1, Ljava/math/MathContext;

    #@12
    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    #@15
    move-result-object v0

    #@16
    .line 202
    iget-object v2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@18
    .line 201
    if-ne v0, v2, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 200
    :goto_0
    return v0

    #@1c
    :cond_0
    move v0, v1

    #@1d
    .line 201
    goto :goto_0

    #@1e
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_1
    move v0, v1

    #@1f
    .line 200
    goto :goto_0
.end method

.method public getPrecision()I
    .locals 1

    #@0
    .prologue
    .line 166
    iget v0, p0, Ljava/math/MathContext;->precision:I

    #@2
    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 213
    iget v0, p0, Ljava/math/MathContext;->precision:I

    #@2
    shl-int/lit8 v0, v0, 0x3

    #@4
    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@6
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "precision="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Ljava/math/MathContext;->precision:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " roundingMode="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
