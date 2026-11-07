.class Landroid/widget/Toast$TN$1;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Toast$TN;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/Toast$TN;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 684
    iput-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 687
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4e

    goto :goto_4c

    .line 705
    :pswitch_7
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 708
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 709
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_1b

    .line 711
    :cond_17
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 714
    :goto_1b
    :try_start_1b
    invoke-static {}, Landroid/widget/Toast;->-$$Nest$smgetService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v1, v1, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v2, v2, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2b

    .line 716
    goto :goto_4c

    .line 715
    :catch_2b
    move-exception v0

    goto :goto_4c

    .line 694
    :pswitch_2d
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 697
    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 698
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_4c

    .line 700
    :cond_3d
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 702
    goto :goto_4c

    .line 689
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 690
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v1, v0}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    .line 691
    nop

    .line 720
    .end local v0    # "token":Landroid/os/IBinder;
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_42
        :pswitch_2d
        :pswitch_7
    .end packed-switch
.end method
