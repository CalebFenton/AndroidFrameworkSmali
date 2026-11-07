.class public Landroid/widget/ExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ExpandableListConnector;


# direct methods
.method protected constructor blacklist <init>(Landroid/widget/ExpandableListConnector;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ExpandableListConnector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 854
    iput-object p1, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 3

    .line 857
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/ExpandableListConnector;->-$$Nest$mrefreshExpGroupMetadataList(Landroid/widget/ExpandableListConnector;ZZ)V

    .line 859
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 860
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 3

    .line 864
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/ExpandableListConnector;->-$$Nest$mrefreshExpGroupMetadataList(Landroid/widget/ExpandableListConnector;ZZ)V

    .line 866
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->notifyDataSetInvalidated()V

    .line 867
    return-void
.end method
