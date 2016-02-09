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
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buffer:[C

.field private current:I

.field private item:I

.field private len:I

.field private limit:I

.field private sourceList:[I

.field private sourceStrings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "source"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 4283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4285
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-get1(Landroid/icu/text/UnicodeSet;)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    #@b
    .line 4286
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    #@d
    if-lez v0, :cond_0

    #@f
    .line 4287
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@11
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    #@13
    .line 4288
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-get2(Landroid/icu/text/UnicodeSet;)[I

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@19
    .line 4289
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@1b
    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@1d
    add-int/lit8 v2, v1, 0x1

    #@1f
    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@21
    aget v0, v0, v1

    #@23
    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    #@25
    .line 4290
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@27
    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@29
    add-int/lit8 v2, v1, 0x1

    #@2b
    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@2d
    aget v0, v0, v1

    #@2f
    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    #@31
    .line 4283
    :goto_0
    return-void

    #@32
    .line 4292
    :cond_0
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@34
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    #@3a
    .line 4293
    const/4 v0, 0x0

    #@3b
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@3d
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 4301
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    #@6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4307
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4308
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 4309
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    #@7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/lang/String;

    #@d
    return-object v2

    #@e
    .line 4311
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    #@10
    add-int/lit8 v2, v0, 0x1

    #@12
    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    #@14
    .line 4313
    .local v0, "codepoint":I
    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    #@16
    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    #@18
    if-lt v2, v3, :cond_1

    #@1a
    .line 4314
    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@1c
    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    #@1e
    if-lt v2, v3, :cond_2

    #@20
    .line 4315
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    #@22
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    #@28
    .line 4316
    iput-object v4, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@2a
    .line 4323
    :cond_1
    :goto_0
    const v2, 0xffff

    #@2d
    if-gt v0, v2, :cond_3

    #@2f
    .line 4324
    int-to-char v2, v0

    #@30
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    return-object v2

    #@35
    .line 4318
    :cond_2
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@37
    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@39
    add-int/lit8 v4, v3, 0x1

    #@3b
    iput v4, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@3d
    aget v2, v2, v3

    #@3f
    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    #@41
    .line 4319
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    #@43
    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@45
    add-int/lit8 v4, v3, 0x1

    #@47
    iput v4, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    #@49
    aget v2, v2, v3

    #@4b
    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    #@4d
    goto :goto_0

    #@4e
    .line 4328
    :cond_3
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    #@50
    if-nez v2, :cond_4

    #@52
    .line 4329
    const/4 v2, 0x2

    #@53
    new-array v2, v2, [C

    #@55
    iput-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    #@57
    .line 4332
    :cond_4
    const/high16 v2, 0x10000

    #@59
    sub-int v1, v0, v2

    #@5b
    .line 4333
    .local v1, "offset":I
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    #@5d
    ushr-int/lit8 v3, v1, 0xa

    #@5f
    const v4, 0xd800

    #@62
    add-int/2addr v3, v4

    #@63
    int-to-char v3, v3

    #@64
    const/4 v4, 0x0

    #@65
    aput-char v3, v2, v4

    #@67
    .line 4334
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    #@69
    and-int/lit16 v3, v1, 0x3ff

    #@6b
    const v4, 0xdc00

    #@6e
    add-int/2addr v3, v4

    #@6f
    int-to-char v3, v3

    #@70
    const/4 v4, 0x1

    #@71
    aput-char v3, v2, v4

    #@73
    .line 4335
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    #@75
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    return-object v2
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 4342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
