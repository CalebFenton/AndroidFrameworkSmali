.class Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldPositionIterator"
.end annotation


# instance fields
.field private data:[I

.field private pos:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 578
    const/4 v0, -0x3

    #@4
    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@6
    .line 580
    return-void
.end method

.method synthetic constructor <init>(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    #@3
    return-void
.end method

.method public static forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    .locals 1
    .param p0, "fp"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 584
    if-eqz p0, :cond_0

    #@3
    new-instance v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@5
    invoke-direct {v0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    #@8
    :cond_0
    return-object v0
.end method

.method private setData([I)V
    .locals 1
    .param p1, "data"    # [I

    #@0
    .prologue
    .line 613
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@2
    .line 614
    const/4 v0, -0x3

    #@3
    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@5
    .line 612
    return-void
.end method


# virtual methods
.method public field()Ljava/text/Format$Field;
    .locals 3

    #@0
    .prologue
    .line 600
    invoke-static {}, Llibcore/icu/NativeDecimalFormat;->-get0()[Ljava/text/Format$Field;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@6
    iget v2, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@8
    aget v1, v1, v2

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0
.end method

.method public fieldId()I
    .locals 2

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@2
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method public limit()I
    .locals 2

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@2
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@4
    add-int/lit8 v1, v1, 0x2

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public next()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 588
    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 589
    return v0

    #@6
    .line 591
    :cond_0
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@8
    add-int/lit8 v1, v1, 0x3

    #@a
    iput v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@c
    .line 592
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@e
    iget-object v2, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@10
    array-length v2, v2

    #@11
    if-ge v1, v2, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    :cond_1
    return v0
.end method

.method public start()I
    .locals 2

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    #@2
    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method
