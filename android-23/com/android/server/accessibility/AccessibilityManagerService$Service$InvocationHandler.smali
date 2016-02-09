.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x3

.field public static final MSG_ON_GESTURE:I = 0x1

.field public static final MSG_ON_KEY_EVENT:I = 0x2

.field public static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2941
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    .line 2942
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 2941
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2947
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    .line 2948
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    #@5
    .line 2970
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v7, "Unknown message: "

    #@f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v5

    #@1f
    .line 2950
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@21
    .line 2951
    .local v2, "gestureId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@23
    invoke-static {v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    #@26
    .line 2946
    .end local v2    # "gestureId":I
    :goto_0
    return-void

    #@27
    .line 2955
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v0, Landroid/view/KeyEvent;

    #@2b
    .line 2956
    .local v0, "event":Landroid/view/KeyEvent;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@2d
    .line 2957
    .local v3, "policyFlags":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2f
    invoke-static {v5, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V

    #@32
    goto :goto_0

    #@33
    .line 2961
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v3    # "policyFlags":I
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@35
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@38
    goto :goto_0

    #@39
    .line 2965
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    #@3d
    .line 2966
    .local v1, "eventState":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@3f
    iget v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    #@41
    const/4 v7, 0x0

    #@42
    invoke-virtual {v5, v7, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setOnKeyEventResult(ZI)V

    #@45
    goto :goto_0

    #@46
    .line 2948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
