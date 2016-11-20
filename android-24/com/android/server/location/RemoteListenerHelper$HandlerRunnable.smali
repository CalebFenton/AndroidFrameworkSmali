.class Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private final mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 239
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    .local p1, "this$0":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p3, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 240
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    #@7
    .line 241
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    #@9
    .line 239
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 247
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    #@2
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    #@4
    invoke-interface {v1, v2}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 245
    :goto_0
    return-void

    #@8
    .line 248
    :catch_0
    move-exception v0

    #@9
    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    #@b
    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper;->-get0(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "Error in monitored listener."

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    goto :goto_0
.end method
