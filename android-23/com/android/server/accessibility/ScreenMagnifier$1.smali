.class Lcom/android/server/accessibility/ScreenMagnifier$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 163
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 162
    :goto_0
    return-void

    #@6
    .line 165
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v2, Landroid/graphics/Region;

    #@a
    .line 166
    .local v2, "bounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@c
    invoke-static {v7, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap4(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V

    #@f
    .line 167
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    #@12
    goto :goto_0

    #@13
    .line 170
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@17
    .line 171
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@19
    .line 172
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1b
    .line 173
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@1d
    .line 174
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@1f
    .line 175
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@21
    invoke-static {v7, v3, v6, v4, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap5(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V

    #@24
    .line 176
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@27
    goto :goto_0

    #@28
    .line 179
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2a
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap7(Lcom/android/server/accessibility/ScreenMagnifier;)V

    #@2d
    goto :goto_0

    #@2e
    .line 182
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@30
    .line 183
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@32
    invoke-static {v7, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap6(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@35
    goto :goto_0

    #@36
    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
