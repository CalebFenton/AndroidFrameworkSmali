.class public Landroid/widget/ListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public whitelist data:Ljava/lang/Object;

.field public whitelist isSelectable:Z

.field public whitelist view:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/widget/ListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
