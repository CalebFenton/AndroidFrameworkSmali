.class final Landroid/icu/text/Normalizer$CharsAppendable;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharsAppendable"
.end annotation


# instance fields
.field private final greylist-max-o chars:[C

.field private final greylist-max-o limit:I

.field private greylist-max-o offset:I

.field private final greylist-max-o start:I


# direct methods
.method public constructor greylist-max-o <init>([CII)V
    .registers 4
    .param p1, "dest"    # [C
    .param p2, "destStart"    # I
    .param p3, "destLimit"    # I

    .line 2564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2565
    iput-object p1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    .line 2566
    iput p2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iput p2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->start:I

    .line 2567
    iput p3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    .line 2568
    return-void
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 4
    .param p1, "c"    # C

    .line 2579
    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    if-ge v0, v1, :cond_c

    .line 2580
    iget-object v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    aput-char p1, v0, v1

    .line 2582
    :cond_c
    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    .line 2583
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2587
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Normalizer$CharsAppendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sStart"    # I
    .param p3, "sLimit"    # I

    .line 2591
    sub-int v0, p3, p2

    .line 2592
    .local v0, "len":I
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1d

    .line 2593
    :goto_9
    if-ge p2, p3, :cond_22

    .line 2594
    iget-object v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sStart":I
    .local v3, "sStart":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    aput-char p2, v1, v2

    move p2, v3

    goto :goto_9

    .line 2597
    .end local v3    # "sStart":I
    .restart local p2    # "sStart":I
    :cond_1d
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    .line 2599
    :cond_22
    return-object p0
.end method

.method public greylist-max-o length()I
    .registers 4

    .line 2570
    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->start:I

    sub-int/2addr v0, v1

    .line 2571
    .local v0, "len":I
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    if-gt v1, v2, :cond_c

    .line 2572
    return v0

    .line 2574
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
