.class public Landroid/icu/util/UResourceBundleIterator;
.super Ljava/lang/Object;
.source "UResourceBundleIterator.java"


# instance fields
.field private greylist-max-o bundle:Landroid/icu/util/UResourceBundle;

.field private greylist-max-o index:I

.field private greylist-max-o size:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/util/UResourceBundle;)V
    .registers 3
    .param p1, "bndl"    # Landroid/icu/util/UResourceBundle;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    .line 42
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    .line 50
    iput-object p1, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    .line 51
    iget-object v0, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v0

    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    .line 52
    return-void
.end method


# virtual methods
.method public greylist hasNext()Z
    .registers 3

    .line 93
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist next()Landroid/icu/util/UResourceBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 61
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_13

    .line 62
    iget-object v0, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public greylist-max-o nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/icu/util/UResourceTypeMismatchException;
        }
    .end annotation

    .line 73
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_13

    .line 74
    iget-object v0, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public greylist-max-o reset()V
    .registers 2

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    .line 85
    return-void
.end method
