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
.field private final chars:[C

.field private final limit:I

.field private offset:I

.field private final start:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0
    .param p1, "dest"    # [C
    .param p2, "destStart"    # I
    .param p3, "destLimit"    # I

    #@0
    .prologue
    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2430
    iput-object p1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    #@5
    .line 2431
    iput p2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@7
    iput p2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->start:I

    #@9
    .line 2432
    iput p3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    #@b
    .line 2429
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 2443
    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@2
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 2444
    iget-object v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    #@8
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@a
    aput-char p1, v0, v1

    #@c
    .line 2446
    :cond_0
    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@12
    .line 2447
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2450
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Normalizer$CharsAppendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sStart"    # I
    .param p3, "sLimit"    # I

    #@0
    .prologue
    .line 2453
    sub-int v0, p3, p2

    #@2
    .line 2454
    .local v0, "len":I
    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    #@4
    iget v3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@6
    sub-int/2addr v2, v3

    #@7
    if-gt v0, v2, :cond_0

    #@9
    :goto_0
    move v1, p2

    #@a
    .line 2455
    .end local p2    # "sStart":I
    .local v1, "sStart":I
    if-ge v1, p3, :cond_1

    #@c
    .line 2456
    iget-object v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    #@e
    iget v3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@10
    add-int/lit8 v4, v3, 0x1

    #@12
    iput v4, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@14
    add-int/lit8 p2, v1, 0x1

    #@16
    .end local v1    # "sStart":I
    .restart local p2    # "sStart":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@19
    move-result v4

    #@1a
    aput-char v4, v2, v3

    #@1c
    goto :goto_0

    #@1d
    .line 2459
    :cond_0
    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@1f
    add-int/2addr v2, v0

    #@20
    iput v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@22
    .line 2461
    :goto_1
    return-object p0

    #@23
    .end local p2    # "sStart":I
    .restart local v1    # "sStart":I
    :cond_1
    move p2, v1

    #@24
    .end local v1    # "sStart":I
    .restart local p2    # "sStart":I
    goto :goto_1
.end method

.method public length()I
    .locals 3

    #@0
    .prologue
    .line 2435
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@2
    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->start:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 2436
    .local v0, "len":I
    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    #@8
    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    #@a
    if-gt v1, v2, :cond_0

    #@c
    .line 2437
    return v0

    #@d
    .line 2439
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
.end method
