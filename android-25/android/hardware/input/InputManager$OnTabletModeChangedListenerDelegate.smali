.class final Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnTabletModeChangedListenerDelegate"
.end annotation


# static fields
.field private static final MSG_TABLET_MODE_CHANGED:I


# instance fields
.field public final mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1093
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 1094
    iput-object p1, p0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    #@b
    .line 1092
    return-void

    #@c
    .line 1093
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1107
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 1106
    :goto_0
    return-void

    #@6
    .line 1109
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 1110
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@c
    int-to-long v4, v4

    #@d
    const-wide v6, 0xffffffffL

    #@12
    and-long/2addr v4, v6

    #@13
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@15
    int-to-long v6, v6

    #@16
    const/16 v8, 0x20

    #@18
    shl-long/2addr v6, v8

    #@19
    or-long v2, v4, v6

    #@1b
    .line 1111
    .local v2, "whenNanos":J
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1d
    check-cast v4, Ljava/lang/Boolean;

    #@1f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@22
    move-result v1

    #@23
    .line 1112
    .local v1, "inTabletMode":Z
    iget-object v4, p0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    #@25
    invoke-interface {v4, v2, v3, v1}, Landroid/hardware/input/InputManager$OnTabletModeChangedListener;->onTabletModeChanged(JZ)V

    #@28
    goto :goto_0

    #@29
    .line 1107
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendTabletModeChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    #@0
    .prologue
    .line 1098
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 1099
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v2, -0x1

    #@6
    and-long/2addr v2, p1

    #@7
    long-to-int v1, v2

    #@8
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@a
    .line 1100
    const/16 v1, 0x20

    #@c
    shr-long v2, p1, v1

    #@e
    long-to-int v1, v2

    #@f
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@11
    .line 1101
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@17
    .line 1102
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1f
    .line 1097
    return-void
.end method
