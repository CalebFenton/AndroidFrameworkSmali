.class Landroid/widget/GridLayout$Axis$1;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field arcsByVertex:[[Landroid/widget/GridLayout$Arc;

.field cursor:I

.field result:[Landroid/widget/GridLayout$Arc;

.field final synthetic this$1:Landroid/widget/GridLayout$Axis;

.field final synthetic val$arcs:[Landroid/widget/GridLayout$Arc;

.field visited:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/widget/GridLayout$Axis$1;

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
    sput-boolean v0, Landroid/widget/GridLayout$Axis$1;->-assertionsDisabled:Z

    #@b
    .line 1419
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V
    .locals 2
    .param p1, "this$1"    # Landroid/widget/GridLayout$Axis;
    .param p2, "val$arcs"    # [Landroid/widget/GridLayout$Arc;

    #@0
    .prologue
    .line 1419
    iput-object p1, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    #@2
    iput-object p2, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1420
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    #@9
    array-length v0, v0

    #@a
    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    #@c
    iput-object v0, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    #@e
    .line 1421
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    #@10
    array-length v0, v0

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    iput v0, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    #@15
    .line 1422
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    #@17
    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Axis;->groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    #@1f
    .line 1423
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    #@21
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@24
    move-result v0

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    new-array v0, v0, [I

    #@29
    iput-object v0, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    #@2b
    .line 1419
    return-void
.end method


# virtual methods
.method sort()[Landroid/widget/GridLayout$Arc;
    .locals 4

    #@0
    .prologue
    .line 1448
    const/4 v1, 0x0

    #@1
    .local v1, "loc":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    #@3
    array-length v0, v2

    #@4
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 1449
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout$Axis$1;->walk(I)V

    #@9
    .line 1448
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 1451
    :cond_0
    sget-boolean v2, Landroid/widget/GridLayout$Axis$1;->-assertionsDisabled:Z

    #@e
    if-nez v2, :cond_2

    #@10
    iget v2, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    #@12
    const/4 v3, -0x1

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v2, 0x1

    #@16
    :goto_1
    if-nez v2, :cond_2

    #@18
    new-instance v2, Ljava/lang/AssertionError;

    #@1a
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1d
    throw v2

    #@1e
    :cond_1
    const/4 v2, 0x0

    #@1f
    goto :goto_1

    #@20
    .line 1452
    :cond_2
    iget-object v2, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    #@22
    return-object v2
.end method

.method walk(I)V
    .locals 7
    .param p1, "loc"    # I

    #@0
    .prologue
    .line 1426
    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    #@2
    aget v1, v1, p1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1425
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1428
    :pswitch_1
    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    #@a
    const/4 v2, 0x1

    #@b
    aput v2, v1, p1

    #@d
    .line 1429
    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    #@f
    aget-object v2, v1, p1

    #@11
    const/4 v1, 0x0

    #@12
    array-length v3, v2

    #@13
    :goto_1
    if-ge v1, v3, :cond_1

    #@15
    aget-object v0, v2, v1

    #@17
    .line 1430
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v4, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@19
    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    #@1b
    invoke-virtual {p0, v4}, Landroid/widget/GridLayout$Axis$1;->walk(I)V

    #@1e
    .line 1431
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    #@20
    iget v5, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    #@22
    add-int/lit8 v6, v5, -0x1

    #@24
    iput v6, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    #@26
    aput-object v0, v4, v5

    #@28
    .line 1429
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1433
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_1
    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    #@2d
    const/4 v2, 0x2

    #@2e
    aput v2, v1, p1

    #@30
    goto :goto_0

    #@31
    .line 1438
    :pswitch_2
    sget-boolean v1, Landroid/widget/GridLayout$Axis$1;->-assertionsDisabled:Z

    #@33
    if-nez v1, :cond_0

    #@35
    new-instance v1, Ljava/lang/AssertionError;

    #@37
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@3a
    throw v1

    #@3b
    .line 1426
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
