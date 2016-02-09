.class public Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;
.source "PemHeader.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    #@5
    .line 20
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    #@7
    .line 17
    return-void
.end method

.method private getHashCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    if-nez p1, :cond_0

    #@2
    .line 54
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    if-ne p1, p2, :cond_0

    #@2
    .line 64
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 67
    :cond_0
    if-eqz p1, :cond_1

    #@6
    if-nez p2, :cond_2

    #@8
    .line 69
    :cond_1
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 72
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 40
    instance-of v2, p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 42
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 45
    check-cast v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    #@9
    .line 47
    .local v0, "other":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    if-eq v0, p0, :cond_2

    #@b
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    #@d
    iget-object v3, v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    #@f
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    #@17
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    #@19
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    :cond_1
    :goto_0
    return v1

    #@1e
    :cond_2
    const/4 v1, 0x1

    #@1f
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    #@8
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    mul-int/lit8 v1, v1, 0x1f

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method
