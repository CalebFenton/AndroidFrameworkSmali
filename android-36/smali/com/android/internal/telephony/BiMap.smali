.class public Lcom/android/internal/telephony/BiMap;
.super Ljava/lang/Object;
.source "BiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mPrimaryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private blacklist mSecondaryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BiMap;->mSecondaryMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public blacklist getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getValues()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/telephony/BiMap;->mSecondaryMap:Ljava/util/Map;

    .line 33
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_21

    .line 37
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p0, p0, Lcom/android/internal/telephony/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist remove(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/internal/telephony/BiMap;->mPrimaryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p0, p0, Lcom/android/internal/telephony/BiMap;->mSecondaryMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v0
.end method

.method public blacklist removeValue(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BiMap;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
