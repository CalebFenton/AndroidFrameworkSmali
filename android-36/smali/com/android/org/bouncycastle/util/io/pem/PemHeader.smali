.class public Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;
.source "PemHeader.java"


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-void
.end method

.method private blacklist getHashCode(Ljava/lang/String;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 59
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private blacklist isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 74
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 42
    instance-of v0, p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 47
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    if-eq p1, p0, :cond_20

    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    return v1

    :cond_20
    :goto_20
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method
