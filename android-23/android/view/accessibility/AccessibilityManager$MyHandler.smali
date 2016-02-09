.class final Landroid/view/accessibility/AccessibilityManager$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_ACCESSIBILITY_STATE_CHANGED:I = 0x1

.field public static final MSG_NOTIFY_EXPLORATION_STATE_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_HIGH_TEXT_CONTRAST_STATE_CHANGED:I = 0x3

.field public static final MSG_SET_STATE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@2
    .line 684
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 683
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 689
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 688
    :goto_0
    return-void

    #@6
    .line 691
    :pswitch_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@8
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-wrap0(Landroid/view/accessibility/AccessibilityManager;)V

    #@b
    goto :goto_0

    #@c
    .line 695
    :pswitch_1
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@e
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-wrap2(Landroid/view/accessibility/AccessibilityManager;)V

    #@11
    goto :goto_0

    #@12
    .line 699
    :pswitch_2
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@14
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-wrap1(Landroid/view/accessibility/AccessibilityManager;)V

    #@17
    goto :goto_0

    #@18
    .line 704
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@1a
    .line 705
    .local v0, "state":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@1c
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    monitor-enter v2

    #@21
    .line 706
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@23
    invoke-static {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->-wrap3(Landroid/view/accessibility/AccessibilityManager;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v2

    #@27
    goto :goto_0

    #@28
    .line 705
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1

    #@2b
    .line 689
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
