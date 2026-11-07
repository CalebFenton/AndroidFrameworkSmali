.class public Lcom/android/internal/org/bouncycastle/jcajce/util/PrivateKeyAnnotator;
.super Ljava/lang/Object;
.source "PrivateKeyAnnotator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist annotate(Ljava/security/PrivateKey;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .registers 3
    .param p0, "privKey"    # Ljava/security/PrivateKey;
    .param p1, "label"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist annotate(Ljava/security/PrivateKey;Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .registers 5
    .param p0, "privKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;"
        }
    .end annotation

    .line 29
    .local p1, "annotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 31
    .local v0, "savedAnnotations":Ljava/util/Map;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method
