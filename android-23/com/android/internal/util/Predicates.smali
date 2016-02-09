.class public Lcom/android/internal/util/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/Predicates$AndPredicate;,
        Lcom/android/internal/util/Predicates$OrPredicate;,
        Lcom/android/internal/util/Predicates$NotPredicate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p0, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/internal/util/Predicate<-TT;>;>;"
    new-instance v0, Lcom/android/internal/util/Predicates$AndPredicate;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/android/internal/util/Predicates$AndPredicate;)V

    #@6
    return-object v0
.end method

.method public static varargs and([Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 36
    .local p0, "components":[Lcom/android/internal/util/Predicate;, "[Lcom/android/internal/util/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/internal/util/Predicates;->and(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<-TT;>;"
    new-instance v0, Lcom/android/internal/util/Predicates$NotPredicate;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/Predicates$NotPredicate;-><init>(Lcom/android/internal/util/Predicate;Lcom/android/internal/util/Predicates$NotPredicate;)V

    #@6
    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p0, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/internal/util/Predicate<-TT;>;>;"
    new-instance v0, Lcom/android/internal/util/Predicates$OrPredicate;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/android/internal/util/Predicates$OrPredicate;)V

    #@6
    return-object v0
.end method

.method public static varargs or([Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p0, "components":[Lcom/android/internal/util/Predicate;, "[Lcom/android/internal/util/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/internal/util/Predicates;->or(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
