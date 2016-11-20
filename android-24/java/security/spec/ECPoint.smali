.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final x:Ljava/math/BigInteger;

.field private final y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/security/spec/ECPoint;

    #@2
    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    #@5
    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    #@7
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    #@6
    .line 52
    iput-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    #@8
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "affine coordinate x or y is null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 67
    :cond_1
    iput-object p1, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    #@12
    .line 68
    iput-object p2, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    #@14
    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    if-ne p0, p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 98
    :cond_0
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    #@7
    if-ne p0, v0, :cond_1

    #@9
    return v1

    #@a
    .line 99
    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECPoint;

    #@c
    if-eqz v0, :cond_3

    #@e
    .line 100
    iget-object v2, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    #@10
    move-object v0, p1

    #@11
    check-cast v0, Ljava/security/spec/ECPoint;

    #@13
    iget-object v0, v0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    #@15
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 101
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    #@1d
    check-cast p1, Ljava/security/spec/ECPoint;

    #@1f
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    #@21
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    .line 100
    :goto_0
    return v0

    #@26
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    #@27
    goto :goto_0

    #@28
    .line 103
    :cond_3
    return v1
.end method

.method public getAffineX()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getAffineY()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 111
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 112
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@11
    move-result v1

    #@12
    add-int/lit8 v1, v1, 0x5

    #@14
    shl-int/2addr v0, v1

    #@15
    return v0
.end method
