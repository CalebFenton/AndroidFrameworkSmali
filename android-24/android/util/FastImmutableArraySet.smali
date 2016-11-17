.class public final Landroid/util/FastImmutableArraySet;
.super Ljava/util/AbstractSet;
.source "FastImmutableArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/FastImmutableArraySet$FastIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIterator:Landroid/util/FastImmutableArraySet$FastIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet$FastIterator",
            "<TT;>;"
        }
    .end annotation
.end field


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
    .line 34
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    #@5
    .line 34
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet;->mIterator:Landroid/util/FastImmutableArraySet$FastIterator;

    #@2
    .line 41
    .local v0, "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    if-nez v0, :cond_0

    #@4
    .line 42
    new-instance v0, Landroid/util/FastImmutableArraySet$FastIterator;

    #@6
    .end local v0    # "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    iget-object v1, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    #@8
    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet$FastIterator;-><init>([Ljava/lang/Object;)V

    #@b
    .line 43
    .restart local v0    # "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    iput-object v0, p0, Landroid/util/FastImmutableArraySet;->mIterator:Landroid/util/FastImmutableArraySet$FastIterator;

    #@d
    .line 47
    :goto_0
    return-object v0

    #@e
    .line 45
    :cond_0
    const/4 v1, 0x0

    #@f
    iput v1, v0, Landroid/util/FastImmutableArraySet$FastIterator;->mIndex:I

    #@11
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 52
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method
