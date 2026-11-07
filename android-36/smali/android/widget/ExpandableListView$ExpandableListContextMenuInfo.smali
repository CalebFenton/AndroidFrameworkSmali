.class public Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public whitelist id:J

.field public whitelist packedPosition:J

.field public whitelist targetView:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;JJ)V
    .registers 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p1, p0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1294
    iput-wide p2, p0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1295
    iput-wide p4, p0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 1296
    return-void
.end method
