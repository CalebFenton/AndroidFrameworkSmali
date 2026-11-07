.class Landroid/net/connectivity/org/chromium/base/ApplicationStatus$2;
.super Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;
.source "ApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->initialize(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 320
    const-class v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onStateChanged(Landroid/app/Activity;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .line 323
    const/4 v0, 0x1

    if-ne p2, v0, :cond_17

    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 325
    .local v0, "callback":Landroid/view/Window$Callback;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 326
    invoke-static {p1, v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->createWindowCallbackProxy(Landroid/app/Activity;Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 327
    .end local v0    # "callback":Landroid/view/Window$Callback;
    goto :goto_18

    .line 328
    :cond_17
    nop

    .line 330
    :goto_18
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$smonStateChange(Landroid/app/Activity;I)V

    .line 331
    return-void
.end method
