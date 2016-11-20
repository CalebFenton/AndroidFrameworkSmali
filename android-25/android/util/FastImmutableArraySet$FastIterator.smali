.class final Landroid/util/FastImmutableArraySet$FastIterator;
.super Ljava/lang/Object;
.source "FastImmutableArraySet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/FastImmutableArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FastIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "this":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet<TT;>.FastIterator<TT;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Landroid/util/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    #@5
    .line 59
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 65
    .local p0, "this":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet<TT;>.FastIterator<TT;>;"
    iget v0, p0, Landroid/util/FastImmutableArraySet$FastIterator;->mIndex:I

    #@2
    iget-object v1, p0, Landroid/util/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p0, "this":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet<TT;>.FastIterator<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    #@2
    iget v1, p0, Landroid/util/FastImmutableArraySet$FastIterator;->mIndex:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroid/util/FastImmutableArraySet$FastIterator;->mIndex:I

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 75
    .local p0, "this":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet<TT;>.FastIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
