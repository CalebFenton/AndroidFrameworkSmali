.class Lcom/android/server/am/ActiveServices$1;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$1;->this$0:Lcom/android/server/am/ActiveServices;

    #@7
    const/4 v2, 0x0

    #@8
    iput-object v2, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 159
    return-void

    #@c
    .line 160
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method
