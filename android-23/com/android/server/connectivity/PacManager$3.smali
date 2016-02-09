.class Lcom/android/server/connectivity/PacManager$3;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 317
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    #@3
    move-result-object v0

    #@4
    .line 318
    .local v0, "callbackService":Lcom/android/net/IProxyCallback;
    if-eqz v0, :cond_0

    #@6
    .line 320
    :try_start_0
    new-instance v2, Lcom/android/server/connectivity/PacManager$3$1;

    #@8
    invoke-direct {v2, p0}, Lcom/android/server/connectivity/PacManager$3$1;-><init>(Lcom/android/server/connectivity/PacManager$3;)V

    #@b
    invoke-interface {v0, v2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 316
    :cond_0
    :goto_0
    return-void

    #@f
    .line 337
    :catch_0
    move-exception v1

    #@10
    .line 338
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    #@13
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 312
    return-void
.end method
