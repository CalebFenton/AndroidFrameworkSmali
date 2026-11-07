.class public Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
.super Ljava/lang/Object;
.source "AnnotatedPrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field public static final blacklist LABEL:Ljava/lang/String; = "label"


# instance fields
.field private final blacklist annotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist key:Ljava/security/PrivateKey;


# direct methods
.method constructor blacklist <init>(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "label"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    .line 25
    const-string v0, "label"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    .line 26
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/PrivateKey;Ljava/util/Map;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "annotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    .line 31
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist addAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "annotation"    # Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 65
    .local v0, "newAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    if-eqz v0, :cond_10

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0, v1}, Ljava/security/PrivateKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 106
    :cond_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0, p1}, Ljava/security/PrivateKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnnotation(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnnotations()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Ljava/security/PrivateKey;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist removeAnnotation(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 80
    .local v0, "newAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
