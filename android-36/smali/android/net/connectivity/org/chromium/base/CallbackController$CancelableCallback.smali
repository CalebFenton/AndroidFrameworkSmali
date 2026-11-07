.class Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;
.super Ljava/lang/Object;
.source "CallbackController.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/CallbackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelableCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;",
        "Landroid/net/connectivity/org/chromium/base/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/CallbackController;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;, "Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback<TT;>;"
    .local p2, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;->this$0:Landroid/net/connectivity/org/chromium/base/CallbackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Landroid/net/connectivity/org/chromium/base/Callback;Landroid/net/connectivity/org/chromium/base/CallbackController-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;-><init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Landroid/net/connectivity/org/chromium/base/Callback;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 102
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;, "Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 103
    return-void
.end method

.method public blacklist onResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;, "Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;->this$0:Landroid/net/connectivity/org/chromium/base/CallbackController;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v1, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 111
    :cond_c
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
