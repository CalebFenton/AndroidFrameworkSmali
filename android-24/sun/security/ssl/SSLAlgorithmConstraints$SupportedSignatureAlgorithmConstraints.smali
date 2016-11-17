.class Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;
.super Ljava/lang/Object;
.source "SSLAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportedSignatureAlgorithmConstraints"
.end annotation


# instance fields
.field private supportedAlgorithms:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "supportedAlgorithms"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 200
    if-eqz p1, :cond_0

    #@6
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    #@e
    .line 199
    :goto_0
    return-void

    #@f
    .line 203
    :cond_0
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    #@11
    goto :goto_0
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 7
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v3, 0x0

    #@1
    .line 210
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 211
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    .line 212
    const-string/jumbo v3, "No algorithm name specified"

    #@e
    .line 211
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 215
    :cond_1
    if-eqz p1, :cond_2

    #@14
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 216
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 217
    const-string/jumbo v3, "No cryptographic primitive specified"

    #@1f
    .line 216
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 220
    :cond_3
    iget-object v2, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    #@25
    if-eqz v2, :cond_4

    #@27
    .line 221
    iget-object v2, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    #@29
    array-length v2, v2

    #@2a
    if-nez v2, :cond_5

    #@2c
    .line 222
    :cond_4
    return v3

    #@2d
    .line 226
    :cond_5
    const-string/jumbo v2, "and"

    #@30
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    .line 227
    .local v0, "position":I
    if-lez v0, :cond_6

    #@36
    .line 228
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object p2

    #@3a
    .line 231
    :cond_6
    iget-object v4, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    #@3c
    array-length v5, v4

    #@3d
    move v2, v3

    #@3e
    :goto_0
    if-ge v2, v5, :cond_8

    #@40
    aget-object v1, v4, v2

    #@42
    .line 232
    .local v1, "supportedAlgorithm":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_7

    #@48
    .line 233
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 231
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 237
    .end local v1    # "supportedAlgorithm":Ljava/lang/String;
    :cond_8
    return v3
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 249
    const-string/jumbo v1, "No algorithm name specified"

    #@d
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 252
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 1
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 241
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method
