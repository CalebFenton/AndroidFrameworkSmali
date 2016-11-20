.class Lcom/android/server/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsStrongAuth;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsStrongAuth;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 156
    :goto_0
    return-void

    #@6
    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    #@8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    #@c
    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->-wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    #@f
    goto :goto_0

    #@10
    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    #@12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    #@16
    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->-wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    #@19
    goto :goto_0

    #@1a
    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    #@1c
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1e
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@20
    invoke-static {v0, v1, v2}, Lcom/android/server/LockSettingsStrongAuth;->-wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V

    #@23
    goto :goto_0

    #@24
    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    #@26
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@28
    invoke-static {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->-wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V

    #@2b
    goto :goto_0

    #@2c
    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
