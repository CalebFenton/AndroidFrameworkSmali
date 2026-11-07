.class Landroid/net/connectivity/org/chromium/base/ApplicationStatus$1;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/ApplicationStatus$WindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->initialize(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onWindowFocusChanged(Landroid/app/Activity;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "hasFocus"    # Z

    .line 307
    if-eqz p2, :cond_17

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfgetsActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_17

    .line 309
    :cond_9
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 311
    .local v0, "state":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    .line 312
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfputsActivity(Landroid/app/Activity;)V

    .line 316
    :cond_16
    return-void

    .line 307
    .end local v0    # "state":I
    :cond_17
    :goto_17
    return-void
.end method
