.class final Lcom/android/org/conscrypt/OpenSSLECPointContext;
.super Ljava/lang/Object;
.source "OpenSSLECPointContext.java"


# instance fields
.field private final group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field private final pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V
    .locals 0
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "pointCtx"    # Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@5
    .line 28
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@7
    .line 26
    return-void
.end method

.method public static getInstance(ILcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;
    .locals 5
    .param p0, "curveType"    # I
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "javaPoint"    # Ljava/security/spec/ECPoint;

    #@0
    .prologue
    .line 65
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@2
    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@4
    .line 66
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_new(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    #@b
    move-result-wide v2

    #@c
    .line 65
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    #@f
    invoke-direct {v0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    #@12
    .line 67
    .local v0, "point":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@15
    move-result-object v1

    #@16
    .line 68
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    #@21
    move-result-object v3

    #@22
    .line 69
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    #@29
    move-result-object v4

    #@2a
    .line 67
    invoke-static {v1, v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B[B)V

    #@2d
    .line 70
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 33
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 34
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 37
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@9
    .line 38
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@b
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@e
    move-result-object v1

    #@f
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@11
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@14
    move-result-object v2

    #@15
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_cmp(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 39
    return v3

    #@1c
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@1e
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@24
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@26
    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_cmp(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)Z

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public getECPoint()Ljava/security/spec/ECPoint;
    .locals 5

    #@0
    .prologue
    .line 47
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@8
    .line 46
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_get_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)[[B

    #@b
    move-result-object v0

    #@c
    .line 48
    .local v0, "generatorCoords":[[B
    new-instance v1, Ljava/math/BigInteger;

    #@e
    const/4 v3, 0x0

    #@f
    aget-object v3, v0, v3

    #@11
    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    #@14
    .line 49
    .local v1, "x":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    #@16
    const/4 v3, 0x1

    #@17
    aget-object v3, v0, v3

    #@19
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    #@1c
    .line 50
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    #@1e
    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@21
    return-object v3
.end method

.method public getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method
