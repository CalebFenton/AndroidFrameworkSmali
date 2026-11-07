.class public Landroid/icu/text/Transliterator$Position;
.super Ljava/lang/Object;
.source "Transliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Transliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field public whitelist test-api contextLimit:I

.field public whitelist test-api contextStart:I

.field public whitelist test-api limit:I

.field public whitelist test-api start:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    .line 534
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 4
    .param p1, "contextStart"    # I
    .param p2, "contextLimit"    # I
    .param p3, "start"    # I

    .line 542
    invoke-direct {p0, p1, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    .line 543
    return-void
.end method

.method public constructor whitelist test-api <init>(IIII)V
    .registers 5
    .param p1, "contextStart"    # I
    .param p2, "contextLimit"    # I
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput p1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    .line 552
    iput p2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 553
    iput p3, p0, Landroid/icu/text/Transliterator$Position;->start:I

    .line 554
    iput p4, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 555
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/Transliterator$Position;)V
    .registers 2
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator$Position;->set(Landroid/icu/text/Transliterator$Position;)V

    .line 562
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 579
    instance-of v0, p1, Landroid/icu/text/Transliterator$Position;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 580
    move-object v0, p1

    check-cast v0, Landroid/icu/text/Transliterator$Position;

    .line 581
    .local v0, "pos":Landroid/icu/text/Transliterator$Position;
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->start:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v3, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 586
    .end local v0    # "pos":Landroid/icu/text/Transliterator$Position;
    :cond_22
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 594
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api set(Landroid/icu/text/Transliterator$Position;)V
    .registers 3
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    .line 568
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    .line 569
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 570
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->start:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    .line 571
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 572
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api validate(I)V
    .registers 5
    .param p1, "length"    # I

    .line 617
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v0, :cond_1b

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-lt v0, v1, :cond_1b

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    if-lt v0, v1, :cond_1b

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    if-lt v0, v1, :cond_1b

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-lt p1, v0, :cond_1b

    .line 629
    return-void

    .line 622
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Position {cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
