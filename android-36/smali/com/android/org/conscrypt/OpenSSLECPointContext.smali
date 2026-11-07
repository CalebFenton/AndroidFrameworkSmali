.class final Lcom/android/org/conscrypt/OpenSSLECPointContext;
.super Ljava/lang/Object;
.source "OpenSSLECPointContext.java"


# instance fields
.field private final blacklist group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field private final blacklist pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V
    .registers 3
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "pointCtx"    # Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 29
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    .line 30
    return-void
.end method

.method static blacklist getInstance(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;
    .registers 7
    .param p0, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p1, "javaPoint"    # Ljava/security/spec/ECPoint;

    .line 57
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    .line 58
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_new(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    .line 59
    .local v0, "point":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 61
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 59
    invoke-static {v1, v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B[B)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OpenSSLECPointContext.equals is not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getECPoint()Ljava/security/spec/ECPoint;
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 39
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    .line 38
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_get_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)[[B

    move-result-object v0

    .line 40
    .local v0, "generatorCoords":[[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 41
    .local v1, "x":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 42
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method

.method blacklist getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
