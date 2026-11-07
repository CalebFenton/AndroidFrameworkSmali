.class public Landroid/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public whitelist id:J

.field public whitelist position:I

.field public whitelist targetView:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;IJ)V
    .registers 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 443
    iput p2, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 444
    iput-wide p3, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 445
    return-void
.end method
