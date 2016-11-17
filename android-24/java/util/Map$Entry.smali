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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey__LambdaImpl0;,
        Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0;,
        Ljava/util/Map$Entry$-java_util_Comparator_comparingByValue__LambdaImpl0;,
        Ljava/util/Map$Entry$-java_util_Comparator_comparingByValue_java_util_Comparator_cmp_LambdaImpl0;
    }
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
.method public static synthetic -java_util_Map$Entry_lambda$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "c1"    # Ljava/util/Map$Entry;
    .param p1, "c2"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 474
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Comparable;

    #@6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public static synthetic -java_util_Map$Entry_lambda$2(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "c1"    # Ljava/util/Map$Entry;
    .param p1, "c2"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 491
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Comparable;

    #@6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public static synthetic -java_util_Map$Entry_lambda$3(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "cmp"    # Ljava/util/Comparator;
    .param p1, "c1"    # Ljava/util/Map$Entry;
    .param p2, "c2"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 510
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static synthetic -java_util_Map$Entry_lambda$4(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "cmp"    # Ljava/util/Comparator;
    .param p1, "c1"    # Ljava/util/Map$Entry;
    .param p2, "c2"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 529
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static comparingByKey()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 474
    new-instance v0, Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey__LambdaImpl0;-><init>()V

    #@5
    .line 473
    check-cast v0, Ljava/io/Serializable;

    #@7
    return-object v0
.end method

.method public static comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 508
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 510
    new-instance v0, Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0;-><init>(Ljava/util/Comparator;)V

    #@8
    .line 509
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method

.method public static comparingByValue()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 491
    new-instance v0, Ljava/util/Map$Entry$-java_util_Comparator_comparingByValue__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/Map$Entry$-java_util_Comparator_comparingByValue__LambdaImpl0;-><init>()V

    #@5
    .line 490
    check-cast v0, Ljava/io/Serializable;

    #@7
    return-object v0
.end method

.method public static comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 527
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 529
    new-instance v0, Ljava/util/Map$Entry$-java_util_Comparator_comparingByValue_java_util_Comparator_cmp_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Map$Entry$-java_util_Comparator_comparingByValue_java_util_Comparator_cmp_LambdaImpl0;-><init>(Ljava/util/Comparator;)V

    #@8
    .line 528
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
