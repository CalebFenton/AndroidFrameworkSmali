.class Landroid/widget/Filter$ResultsHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Filter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Filter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Landroid/widget/Filter$ResultsHandler;->this$0:Landroid/widget/Filter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Filter;Landroid/widget/Filter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Filter$ResultsHandler;-><init>(Landroid/widget/Filter;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 282
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Filter$RequestArguments;

    .line 284
    .local v0, "args":Landroid/widget/Filter$RequestArguments;
    iget-object v1, p0, Landroid/widget/Filter$ResultsHandler;->this$0:Landroid/widget/Filter;

    iget-object v2, v0, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 285
    iget-object v1, v0, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    if-eqz v1, :cond_20

    .line 286
    iget-object v1, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    iget v1, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1b

    :cond_1a
    const/4 v1, -0x1

    .line 287
    .local v1, "count":I
    :goto_1b
    iget-object v2, v0, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    invoke-interface {v2, v1}, Landroid/widget/Filter$FilterListener;->onFilterComplete(I)V

    .line 289
    .end local v1    # "count":I
    :cond_20
    return-void
.end method
