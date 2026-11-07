.class public final Landroid/security/net/config/Pin;
.super Ljava/lang/Object;
.source "Pin.java"


# instance fields
.field public final greylist-max-o digest:[B

.field public final greylist-max-o digestAlgorithm:Ljava/lang/String;

.field private final greylist-max-o mHashCode:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "digestAlgorithm"    # Ljava/lang/String;
    .param p2, "digest"    # [B

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Landroid/security/net/config/Pin;->digest:[B

    .line 33
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    .line 34
    return-void
.end method

.method public static greylist-max-o getDigestLength(Ljava/lang/String;)I
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 49
    const-string v0, "SHA-256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    const/16 v0, 0x20

    return v0

    .line 52
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o isSupportedDigestAlgorithm(Ljava/lang/String;)Z
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 42
    const-string v0, "SHA-256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 63
    return v0

    .line 65
    :cond_4
    instance-of v1, p1, Landroid/security/net/config/Pin;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 66
    return v2

    .line 68
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/security/net/config/Pin;

    .line 69
    .local v1, "other":Landroid/security/net/config/Pin;
    invoke-virtual {v1}, Landroid/security/net/config/Pin;->hashCode()I

    move-result v3

    iget v4, p0, Landroid/security/net/config/Pin;->mHashCode:I

    if-eq v3, v4, :cond_16

    .line 70
    return v2

    .line 72
    :cond_16
    iget-object v3, p0, Landroid/security/net/config/Pin;->digest:[B

    iget-object v4, v1, Landroid/security/net/config/Pin;->digest:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_21

    .line 73
    return v2

    .line 75
    :cond_21
    iget-object v3, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    iget-object v4, v1, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 76
    return v2

    .line 78
    :cond_2c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    return v0
.end method
