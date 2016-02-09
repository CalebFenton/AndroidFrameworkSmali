.class final Landroid/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2436
    iput p1, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@5
    .line 2437
    iput p2, p0, Landroid/widget/GridLayout$Interval;->max:I

    #@7
    .line 2435
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2460
    if-ne p0, p1, :cond_0

    #@4
    .line 2461
    return v4

    #@5
    .line 2463
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 2464
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 2467
    check-cast v0, Landroid/widget/GridLayout$Interval;

    #@15
    .line 2469
    .local v0, "interval":Landroid/widget/GridLayout$Interval;
    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    #@17
    iget v2, v0, Landroid/widget/GridLayout$Interval;->max:I

    #@19
    if-eq v1, v2, :cond_3

    #@1b
    .line 2470
    return v3

    #@1c
    .line 2473
    :cond_3
    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@1e
    iget v2, v0, Landroid/widget/GridLayout$Interval;->min:I

    #@20
    if-eq v1, v2, :cond_4

    #@22
    .line 2474
    return v3

    #@23
    .line 2477
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 2482
    iget v0, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@2
    .line 2483
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Landroid/widget/GridLayout$Interval;->max:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 2484
    return v0
.end method

.method inverse()Landroid/widget/GridLayout$Interval;
    .locals 3

    #@0
    .prologue
    .line 2445
    new-instance v0, Landroid/widget/GridLayout$Interval;

    #@2
    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    #@4
    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@6
    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@9
    return-object v0
.end method

.method size()I
    .locals 2

    #@0
    .prologue
    .line 2441
    iget v0, p0, Landroid/widget/GridLayout$Interval;->max:I

    #@2
    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/widget/GridLayout$Interval;->max:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
