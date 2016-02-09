.class final Lcom/android/internal/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1


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
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@a
    .line 152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 157
    :goto_0
    :pswitch_0
    return-void

    #@6
    .line 163
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    #@a
    iget-object v1, p0, Lcom/android/internal/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    #@c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/DialogInterface;

    #@12
    iget v2, p1, Landroid/os/Message;->what:I

    #@14
    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    #@17
    goto :goto_0

    #@18
    .line 167
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    check-cast v0, Landroid/content/DialogInterface;

    #@1c
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    #@1f
    goto :goto_0

    #@20
    .line 158
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
