.class Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_COMPUTE_CHANGED_WINDOWS:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@2
    .line 1276
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1275
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1282
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1281
    :goto_0
    return-void

    #@6
    .line 1284
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@8
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    #@b
    goto :goto_0

    #@c
    .line 1282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
