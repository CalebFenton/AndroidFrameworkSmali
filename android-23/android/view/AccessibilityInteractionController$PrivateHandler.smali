.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1161
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@2
    .line 1162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1161
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1167
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    .line 1168
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unknown message type: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 1170
    :pswitch_0
    const-string/jumbo v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    #@22
    return-object v1

    #@23
    .line 1172
    :pswitch_1
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    #@26
    return-object v1

    #@27
    .line 1174
    :pswitch_2
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    #@2a
    return-object v1

    #@2b
    .line 1176
    :pswitch_3
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    #@2e
    return-object v1

    #@2f
    .line 1178
    :pswitch_4
    const-string/jumbo v1, "MSG_FIND_FOCUS"

    #@32
    return-object v1

    #@33
    .line 1180
    :pswitch_5
    const-string/jumbo v1, "MSG_FOCUS_SEARCH"

    #@36
    return-object v1

    #@37
    .line 1168
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1188
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    .line 1189
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unknown message type: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 1191
    :pswitch_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@21
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap1(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    #@24
    .line 1187
    :goto_0
    return-void

    #@25
    .line 1194
    :pswitch_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@27
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap6(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1197
    :pswitch_2
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@2d
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap3(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    #@30
    goto :goto_0

    #@31
    .line 1200
    :pswitch_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@33
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap2(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    #@36
    goto :goto_0

    #@37
    .line 1203
    :pswitch_4
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@39
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap4(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1206
    :pswitch_5
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    #@3f
    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap5(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    #@42
    goto :goto_0

    #@43
    .line 1189
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
