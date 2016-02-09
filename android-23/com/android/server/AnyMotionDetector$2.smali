.class Lcom/android/server/AnyMotionDetector$2;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    #@0
    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    #@2
    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->-get1(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    #@9
    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->-wrap1(Lcom/android/server/AnyMotionDetector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 269
    return-void

    #@e
    .line 270
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
