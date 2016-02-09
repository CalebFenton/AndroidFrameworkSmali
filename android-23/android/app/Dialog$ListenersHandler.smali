.class final Landroid/app/Dialog$ListenersHandler;
.super Landroid/os/Handler;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenersHandler"
.end annotation


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    #@0
    .prologue
    .line 1315
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 1316
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/Dialog$ListenersHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@a
    .line 1315
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1321
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1320
    :goto_0
    return-void

    #@6
    .line 1323
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    #@a
    iget-object v1, p0, Landroid/app/Dialog$ListenersHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/DialogInterface;

    #@12
    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    #@15
    goto :goto_0

    #@16
    .line 1326
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    #@1a
    iget-object v1, p0, Landroid/app/Dialog$ListenersHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@1c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/content/DialogInterface;

    #@22
    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    #@25
    goto :goto_0

    #@26
    .line 1329
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    #@2a
    iget-object v1, p0, Landroid/app/Dialog$ListenersHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@2c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/content/DialogInterface;

    #@32
    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    #@35
    goto :goto_0

    #@36
    .line 1321
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
