.class public final Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeLatencyTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;-><init>()V

    return-void
.end method

.method private blacklist shouldMonitorLatency(I)Z
    .registers 4
    .param p1, "reason"    # I

    .line 1042
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x27

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1101
    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 1102
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 1103
    return-void
.end method

.method public blacklist onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 6
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1089
    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 1090
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1091
    return-void
.end method

.method public blacklist onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1078
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1079
    return-void
.end method

.method public blacklist onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 8
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "origin"    # I
    .param p3, "reason"    # I
    .param p4, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1064
    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1065
    :cond_7
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 1068
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1066
    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 1069
    return-void
.end method

.method public blacklist onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 8
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "origin"    # I
    .param p3, "reason"    # I
    .param p4, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1054
    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1055
    :cond_7
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 1058
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1056
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 1059
    return-void
.end method

.method public blacklist onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 6
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1083
    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 1084
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1085
    return-void
.end method

.method public blacklist onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1073
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 1074
    return-void
.end method

.method public blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 1095
    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 1096
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 1097
    return-void
.end method
