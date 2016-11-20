.class final Ljava/util/Spliterators$EmptySpliterator$OfRef;
.super Ljava/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Spliterators$EmptySpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<-TT;>;>;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 864
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfRef;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/Spliterators$EmptySpliterator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 849
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfRef;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfRef<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 844
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfRef;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfRef<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
