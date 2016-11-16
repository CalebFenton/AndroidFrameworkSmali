.class Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicMarkableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mark:Z

.field final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "mark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 26
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>.Pair<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@5
    .line 28
    iput-boolean p2, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@7
    .line 26
    return-void
.end method

.method static of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    .locals 1
    .param p1, "mark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 31
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;-><init>(Ljava/lang/Object;Z)V

    #@5
    return-object v0
.end method
