.class public abstract Ljava/security/cert/PKIXRevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PKIXRevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/PKIXRevocationChecker$Option;
    }
.end annotation


# instance fields
.field private ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private ocspResponder:Ljava/net/URI;

.field private ocspResponderCert:Ljava/security/cert/X509Certificate;

.field private ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    #@9
    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@f
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    #@15
    .line 102
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/security/cert/PKIXRevocationChecker;
    .locals 6

    #@0
    .prologue
    .line 259
    invoke-super {p0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    #@6
    .line 260
    .local v0, "copy":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v4, Ljava/util/ArrayList;

    #@8
    iget-object v5, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    #@a
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@d
    iput-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    #@f
    .line 261
    new-instance v4, Ljava/util/HashMap;

    #@11
    iget-object v5, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@13
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@16
    iput-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@18
    .line 264
    iget-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@1a
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object v4

    #@1e
    .line 263
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Ljava/util/Map$Entry;

    #@2e
    .line 266
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, [B

    #@34
    .line 267
    .local v1, "encoded":[B
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, [B

    #@3a
    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    goto :goto_0

    #@3e
    .line 269
    .end local v1    # "encoded":[B
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    #@40
    iget-object v5, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    #@42
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@45
    iput-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    #@47
    .line 270
    return-object v0
.end method

.method public getOcspExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOcspResponder()Ljava/net/URI;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponder:Ljava/net/URI;

    #@2
    return-object v0
.end method

.method public getOcspResponderCert()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponderCert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getOcspResponses()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    new-instance v0, Ljava/util/HashMap;

    #@2
    iget-object v3, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@4
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    #@b
    .line 213
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    iget-object v3, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@d
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Map$Entry;

    #@21
    .line 214
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, [B

    #@2d
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, [B

    #@33
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_0

    #@37
    .line 216
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    :cond_0
    return-object v0
.end method

.method public getOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract getSoftFailExceptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end method

.method public setOcspExtensions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    if-nez p1, :cond_0

    #@2
    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 164
    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    #@8
    .line 162
    return-void

    #@9
    .line 166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@e
    goto :goto_0
.end method

.method public setOcspResponder(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponder:Ljava/net/URI;

    #@2
    .line 112
    return-void
.end method

.method public setOcspResponderCert(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponderCert:Ljava/security/cert/X509Certificate;

    #@2
    .line 137
    return-void
.end method

.method public setOcspResponses(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    if-nez p1, :cond_0

    #@2
    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@5
    move-result-object v3

    #@6
    iput-object v3, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@8
    .line 188
    :goto_0
    return-void

    #@9
    .line 193
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@e
    move-result v3

    #@f
    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    #@12
    .line 194
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v2

    #@1a
    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/util/Map$Entry;

    #@26
    .line 195
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@2c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, [B

    #@32
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, [B

    #@38
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    goto :goto_1

    #@3c
    .line 197
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    :cond_1
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    #@3e
    goto :goto_0
.end method

.method public setOptions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 226
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    if-nez p1, :cond_0

    #@2
    .line 227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 226
    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    #@8
    .line 225
    return-void

    #@9
    .line 228
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@b
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@e
    goto :goto_0
.end method
