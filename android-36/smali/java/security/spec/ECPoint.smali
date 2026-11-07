.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final whitelist test-api POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final greylist-max-o x:Ljava/math/BigInteger;

.field private final greylist-max-o y:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 52
    iput-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 67
    iput-object p1, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 68
    iput-object p2, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 69
    return-void

    .line 65
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "affine coordinate x or y is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 98
    :cond_4
    sget-object v1, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    const/4 v2, 0x0

    if-ne p0, v1, :cond_a

    return v2

    .line 101
    :cond_a
    instance-of v1, p1, Ljava/security/spec/ECPoint;

    if-eqz v1, :cond_26

    .line 100
    move-object v1, p1

    check-cast v1, Ljava/security/spec/ECPoint;

    .local v1, "other":Ljava/security/spec/ECPoint;
    iget-object v3, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    iget-object v4, v1, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 101
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    iget-object v4, v1, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 102
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    .end local v1    # "other":Ljava/security/spec/ECPoint;
    :cond_26
    move v0, v2

    .line 100
    :goto_27
    return v0
.end method

.method public whitelist test-api getAffineX()Ljava/math/BigInteger;
    .registers 2

    .line 77
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getAffineY()Ljava/math/BigInteger;
    .registers 2

    .line 86
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 110
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_6
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    shl-int/2addr v0, v1

    return v0
.end method
