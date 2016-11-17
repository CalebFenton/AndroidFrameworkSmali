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


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public contextLimit:I

.field public contextStart:I

.field public limit:I

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/Transliterator$Position;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/Transliterator$Position;->-assertionsDisabled:Z

    #@b
    .line 265
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 306
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    #@4
    .line 305
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "contextStart"    # I
    .param p2, "contextLimit"    # I
    .param p3, "start"    # I

    #@0
    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    #@3
    .line 314
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "contextStart"    # I
    .param p2, "contextLimit"    # I
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 324
    iput p1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@5
    .line 325
    iput p2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@7
    .line 326
    iput p3, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@9
    .line 327
    iput p4, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@b
    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transliterator$Position;)V
    .locals 0
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 334
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator$Position;->set(Landroid/icu/text/Transliterator$Position;)V

    #@6
    .line 333
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 351
    instance-of v2, p1, Landroid/icu/text/Transliterator$Position;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 352
    nop

    #@7
    nop

    #@8
    .line 353
    .local v0, "pos":Landroid/icu/text/Transliterator$Position;
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@a
    iget v3, v0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 354
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@10
    iget v3, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 355
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@16
    iget v3, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 356
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1c
    iget v3, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    const/4 v1, 0x1

    #@21
    .line 353
    :cond_0
    return v1

    #@22
    .line 358
    .end local v0    # "pos":Landroid/icu/text/Transliterator$Position;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 369
    sget-boolean v0, Landroid/icu/text/Transliterator$Position;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 370
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public set(Landroid/icu/text/Transliterator$Position;)V
    .locals 1
    .param p1, "pos"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 341
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@2
    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@4
    .line 342
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@6
    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@8
    .line 343
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->start:I

    #@a
    iput v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@c
    .line 344
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->limit:I

    #@e
    iput v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@10
    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[cs="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 378
    const-string/jumbo v1, ", s="

    #@15
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 378
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@1b
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 379
    const-string/jumbo v1, ", l="

    #@22
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 379
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@28
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 380
    const-string/jumbo v1, ", cl="

    #@2f
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 380
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@35
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 381
    const-string/jumbo v1, "]"

    #@3c
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public final validate(I)V
    .locals 3
    .param p1, "length"    # I

    #@0
    .prologue
    .line 391
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 392
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@6
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Invalid Position {cs="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 397
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@1a
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 397
    const-string/jumbo v2, ", s="

    #@21
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 398
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@27
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 398
    const-string/jumbo v2, ", l="

    #@2e
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 399
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@34
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 399
    const-string/jumbo v2, ", cl="

    #@3b
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 400
    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@41
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 400
    const-string/jumbo v2, "}, len="

    #@48
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 393
    :cond_1
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@5a
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    #@5c
    if-lt v0, v1, :cond_0

    #@5e
    .line 394
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@60
    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@62
    if-lt v0, v1, :cond_0

    #@64
    .line 395
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@66
    if-lt p1, v0, :cond_0

    #@68
    .line 390
    return-void
.end method
