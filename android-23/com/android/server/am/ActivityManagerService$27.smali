.class Lcom/android/server/am/ActivityManagerService$27;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$callback:Landroid/app/IStopUserCallback;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/app/IStopUserCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$callback"    # Landroid/app/IStopUserCallback;
    .param p3, "val$userId"    # I

    #@0
    .prologue
    .line 20209
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$27;->val$callback:Landroid/app/IStopUserCallback;

    #@4
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$userId:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 20213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$27;->val$callback:Landroid/app/IStopUserCallback;

    #@2
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$27;->val$userId:I

    #@4
    invoke-interface {v1, v2}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 20211
    :goto_0
    return-void

    #@8
    .line 20214
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
