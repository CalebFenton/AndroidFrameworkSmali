.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@0
    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 529
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@5
    .line 528
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 571
    const/high16 v2, 0x7e000000

    #@2
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 572
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    #@7
    .line 573
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@9
    if-eqz v2, :cond_0

    #@b
    move-object v0, v1

    #@c
    .line 574
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@e
    .line 576
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_0
    if-eqz v0, :cond_1

    #@10
    .line 577
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    #@13
    .line 570
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 552
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@3
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get1(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    #@6
    move-result v2

    #@7
    if-ltz v2, :cond_0

    #@9
    .line 553
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@b
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get1(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    #@e
    move-result v2

    #@f
    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@12
    .line 554
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@14
    const/4 v3, -0x1

    #@15
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-set1(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I

    #@18
    .line 556
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@1a
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get0(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    #@1d
    move-result-object v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 557
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@22
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get0(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    #@29
    .line 559
    :cond_1
    const/high16 v2, 0x7e000000

    #@2b
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    .line 560
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    #@30
    .line 561
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@32
    if-eqz v2, :cond_2

    #@34
    move-object v0, v1

    #@35
    .line 562
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@37
    .line 564
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_2
    if-eqz v0, :cond_3

    #@39
    .line 565
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    #@3c
    .line 551
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 534
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@3
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get1(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    #@6
    move-result v2

    #@7
    if-ltz v2, :cond_0

    #@9
    .line 535
    const/4 v2, 0x2

    #@a
    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@d
    .line 537
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@f
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get2(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 538
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@17
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->-get2(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    #@1e
    .line 540
    :cond_1
    const/high16 v2, 0x7e000000

    #@20
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    .line 541
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    #@25
    .line 542
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@27
    if-eqz v2, :cond_2

    #@29
    move-object v0, v1

    #@2a
    .line 543
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@2c
    .line 545
    .end local v0    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_2
    if-eqz v0, :cond_3

    #@2e
    .line 546
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    #@31
    .line 533
    :cond_3
    return-void
.end method
