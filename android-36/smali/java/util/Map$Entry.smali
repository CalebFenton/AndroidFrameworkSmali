.class public interface abstract Ljava/util/Map$Entry;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation

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


# direct methods
.method public static whitelist test-api comparingByKey()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/Map$Entry$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/Map$Entry$$ExternalSyntheticLambda2;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static whitelist test-api comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 580
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v0, Ljava/util/Map$Entry$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ljava/util/Map$Entry$$ExternalSyntheticLambda3;-><init>(Ljava/util/Comparator;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static whitelist test-api comparingByValue()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Ljava/lang/Comparable<",
            "-TV;>;>()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/util/Map$Entry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/Map$Entry$$ExternalSyntheticLambda1;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static whitelist test-api comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 599
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v0, Ljava/util/Map$Entry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/Map$Entry$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static whitelist test-api copyOf(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 627
    .local p0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    instance-of v0, p0, Ljava/util/KeyValueHolder;

    if-eqz v0, :cond_8

    .line 629
    return-object p0

    .line 631
    :cond_8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist lambda$comparingByKey$6d558cbf$1(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5
    .param p0, "cmp"    # Ljava/util/Comparator;
    .param p1, "c1"    # Ljava/util/Map$Entry;
    .param p2, "c2"    # Ljava/util/Map$Entry;

    .line 582
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic blacklist lambda$comparingByKey$bbdbfea9$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "c1"    # Ljava/util/Map$Entry;
    .param p1, "c2"    # Ljava/util/Map$Entry;

    .line 546
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic blacklist lambda$comparingByValue$1065357e$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "c1"    # Ljava/util/Map$Entry;
    .param p1, "c2"    # Ljava/util/Map$Entry;

    .line 563
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic blacklist lambda$comparingByValue$827a17d5$1(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5
    .param p0, "cmp"    # Ljava/util/Comparator;
    .param p1, "c1"    # Ljava/util/Map$Entry;
    .param p2, "c2"    # Ljava/util/Map$Entry;

    .line 601
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
