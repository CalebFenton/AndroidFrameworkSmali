.class Lcom/android/server/am/ActiveServices$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    #@0
    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceRestarter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    #@7
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1018
    return-void

    #@e
    .line 1019
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    #@0
    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    #@2
    .line 1014
    return-void
.end method
