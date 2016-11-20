.class public final Landroid/security/net/config/Pin;
.super Ljava/lang/Object;
.source "Pin.java"


# instance fields
.field public final digest:[B

.field public final digestAlgorithm:Ljava/lang/String;

.field private final mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "digestAlgorithm"    # Ljava/lang/String;
    .param p2, "digest"    # [B

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    #@5
    .line 30
    iput-object p2, p0, Landroid/security/net/config/Pin;->digest:[B

    #@7
    .line 31
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v1

    #@f
    xor-int/2addr v0, v1

    #@10
    iput v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    #@12
    .line 28
    return-void
.end method

.method public static getDigestLength(Ljava/lang/String;)I
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "SHA-256"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 48
    const/16 v0, 0x20

    #@b
    return v0

    #@c
    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Unsupported digest algorithm: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method

.method public static isSupportedDigestAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "SHA-256"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 60
    if-ne p0, p1, :cond_0

    #@4
    .line 61
    return v4

    #@5
    .line 63
    :cond_0
    instance-of v1, p1, Landroid/security/net/config/Pin;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 64
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 66
    nop

    #@c
    nop

    #@d
    .line 67
    .local v0, "other":Landroid/security/net/config/Pin;
    invoke-virtual {v0}, Landroid/security/net/config/Pin;->hashCode()I

    #@10
    move-result v1

    #@11
    iget v2, p0, Landroid/security/net/config/Pin;->mHashCode:I

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 68
    return v3

    #@16
    .line 70
    :cond_2
    iget-object v1, p0, Landroid/security/net/config/Pin;->digest:[B

    #@18
    iget-object v2, v0, Landroid/security/net/config/Pin;->digest:[B

    #@1a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 71
    return v3

    #@21
    .line 73
    :cond_3
    iget-object v1, p0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    #@23
    iget-object v2, v0, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_4

    #@2b
    .line 74
    return v3

    #@2c
    .line 76
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/security/net/config/Pin;->mHashCode:I

    #@2
    return v0
.end method
