.class public Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;
.super Ljava/lang/Object;
.source "InputHintCheckerJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/InputHintChecker$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/InputHintCheckerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist failedToInitializeForTesting()Z
    .registers 2

    .line 34
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_failedToInitializeForTesting()Z

    move-result v0

    return v0
.end method

.method public blacklist hasInputForTesting()Z
    .registers 2

    .line 39
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_hasInputForTesting()Z

    move-result v0

    return v0
.end method

.method public blacklist hasInputWithThrottlingForTesting()Z
    .registers 2

    .line 44
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_hasInputWithThrottlingForTesting()Z

    move-result v0

    return v0
.end method

.method public blacklist isInitializedForTesting()Z
    .registers 2

    .line 49
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_isInitializedForTesting()Z

    move-result v0

    return v0
.end method

.method public blacklist onCompositorViewHolderTouchEvent()V
    .registers 1

    .line 54
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_onCompositorViewHolderTouchEvent()V

    .line 55
    return-void
.end method

.method public blacklist setIsAfterInputYieldForTesting(Z)V
    .registers 2
    .param p1, "after"    # Z

    .line 59
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_setIsAfterInputYieldForTesting(Z)V

    .line 61
    return-void
.end method

.method public blacklist setView(Ljava/lang/Object;)V
    .registers 2
    .param p1, "view"    # Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_InputHintChecker_setView(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
