.class abstract Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "TT;",
        "Ljava/util/Spliterator<",
        "TT;>;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final blacklist p:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field blacklist t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 752
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 753
    iget-object v0, p2, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    iput-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    .line 754
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V
    .registers 4
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;Z",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 747
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p3, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Z)V

    .line 748
    iput-object p3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    .line 749
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    .line 759
    iput-object p1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->t:Ljava/lang/Object;

    .line 760
    return-void
.end method
