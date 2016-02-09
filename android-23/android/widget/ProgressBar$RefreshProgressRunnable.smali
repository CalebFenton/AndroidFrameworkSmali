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
    .line 1242
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
    .locals 9

    #@0
    .prologue
    .line 1244
    iget-object v4, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@2
    monitor-enter v4

    #@3
    .line 1245
    :try_start_0
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@5
    invoke-static {v3}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 1246
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@10
    .line 1247
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@12
    invoke-static {v3}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    #@1c
    .line 1248
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@1e
    iget v5, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    #@20
    iget v6, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    #@22
    iget-boolean v7, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    #@24
    const/4 v8, 0x1

    #@25
    invoke-static {v3, v5, v6, v7, v8}, Landroid/widget/ProgressBar;->-wrap0(Landroid/widget/ProgressBar;IIZZ)V

    #@28
    .line 1249
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    #@2b
    .line 1246
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1251
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@30
    invoke-static {v3}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@37
    .line 1252
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #@39
    const/4 v5, 0x0

    #@3a
    invoke-static {v3, v5}, Landroid/widget/ProgressBar;->-set0(Landroid/widget/ProgressBar;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    monitor-exit v4

    #@3e
    .line 1243
    return-void

    #@3f
    .line 1244
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@40
    monitor-exit v4

    #@41
    throw v3
.end method
