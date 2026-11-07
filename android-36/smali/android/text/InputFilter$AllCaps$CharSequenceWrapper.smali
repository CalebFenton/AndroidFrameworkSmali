.class Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter$AllCaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharSequenceWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mLength:I

.field private final greylist-max-o mSource:Ljava/lang/CharSequence;

.field private final greylist-max-o mStart:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    .line 114
    iput p2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    .line 115
    iput p3, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mEnd:I

    .line 116
    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "index"    # I

    .line 124
    if-ltz p1, :cond_10

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    if-ge p1, v0, :cond_10

    .line 127
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 125
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 142
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v2, p2

    invoke-interface {v0, v1, v2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 158
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v2, p2

    invoke-interface {v0, v1, v2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 131
    if-ltz p1, :cond_18

    if-ltz p2, :cond_18

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    if-gt p2, v0, :cond_18

    if-gt p1, p2, :cond_18

    .line 134
    new-instance v0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    iget-object v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0

    .line 132
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 138
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
