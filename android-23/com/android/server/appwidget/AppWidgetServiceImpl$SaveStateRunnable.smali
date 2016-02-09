.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveStateRunnable"
.end annotation


# instance fields
.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3568
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3569
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    #@7
    .line 3568
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 3574
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@9
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    #@b
    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap3(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@e
    .line 3576
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@10
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    #@12
    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap13(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 3573
    return-void

    #@17
    .line 3574
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
