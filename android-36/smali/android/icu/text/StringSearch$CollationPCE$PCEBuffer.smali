.class final Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch$CollationPCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PCEBuffer"
.end annotation


# instance fields
.field private greylist-max-o bufferIndex_:I

.field private greylist-max-o buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1841
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    .line 1842
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/StringSearch-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o empty()Z
    .registers 2

    .line 1849
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    .registers 3

    .line 1868
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    if-lez v0, :cond_f

    .line 1869
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    return-object v0

    .line 1871
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o put(JII)V
    .registers 9
    .param p1, "ce"    # J
    .param p3, "ixLow"    # I
    .param p4, "ixHigh"    # I

    .line 1854
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v1, v1

    if-lt v0, v1, :cond_19

    .line 1855
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    .line 1856
    .local v0, "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1857
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    .line 1859
    .end local v0    # "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    :cond_19
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    new-instance v2, Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/text/StringSearch$CollationPCE$PCEI;-><init>(Landroid/icu/text/StringSearch-IA;)V

    aput-object v2, v0, v1

    .line 1860
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput-wide p1, v0, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    .line 1861
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput p3, v0, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    .line 1862
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput p4, v0, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    .line 1864
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    .line 1865
    return-void
.end method

.method greylist-max-o reset()V
    .registers 2

    .line 1845
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    .line 1846
    return-void
.end method
