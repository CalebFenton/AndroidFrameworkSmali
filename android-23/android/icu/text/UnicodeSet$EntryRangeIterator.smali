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
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field pos:I

.field result:Landroid/icu/text/UnicodeSet$EntryRange;

.field final synthetic this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 4236
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4238
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRange;

    #@7
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet$EntryRange;-><init>()V

    #@a
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    #@c
    .line 4236
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$EntryRangeIterator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 4241
    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    #@2
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    #@4
    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get1(Landroid/icu/text/UnicodeSet;)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public next()Landroid/icu/text/UnicodeSet$EntryRange;
    .locals 4

    #@0
    .prologue
    .line 4244
    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    #@2
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    #@4
    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get1(Landroid/icu/text/UnicodeSet;)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 4245
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    #@e
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    #@10
    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get2(Landroid/icu/text/UnicodeSet;)[I

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    #@16
    add-int/lit8 v3, v2, 0x1

    #@18
    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    #@1a
    aget v1, v1, v2

    #@1c
    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    #@1e
    .line 4246
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    #@20
    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    #@22
    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get2(Landroid/icu/text/UnicodeSet;)[I

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    #@28
    add-int/lit8 v3, v2, 0x1

    #@2a
    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    #@2c
    aget v1, v1, v2

    #@2e
    add-int/lit8 v1, v1, -0x1

    #@30
    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    #@32
    .line 4250
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    #@34
    return-object v0

    #@35
    .line 4248
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@37
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@3a
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4243
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->next()Landroid/icu/text/UnicodeSet$EntryRange;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 4253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
