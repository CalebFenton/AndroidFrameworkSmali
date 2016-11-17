.class Lsun/security/ssl/X509KeyManagerImpl$KeyType;
.super Ljava/lang/Object;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyType"
.end annotation


# instance fields
.field final keyAlgorithm:Ljava/lang/String;

.field final sigKeyAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 273
    const-string/jumbo v1, "_"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    .line 274
    .local v0, "k":I
    const/4 v1, -0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 275
    iput-object p1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    #@f
    .line 276
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    #@12
    .line 272
    :goto_0
    return-void

    #@13
    .line 278
    :cond_0
    const/4 v1, 0x0

    #@14
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    #@1a
    .line 279
    add-int/lit8 v1, v0, 0x1

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    #@22
    goto :goto_0
.end method


# virtual methods
.method matches([Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 284
    aget-object v3, p1, v5

    #@4
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_0

    #@14
    .line 285
    return v5

    #@15
    .line 287
    :cond_0
    iget-object v3, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    #@17
    if-nez v3, :cond_1

    #@19
    .line 288
    return v6

    #@1a
    .line 290
    :cond_1
    array-length v3, p1

    #@1b
    if-le v3, v6, :cond_2

    #@1d
    .line 292
    iget-object v3, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    #@1f
    .line 293
    aget-object v4, p1, v6

    #@21
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    return v3

    #@2e
    .line 297
    :cond_2
    aget-object v0, p1, v5

    #@30
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@32
    .line 298
    .local v0, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 299
    .local v2, "sigAlgName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "WITH"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    iget-object v4, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    #@4a
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 300
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5b
    move-result v3

    #@5c
    return v3
.end method
