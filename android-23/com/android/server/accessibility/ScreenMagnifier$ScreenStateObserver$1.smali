.class Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    #@0
    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1135
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 1134
    :goto_0
    return-void

    #@6
    .line 1137
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    .line 1138
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    #@c
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->-wrap0(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;Ljava/lang/String;)V

    #@f
    goto :goto_0

    #@10
    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
