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
.field private bufferIndex_:I

.field private buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1801
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@7
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@9
    .line 1802
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@c
    .line 1800
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method empty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1805
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method get()Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    .locals 2

    #@0
    .prologue
    .line 1823
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1824
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@6
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 1826
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method put(III)V
    .locals 5
    .param p1, "ce"    # I
    .param p2, "ixLow"    # I
    .param p3, "ixHigh"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1809
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@3
    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@5
    array-length v2, v2

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 1810
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@a
    array-length v1, v1

    #@b
    add-int/lit8 v1, v1, 0x8

    #@d
    new-array v0, v1, [Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@f
    .line 1811
    .local v0, "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@11
    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@13
    array-length v2, v2

    #@14
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 1812
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@19
    .line 1814
    .end local v0    # "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    :cond_0
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@1b
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@1d
    new-instance v3, Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CollationPCE$RCEI;-><init>(Landroid/icu/text/StringSearch$CollationPCE$RCEI;)V

    #@23
    aput-object v3, v1, v2

    #@25
    .line 1815
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@27
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@29
    aget-object v1, v1, v2

    #@2b
    iput p1, v1, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    #@2d
    .line 1816
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@2f
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@31
    aget-object v1, v1, v2

    #@33
    iput p2, v1, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    #@35
    .line 1817
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@37
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@39
    aget-object v1, v1, v2

    #@3b
    iput p3, v1, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    #@3d
    .line 1819
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@3f
    add-int/lit8 v1, v1, 0x1

    #@41
    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    #@43
    .line 1808
    return-void
.end method
