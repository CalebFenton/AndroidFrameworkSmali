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
.field private bufferIndex_:I

.field private buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1759
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@7
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@9
    .line 1760
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@c
    .line 1758
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>()V

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
    .line 1767
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    .locals 2

    #@0
    .prologue
    .line 1786
    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1787
    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@6
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 1789
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method put(JII)V
    .locals 5
    .param p1, "ce"    # J
    .param p3, "ixLow"    # I
    .param p4, "ixHigh"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1772
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@3
    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@5
    array-length v2, v2

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 1773
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@a
    array-length v1, v1

    #@b
    add-int/lit8 v1, v1, 0x8

    #@d
    new-array v0, v1, [Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@f
    .line 1774
    .local v0, "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@11
    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@13
    array-length v2, v2

    #@14
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 1775
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@19
    .line 1777
    .end local v0    # "newBuffer":[Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    :cond_0
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@1b
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@1d
    new-instance v3, Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CollationPCE$PCEI;-><init>(Landroid/icu/text/StringSearch$CollationPCE$PCEI;)V

    #@23
    aput-object v3, v1, v2

    #@25
    .line 1778
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@27
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@29
    aget-object v1, v1, v2

    #@2b
    iput-wide p1, v1, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    #@2d
    .line 1779
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@2f
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@31
    aget-object v1, v1, v2

    #@33
    iput p3, v1, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    #@35
    .line 1780
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@37
    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@39
    aget-object v1, v1, v2

    #@3b
    iput p4, v1, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    #@3d
    .line 1782
    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@3f
    add-int/lit8 v1, v1, 0x1

    #@41
    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@43
    .line 1770
    return-void
.end method

.method reset()V
    .locals 1

    #@0
    .prologue
    .line 1763
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    #@3
    .line 1762
    return-void
.end method
