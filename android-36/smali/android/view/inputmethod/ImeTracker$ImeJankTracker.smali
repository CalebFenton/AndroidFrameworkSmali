.class public final Landroid/view/inputmethod/ImeTracker$ImeJankTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeJankTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;-><init>()V

    return-void
.end method

.method private static blacklist getImeInsetsCujFromAnimation(I)I
    .registers 2
    .param p0, "animType"    # I

    .line 1017
    packed-switch p0, :pswitch_data_c

    .line 1023
    const/4 v0, -0x1

    return v0

    .line 1021
    :pswitch_5
    const/16 v0, 0x51

    return v0

    .line 1019
    :pswitch_8
    const/16 v0, 0x50

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist onCancelAnimation(I)V
    .registers 4
    .param p1, "animType"    # I

    .line 991
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    .line 992
    .local v0, "cujType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 993
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 995
    :cond_e
    return-void
.end method

.method public blacklist onFinishAnimation(I)V
    .registers 4
    .param p1, "animType"    # I

    .line 1003
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    .line 1004
    .local v0, "cujType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1005
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 1007
    :cond_e
    return-void
.end method

.method public blacklist onRequestAnimation(Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;IZ)V
    .registers 10
    .param p1, "jankContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
    .param p2, "animType"    # I
    .param p3, "useSeparatedThread"    # Z

    .line 969
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    .line 970
    .local v0, "cujType":I
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 971
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    goto :goto_4f

    .line 975
    :cond_14
    nop

    .line 977
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    .line 978
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 979
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 975
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 980
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 981
    xor-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getHostPackageName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 980
    const-string v4, "%d@%d@%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v1

    .line 982
    .local v1, "builder":Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 983
    return-void

    .line 973
    .end local v1    # "builder":Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    :cond_4f
    :goto_4f
    return-void
.end method
