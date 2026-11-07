.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ProgressBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1519
    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 11

    .line 1521
    iget-object v1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    monitor-enter v1

    .line 1522
    :try_start_3
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRefreshData(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1523
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_30

    .line 1524
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRefreshData(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar$RefreshData;

    .line 1525
    .local v3, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v4, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v5, v3, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v6, v3, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v7, v3, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    iget-boolean v9, v3, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    const/4 v8, 0x1

    invoke-static/range {v4 .. v9}, Landroid/widget/ProgressBar;->-$$Nest$mdoRefreshProgress(Landroid/widget/ProgressBar;IIZZZ)V

    .line 1526
    invoke-virtual {v3}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1523
    .end local v3    # "rd":Landroid/widget/ProgressBar$RefreshData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1528
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v2}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRefreshData(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1529
    iget-object v2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/ProgressBar;->-$$Nest$fputmRefreshIsPosted(Landroid/widget/ProgressBar;Z)V

    .line 1530
    .end local v0    # "count":I
    monitor-exit v1

    .line 1531
    return-void

    .line 1530
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v0
.end method
