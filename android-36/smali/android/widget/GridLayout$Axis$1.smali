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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist arcsByVertex:[[Landroid/widget/GridLayout$Arc;

.field blacklist cursor:I

.field blacklist result:[Landroid/widget/GridLayout$Arc;

.field final synthetic blacklist this$1:Landroid/widget/GridLayout$Axis;

.field final synthetic blacklist val$arcs:[Landroid/widget/GridLayout$Arc;

.field blacklist visited:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1464
    const-class v0, Landroid/widget/GridLayout;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V
    .registers 4
    .param p1, "this$1"    # Landroid/widget/GridLayout$Axis;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1464
    iput-object p1, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    iput-object p2, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    iget-object p2, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    array-length p2, p2

    new-array p2, p2, [Landroid/widget/GridLayout$Arc;

    iput-object p2, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    .line 1466
    iget-object p2, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    .line 1467
    iget-object p2, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    invoke-virtual {p2, v0}, Landroid/widget/GridLayout$Axis;->groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    .line 1468
    iget-object p2, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    invoke-virtual {p2}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [I

    iput-object p2, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    return-void
.end method


# virtual methods
.method blacklist sort()[Landroid/widget/GridLayout$Arc;
    .registers 3

    .line 1493
    const/4 v0, 0x0

    .local v0, "loc":I
    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    array-length v1, v1

    .local v1, "N":I
    :goto_4
    if-ge v0, v1, :cond_c

    .line 1494
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$Axis$1;->walk(I)V

    .line 1493
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1496
    .end local v0    # "loc":I
    .end local v1    # "N":I
    :cond_c
    nop

    .line 1497
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method blacklist walk(I)V
    .registers 9
    .param p1, "loc"    # I

    .line 1471
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    .line 1483
    :pswitch_8
    goto :goto_32

    .line 1473
    :pswitch_9
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 1474
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    aget-object v0, v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 1475
    .local v3, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v4, v3, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {p0, v4}, Landroid/widget/GridLayout$Axis$1;->walk(I)V

    .line 1476
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    iget v5, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    aput-object v3, v4, v5

    .line 1474
    .end local v3    # "arc":Landroid/widget/GridLayout$Arc;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1478
    :cond_2c
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 1479
    nop

    .line 1490
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
