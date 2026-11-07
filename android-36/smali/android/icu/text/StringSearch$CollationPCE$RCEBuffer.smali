.class final Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch$CollationPCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RCEBuffer"
.end annotation


# instance fields
.field private greylist-max-o bufferIndex_:I

.field private greylist-max-o buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    .line 1884
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/StringSearch-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o empty()Z
    .registers 2

    .line 1887
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o get()Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    .registers 3

    .line 1905
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    if-lez v0, :cond_f

    .line 1906
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    return-object v0

    .line 1908
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o put(III)V
    .registers 8
    .param p1, "ce"    # I
    .param p2, "ixLow"    # I
    .param p3, "ixHigh"    # I

    .line 1891
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    array-length v1, v1

    if-lt v0, v1, :cond_19

    .line 1892
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    .line 1893
    .local v0, "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1894
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    .line 1896
    .end local v0    # "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    :cond_19
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    new-instance v2, Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/text/StringSearch$CollationPCE$RCEI;-><init>(Landroid/icu/text/StringSearch-IA;)V

    aput-object v2, v0, v1

    .line 1897
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput p1, v0, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    .line 1898
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput p2, v0, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    .line 1899
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput p3, v0, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    .line 1901
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    .line 1902
    return-void
.end method
