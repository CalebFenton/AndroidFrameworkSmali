.class public abstract Landroid/widget/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 2784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2785
    return-void
.end method


# virtual methods
.method abstract greylist-max-o getAlignmentValue(Landroid/view/View;II)I
.end method

.method greylist-max-o getBounds()Landroid/widget/GridLayout$Bounds;
    .registers 3

    .line 2819
    new-instance v0, Landroid/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$Bounds;-><init>(Landroid/widget/GridLayout-IA;)V

    return-object v0
.end method

.method abstract greylist-max-o getGravityOffset(Landroid/view/View;I)I
.end method

.method greylist-max-o getSizeInCell(Landroid/view/View;II)I
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "cellSize"    # I

    .line 2815
    return p2
.end method
