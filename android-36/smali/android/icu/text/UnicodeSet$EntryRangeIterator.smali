.class Landroid/icu/text/UnicodeSet$EntryRangeIterator;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o pos:I

.field greylist-max-o result:Landroid/icu/text/UnicodeSet$EntryRange;

.field final synthetic blacklist this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4439
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4441
    new-instance p1, Landroid/icu/text/UnicodeSet$EntryRange;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet$EntryRange;-><init>()V

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 4

    .line 4445
    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlen(Landroid/icu/text/UnicodeSet;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method public blacklist next()Landroid/icu/text/UnicodeSet$EntryRange;
    .registers 5

    .line 4449
    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlen(Landroid/icu/text/UnicodeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_35

    .line 4450
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlist(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    .line 4451
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-$$Nest$fgetlist(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    .line 4455
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    return-object v0

    .line 4453
    :cond_35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 4439
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->next()Landroid/icu/text/UnicodeSet$EntryRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 4459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
