.class public Landroid/net/connectivity/org/chromium/base/InputHintChecker;
.super Ljava/lang/Object;
.source "InputHintChecker.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;
    }
.end annotation


# static fields
.field private static blacklist sAllowSetViewForTesting:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist failedToInitializeForTesting()Z
    .registers 1

    .line 64
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->failedToInitializeForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist hasInputForTesting()Z
    .registers 1

    .line 75
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->hasInputForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist hasInputWithThrottlingForTesting()Z
    .registers 1

    .line 79
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->hasInputWithThrottlingForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist isInitializedForTesting()Z
    .registers 1

    .line 60
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->isInitializedForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist onCompositorViewHolderTouchEvent()V
    .registers 1

    .line 46
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->onCompositorViewHolderTouchEvent()V

    .line 47
    return-void
.end method

.method public static blacklist setAllowSetViewForTesting(Z)V
    .registers 1
    .param p0, "allow"    # Z

    .line 50
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/InputHintChecker;->sAllowSetViewForTesting:Z

    .line 51
    return-void
.end method

.method public static blacklist setIsAfterInputYieldForTesting(Z)V
    .registers 2
    .param p0, "after"    # Z

    .line 95
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->setIsAfterInputYieldForTesting(Z)V

    .line 96
    return-void
.end method

.method public static blacklist setView(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 33
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/InputHintChecker;->sAllowSetViewForTesting:Z

    if-nez v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_11

    .line 34
    :cond_a
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->setView(Ljava/lang/Object;)V

    .line 36
    :cond_11
    return-void
.end method

.method public static blacklist setWrongViewForTesting()V
    .registers 2

    .line 91
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;->setView(Ljava/lang/Object;)V

    .line 92
    return-void
.end method
