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
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field greylist-max-o mIterator:Landroid/util/FastImmutableArraySet$FastIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet$FastIterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet;->mIterator:Landroid/util/FastImmutableArraySet$FastIterator;

    .line 41
    .local v0, "it":Landroid/util/FastImmutableArraySet$FastIterator;, "Landroid/util/FastImmutableArraySet$FastIterator<TT;>;"
    if-nez v0, :cond_f

    .line 42
    new-instance v1, Landroid/util/FastImmutableArraySet$FastIterator;

    iget-object v2, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet$FastIterator;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .line 43
    iput-object v0, p0, Landroid/util/FastImmutableArraySet;->mIterator:Landroid/util/FastImmutableArraySet$FastIterator;

    goto :goto_12

    .line 45
    :cond_f
    const/4 v1, 0x0

    iput v1, v0, Landroid/util/FastImmutableArraySet$FastIterator;->mIndex:I

    .line 47
    :goto_12
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 52
    .local p0, "this":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
