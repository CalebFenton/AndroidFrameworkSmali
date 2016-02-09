.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final affineX:Ljava/math/BigInteger;

.field private final affineY:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Ljava/security/spec/ECPoint;

    #@2
    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    #@5
    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    #@7
    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@6
    .line 39
    iput-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@8
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "affineX"    # Ljava/math/BigInteger;
    .param p2, "affineY"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@5
    .line 52
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "affineX == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 55
    :cond_0
    iput-object p2, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@14
    .line 56
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "affineY == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 89
    if-ne p0, p1, :cond_0

    #@4
    .line 90
    return v2

    #@5
    .line 92
    :cond_0
    instance-of v3, p1, Ljava/security/spec/ECPoint;

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 93
    iget-object v3, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@b
    if-eqz v3, :cond_2

    #@d
    move-object v0, p1

    #@e
    .line 94
    check-cast v0, Ljava/security/spec/ECPoint;

    #@10
    .line 96
    .local v0, "otherPoint":Ljava/security/spec/ECPoint;
    iget-object v2, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@12
    iget-object v3, v0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@14
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 97
    iget-object v1, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@1c
    iget-object v2, v0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@1e
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    .line 96
    :cond_1
    return v1

    #@23
    .line 99
    .end local v0    # "otherPoint":Ljava/security/spec/ECPoint;
    :cond_2
    sget-object v3, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    #@25
    if-ne p1, v3, :cond_3

    #@27
    move v1, v2

    #@28
    :cond_3
    return v1

    #@29
    .line 102
    :cond_4
    return v1
.end method

.method public getAffineX()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getAffineY()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 112
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    #@6
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@9
    move-result v0

    #@a
    mul-int/lit8 v0, v0, 0x1f

    #@c
    iget-object v1, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    return v0

    #@14
    .line 114
    :cond_0
    const/16 v0, 0xb

    #@16
    return v0
.end method
