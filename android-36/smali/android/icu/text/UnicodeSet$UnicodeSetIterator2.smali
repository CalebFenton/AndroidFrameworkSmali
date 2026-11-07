.class Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeSetIterator2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o buffer:[C

.field private greylist-max-o current:I

.field private greylist-max-o item:I

.field private greylist-max-o len:I

.field private greylist-max-o limit:I

.field private greylist-max-o sourceList:[I

.field private blacklist sourceStrings:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "source"    # Landroid/icu/text/UnicodeSet;

    .line 4489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4491
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlen(Landroid/icu/text/UnicodeSet;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    .line 4492
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lez v0, :cond_32

    .line 4493
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/SortedSet;

    .line 4494
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlist(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    .line 4495
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4496
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    goto :goto_3d

    .line 4498
    :cond_32
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    .line 4499
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    .line 4501
    :goto_3d
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 4508
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 4476
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 6

    .line 4516
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_d

    .line 4517
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4519
    :cond_d
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4521
    .local v0, "codepoint":I
    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    if-lt v1, v2, :cond_43

    .line 4522
    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lt v1, v2, :cond_2b

    .line 4523
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    .line 4524
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    goto :goto_43

    .line 4526
    :cond_2b
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v1, v1, v2

    iput v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4527
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v1, v1, v2

    iput v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    .line 4531
    :cond_43
    :goto_43
    const v1, 0xffff

    if-gt v0, v1, :cond_4e

    .line 4532
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4536
    :cond_4e
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    if-nez v1, :cond_57

    .line 4537
    const/4 v1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    .line 4540
    :cond_57
    const/high16 v1, 0x10000

    sub-int v1, v0, v1

    .line 4541
    .local v1, "offset":I
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    ushr-int/lit8 v3, v1, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    .line 4542
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    and-int/lit16 v3, v1, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    const/4 v4, 0x1

    aput-char v3, v2, v4

    .line 4543
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 4551
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
