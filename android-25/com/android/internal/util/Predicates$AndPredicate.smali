.class Lcom/android/internal/util/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final components:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p0, "this":Lcom/android/internal/util/Predicates$AndPredicate;, "Lcom/android/internal/util/Predicates$AndPredicate<TT;>;"
    .local p1, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/internal/util/Predicate<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Lcom/android/internal/util/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    #@5
    .line 83
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/android/internal/util/Predicates$AndPredicate;)V
    .locals 0
    .param p1, "components"    # Ljava/lang/Iterable;

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/Predicates$AndPredicate;, "Lcom/android/internal/util/Predicates$AndPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/util/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;)V

    #@3
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p0, "this":Lcom/android/internal/util/Predicates$AndPredicate;, "Lcom/android/internal/util/Predicates$AndPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/android/internal/util/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "predicate$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/util/Predicate;

    #@12
    .line 89
    .local v0, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<-TT;>;"
    invoke-interface {v0, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 90
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 93
    .end local v0    # "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<-TT;>;"
    :cond_1
    const/4 v2, 0x1

    #@1b
    return v2
.end method
