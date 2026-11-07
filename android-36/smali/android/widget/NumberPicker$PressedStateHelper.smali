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
.field public static final greylist-max-o BUTTON_DECREMENT:I = 0x2

.field public static final greylist-max-o BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final greylist-max-o MODE_PRESS:I

.field private final greylist-max-o MODE_TAPPED:I

.field private greylist-max-o mManagedButton:I

.field private greylist-max-o mMode:I

.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/NumberPicker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2311
    iput-object p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2315
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2316
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public greylist-max-o buttonPressDelayed(I)V
    .registers 5
    .param p1, "button"    # I

    .line 2336
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2337
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2338
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2339
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2340
    return-void
.end method

.method public greylist-max-o buttonTapped(I)V
    .registers 3
    .param p1, "button"    # I

    .line 2343
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2344
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2345
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2346
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2347
    return-void
.end method

.method public greylist-max-o cancel()V
    .registers 6

    .line 2322
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2323
    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2324
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, p0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2325
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2326
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2327
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2329
    :cond_2e
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2330
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2331
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2333
    :cond_4c
    return-void
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 2351
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ae

    goto/16 :goto_ad

    .line 2365
    :pswitch_9
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_b6

    goto/16 :goto_ad

    .line 2375
    :pswitch_10
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2376
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    .line 2377
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2376
    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2379
    :cond_22
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2380
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_ad

    .line 2367
    :pswitch_3e
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 2368
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    .line 2369
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2368
    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2371
    :cond_50
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2372
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$600(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2373
    goto :goto_ad

    .line 2353
    :pswitch_72
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_be

    goto :goto_ac

    .line 2359
    :pswitch_78
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2360
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_ac

    .line 2355
    :pswitch_8f
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2356
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2357
    nop

    .line 2363
    :goto_ac
    nop

    .line 2385
    :goto_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_72
        :pswitch_9
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_10
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_78
    .end packed-switch
.end method
