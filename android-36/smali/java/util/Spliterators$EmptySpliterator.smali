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
        Ljava/util/Spliterators$EmptySpliterator$OfLong;,
        Ljava/util/Spliterators$EmptySpliterator$OfInt;,
        Ljava/util/Spliterators$EmptySpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator<",
        "TT;>;C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 882
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 902
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    const/16 v0, 0x4040

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 898
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 894
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 889
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 885
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method
