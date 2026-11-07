.class Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$4;
.super Ljava/util/HashMap;
.source "SSHNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->-$$Nest$sfgetoidMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->-$$Nest$sfgetoidMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_f

    .line 93
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_29
    return-void
.end method
