.class public Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;,
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

.field static final LISTENER_TAG_ID:I = 0x7e000000

.field private static final TAG:Ljava/lang/String; = "ViewAnimatorCompat"


# instance fields
.field private mEndAction:Ljava/lang/Runnable;

.field private mOldLayerType:I

.field private mStartAction:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 646
    .local v0, "version":I
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 647
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;

    #@8
    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@d
    .line 24
    :goto_0
    return-void

    #@e
    .line 648
    :cond_0
    const/16 v1, 0x13

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 649
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;

    #@14
    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    #@17
    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@19
    goto :goto_0

    #@1a
    .line 650
    :cond_1
    const/16 v1, 0x12

    #@1c
    if-lt v0, v1, :cond_2

    #@1e
    .line 651
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;

    #@20
    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V

    #@23
    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@25
    goto :goto_0

    #@26
    .line 652
    :cond_2
    const/16 v1, 0x10

    #@28
    if-lt v0, v1, :cond_3

    #@2a
    .line 653
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;

    #@2c
    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    #@2f
    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@31
    goto :goto_0

    #@32
    .line 654
    :cond_3
    const/16 v1, 0xe

    #@34
    if-lt v0, v1, :cond_4

    #@36
    .line 655
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;

    #@38
    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    #@3b
    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@3d
    goto :goto_0

    #@3e
    .line 657
    :cond_4
    new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    #@40
    invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    #@43
    sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@45
    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 27
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    #@6
    .line 28
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    #@8
    .line 29
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    #@b
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@d
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@10
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@12
    .line 35
    return-void
.end method


# virtual methods
.method public alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 691
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 692
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alpha(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 694
    :cond_0
    return-object p0
.end method

.method public alphaBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 708
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 709
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alphaBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 711
    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 1048
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1049
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->cancel(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    #@f
    .line 1046
    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 4

    #@0
    .prologue
    .line 795
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 796
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getDuration(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 798
    :cond_0
    const-wide/16 v2, 0x0

    #@13
    return-wide v2
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 829
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/View;

    #@9
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@b
    .line 830
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@d
    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getInterpolator(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 832
    :cond_0
    return-object v2
.end method

.method public getStartDelay()J
    .locals 4

    #@0
    .prologue
    .line 866
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 867
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getStartDelay(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 869
    :cond_0
    const-wide/16 v2, 0x0

    #@13
    return-wide v2
.end method

.method public rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 884
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 885
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotation(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 887
    :cond_0
    return-object p0
.end method

.method public rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 901
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 902
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 904
    :cond_0
    return-object p0
.end method

.method public rotationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 918
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 919
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 921
    :cond_0
    return-object p0
.end method

.method public rotationXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 935
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 936
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationXBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 938
    :cond_0
    return-object p0
.end method

.method public rotationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 952
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 953
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 955
    :cond_0
    return-object p0
.end method

.method public rotationYBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 969
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 970
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationYBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 972
    :cond_0
    return-object p0
.end method

.method public scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 986
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 987
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 989
    :cond_0
    return-object p0
.end method

.method public scaleXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1003
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1004
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleXBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1006
    :cond_0
    return-object p0
.end method

.method public scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1020
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1021
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1023
    :cond_0
    return-object p0
.end method

.method public scaleYBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1037
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1038
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleYBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1040
    :cond_0
    return-object p0
.end method

.method public setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 674
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 675
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setDuration(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    #@f
    .line 677
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 814
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 815
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setInterpolator(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    #@f
    .line 817
    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    #@0
    .prologue
    .line 1314
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1315
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    #@f
    .line 1317
    :cond_0
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 848
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 849
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setStartDelay(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    #@f
    .line 851
    :cond_0
    return-object p0
.end method

.method public setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    #@0
    .prologue
    .line 1333
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1334
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V

    #@f
    .line 1336
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 1234
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1235
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->start(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    #@f
    .line 1232
    :cond_0
    return-void
.end method

.method public translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 725
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 726
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 728
    :cond_0
    return-object p0
.end method

.method public translationXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1132
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1133
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationXBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1135
    :cond_0
    return-object p0
.end method

.method public translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 742
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 743
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 745
    :cond_0
    return-object p0
.end method

.method public translationYBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1149
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1150
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationYBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1152
    :cond_0
    return-object p0
.end method

.method public translationZ(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1183
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1184
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationZ(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1186
    :cond_0
    return-object p0
.end method

.method public translationZBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1166
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1167
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationZBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1169
    :cond_0
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 777
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 778
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withEndAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V

    #@f
    .line 780
    :cond_0
    return-object p0
.end method

.method public withLayer()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    #@0
    .prologue
    .line 1271
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1272
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withLayer(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    #@f
    .line 1274
    :cond_0
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1296
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1297
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withStartAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V

    #@f
    .line 1299
    :cond_0
    return-object p0
.end method

.method public x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1064
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1065
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->x(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1067
    :cond_0
    return-object p0
.end method

.method public xBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1081
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1082
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->xBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1084
    :cond_0
    return-object p0
.end method

.method public y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1098
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1099
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->y(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1101
    :cond_0
    return-object p0
.end method

.method public yBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1115
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1116
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->yBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1118
    :cond_0
    return-object p0
.end method

.method public z(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1200
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1201
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->z(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1203
    :cond_0
    return-object p0
.end method

.method public zBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 1217
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 1218
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    #@c
    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->zBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    #@f
    .line 1220
    :cond_0
    return-object p0
.end method
