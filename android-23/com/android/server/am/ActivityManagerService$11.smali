.class Lcom/android/server/am/ActivityManagerService$11;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->hang(Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 11283
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 11286
    monitor-enter p0

    #@1
    .line 11287
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$11;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 11285
    return-void

    #@6
    .line 11286
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
