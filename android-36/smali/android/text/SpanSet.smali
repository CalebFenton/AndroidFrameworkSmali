.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o numberOfSpans:I

.field greylist-max-o spanEnds:[I

.field greylist-max-o spanFlags:[I

.field greylist-max-o spanStarts:[I

.field greylist-max-r spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 48
    return-void
.end method


# virtual methods
.method greylist-max-o getNextTransition(II)I
    .registers 6
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 106
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_1a

    .line 107
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    .line 108
    .local v1, "spanStart":I
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    .line 109
    .local v2, "spanEnd":I
    if-le v1, p1, :cond_12

    if-ge v1, p2, :cond_12

    move p2, v1

    .line 110
    :cond_12
    if-le v2, p1, :cond_17

    if-ge v2, p2, :cond_17

    move p2, v2

    .line 106
    .end local v1    # "spanStart":I
    .end local v2    # "spanEnd":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "i":I
    :cond_1a
    return p2
.end method

.method public greylist-max-o hasSpansIntersecting(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 94
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_17

    .line 96
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    if-ge v1, p2, :cond_14

    iget-object v1, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_12

    goto :goto_14

    .line 97
    :cond_12
    const/4 v1, 0x1

    return v1

    .line 94
    :cond_14
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o init(Landroid/text/Spanned;II)V
    .registers 14
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 52
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "allSpans":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    .line 55
    .local v1, "length":I
    if-lez v1, :cond_28

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, v1, :cond_28

    .line 57
    :cond_12
    iget-object v2, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 58
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 59
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 60
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 63
    :cond_28
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 64
    .local v2, "prevNumberOfSpans":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 65
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v1, :cond_62

    .line 66
    aget-object v4, v0, v3

    .line 68
    .local v4, "span":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 69
    .local v5, "spanStart":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 70
    .local v6, "spanEnd":I
    if-ne v5, v6, :cond_3d

    goto :goto_5f

    .line 72
    :cond_3d
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 74
    .local v7, "spanFlag":I
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v4, v8, v9

    .line 75
    iget-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v5, v8, v9

    .line 76
    iget-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v6, v8, v9

    .line 77
    iget-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v7, v8, v9

    .line 79
    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 65
    .end local v4    # "span":Ljava/lang/Object;, "TE;"
    .end local v5    # "spanStart":I
    .end local v6    # "spanEnd":I
    .end local v7    # "spanFlag":I
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 83
    .end local v3    # "i":I
    :cond_62
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v2, :cond_6e

    .line 85
    iget-object v3, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 87
    :cond_6e
    return-void
.end method

.method public greylist-max-o recycle()V
    .registers 5

    .line 119
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 122
    :cond_d
    return-void
.end method
