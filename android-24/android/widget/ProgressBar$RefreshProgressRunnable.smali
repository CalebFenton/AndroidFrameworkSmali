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
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ProgressBar;

    #@0
    .prologue
    .line 1269
    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ProgressBar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    .line 1271
    iget-object v9, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@2
    monitor-enter v9

    #@3
    .line 1272
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@5
    invoke-static {v0}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v6

    #@d
    .line 1273
    .local v6, "count":I
    const/4 v7, 0x0

    #@e
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    #@10
    .line 1274
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@12
    invoke-static {v0}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Landroid/widget/ProgressBar$RefreshData;

    #@1c
    .line 1275
    .local v8, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@1e
    iget v1, v8, Landroid/widget/ProgressBar$RefreshData;->id:I

    #@20
    iget v2, v8, Landroid/widget/ProgressBar$RefreshData;->progress:I

    #@22
    iget-boolean v3, v8, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    #@24
    iget-boolean v5, v8, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    #@26
    const/4 v4, 0x1

    #@27
    invoke-static/range {v0 .. v5}, Landroid/widget/ProgressBar;->-wrap0(Landroid/widget/ProgressBar;IIZZZ)V

    #@2a
    .line 1276
    invoke-virtual {v8}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    #@2d
    .line 1273
    add-int/lit8 v7, v7, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1278
    .end local v8    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@32
    invoke-static {v0}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@39
    .line 1279
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@3b
    const/4 v1, 0x0

    #@3c
    invoke-static {v0, v1}, Landroid/widget/ProgressBar;->-set0(Landroid/widget/ProgressBar;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v9

    #@40
    .line 1270
    return-void

    #@41
    .line 1271
    .end local v6    # "count":I
    .end local v7    # "i":I
    :catchall_0
    move-exception v0

    #@42
    monitor-exit v9

    #@43
    throw v0
.end method
