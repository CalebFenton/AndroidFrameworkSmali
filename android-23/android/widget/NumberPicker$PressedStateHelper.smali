.class Landroid/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    #@0
    .prologue
    .line 2160
    iput-object p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2164
    const/4 v0, 0x1

    #@6
    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    #@8
    .line 2165
    const/4 v0, 0x2

    #@9
    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    #@b
    .line 2160
    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    #@0
    .prologue
    .line 2185
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    #@3
    .line 2186
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    #@6
    .line 2187
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    #@8
    .line 2188
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@a
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@d
    move-result v1

    #@e
    int-to-long v2, v1

    #@f
    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@12
    .line 2184
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    #@0
    .prologue
    .line 2192
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    #@3
    .line 2193
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    #@6
    .line 2194
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    #@8
    .line 2195
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@a
    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 2191
    return-void
.end method

.method public cancel()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2171
    iput v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    #@3
    .line 2172
    iput v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    #@5
    .line 2173
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@7
    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    .line 2174
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@c
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get6(Landroid/widget/NumberPicker;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2175
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@14
    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->-set1(Landroid/widget/NumberPicker;Z)Z

    #@17
    .line 2176
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@19
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@1b
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@1e
    move-result v1

    #@1f
    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@21
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@24
    move-result v2

    #@25
    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@27
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@2e
    .line 2178
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@30
    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->-set0(Landroid/widget/NumberPicker;Z)Z

    #@33
    .line 2179
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@35
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get4(Landroid/widget/NumberPicker;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_1

    #@3b
    .line 2180
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@3d
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@3f
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@42
    move-result v1

    #@43
    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@45
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@48
    move-result v2

    #@49
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@4c
    .line 2170
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2200
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 2199
    :goto_0
    return-void

    #@8
    .line 2202
    :pswitch_0
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    #@a
    packed-switch v0, :pswitch_data_1

    #@d
    goto :goto_0

    #@e
    .line 2204
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@10
    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->-set1(Landroid/widget/NumberPicker;Z)Z

    #@13
    .line 2205
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@15
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@17
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@1a
    move-result v1

    #@1b
    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@1d
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@20
    move-result v2

    #@21
    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@23
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@26
    move-result v3

    #@27
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@2a
    goto :goto_0

    #@2b
    .line 2208
    :pswitch_2
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@2d
    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->-set0(Landroid/widget/NumberPicker;Z)Z

    #@30
    .line 2209
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@32
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@34
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@37
    move-result v1

    #@38
    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@3a
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@3d
    move-result v2

    #@3e
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@41
    goto :goto_0

    #@42
    .line 2214
    :pswitch_3
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    #@44
    packed-switch v0, :pswitch_data_2

    #@47
    goto :goto_0

    #@48
    .line 2216
    :pswitch_4
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@4a
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get6(Landroid/widget/NumberPicker;)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_0

    #@50
    .line 2217
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@52
    .line 2218
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    #@55
    move-result v1

    #@56
    int-to-long v2, v1

    #@57
    .line 2217
    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@5a
    .line 2220
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@5c
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get6(Landroid/widget/NumberPicker;)Z

    #@5f
    move-result v1

    #@60
    xor-int/2addr v1, v5

    #@61
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-set1(Landroid/widget/NumberPicker;Z)Z

    #@64
    .line 2221
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@66
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@68
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    #@6b
    move-result v1

    #@6c
    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@6e
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@71
    move-result v2

    #@72
    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@74
    invoke-static {v3}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    #@77
    move-result v3

    #@78
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@7b
    goto :goto_0

    #@7c
    .line 2224
    :pswitch_5
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@7e
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get4(Landroid/widget/NumberPicker;)Z

    #@81
    move-result v0

    #@82
    if-nez v0, :cond_1

    #@84
    .line 2225
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@86
    .line 2226
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    #@89
    move-result v1

    #@8a
    int-to-long v2, v1

    #@8b
    .line 2225
    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@8e
    .line 2228
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@90
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get4(Landroid/widget/NumberPicker;)Z

    #@93
    move-result v1

    #@94
    xor-int/2addr v1, v5

    #@95
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-set0(Landroid/widget/NumberPicker;Z)Z

    #@98
    .line 2229
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@9a
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@9c
    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    #@9f
    move-result v1

    #@a0
    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    #@a2
    invoke-static {v2}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    #@a5
    move-result v2

    #@a6
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 2200
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@b4
    .line 2202
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@bc
    .line 2214
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
