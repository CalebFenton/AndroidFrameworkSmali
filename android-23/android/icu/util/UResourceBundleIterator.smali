.class public Landroid/icu/util/UResourceBundleIterator;
.super Ljava/lang/Object;
.source "UResourceBundleIterator.java"


# instance fields
.field private bundle:Landroid/icu/util/UResourceBundle;

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(Landroid/icu/util/UResourceBundle;)V
    .locals 1
    .param p1, "bndl"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@6
    .line 39
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    #@8
    .line 48
    iput-object p1, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    #@a
    .line 49
    iget-object v0, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    #@c
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    #@12
    .line 47
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@2
    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public next()Landroid/icu/util/UResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@2
    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 60
    iget-object v0, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    #@8
    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@e
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 62
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@15
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@18
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/icu/util/UResourceTypeMismatchException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@2
    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 73
    iget-object v0, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    #@8
    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@e
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 75
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@15
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@18
    throw v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    #@3
    .line 82
    return-void
.end method
