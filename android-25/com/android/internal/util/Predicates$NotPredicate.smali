.class Lcom/android/internal/util/Predicates$NotPredicate;
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
    name = "NotPredicate"
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
.field private final predicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/internal/util/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p0, "this":Lcom/android/internal/util/Predicates$NotPredicate;, "Lcom/android/internal/util/Predicates$NotPredicate<TT;>;"
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Lcom/android/internal/util/Predicates$NotPredicate;->predicate:Lcom/android/internal/util/Predicate;

    #@5
    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/Predicate;Lcom/android/internal/util/Predicates$NotPredicate;)V
    .locals 0
    .param p1, "predicate"    # Lcom/android/internal/util/Predicate;

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/util/Predicates$NotPredicate;, "Lcom/android/internal/util/Predicates$NotPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/util/Predicates$NotPredicate;-><init>(Lcom/android/internal/util/Predicate;)V

    #@3
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p0, "this":Lcom/android/internal/util/Predicates$NotPredicate;, "Lcom/android/internal/util/Predicates$NotPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/util/Predicates$NotPredicate;->predicate:Lcom/android/internal/util/Predicate;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method
