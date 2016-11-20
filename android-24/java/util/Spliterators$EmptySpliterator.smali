.class abstract Ljava/util/Spliterators$EmptySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EmptySpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$EmptySpliterator$OfDouble;,
        Ljava/util/Spliterators$EmptySpliterator$OfInt;,
        Ljava/util/Spliterators$EmptySpliterator$OfLong;,
        Ljava/util/Spliterators$EmptySpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator",
        "<TT;>;C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 838
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 858
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    const/16 v0, 0x4040

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 854
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 850
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 849
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 845
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 846
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 841
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
