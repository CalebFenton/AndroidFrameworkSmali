.class public final Lcom/android/server/AppOpsService$Callback;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsCallback;

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/AppOpsService$Callback;->this$0:Lcom/android/server/AppOpsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 175
    iput-object p2, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@7
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@9
    invoke-interface {v1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 174
    :goto_0
    return-void

    #@12
    .line 178
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/AppOpsService$Callback;->this$0:Lcom/android/server/AppOpsService;

    #@2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    #@7
    .line 187
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@2
    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 182
    return-void
.end method
