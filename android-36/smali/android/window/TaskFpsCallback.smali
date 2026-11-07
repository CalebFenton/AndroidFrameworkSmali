.class public abstract Landroid/window/TaskFpsCallback;
.super Ljava/lang/Object;
.source "TaskFpsCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist dispatchOnFpsReported(Landroid/window/ITaskFpsCallback;F)V
    .registers 3
    .param p0, "listener"    # Landroid/window/ITaskFpsCallback;
    .param p1, "fps"    # F

    .line 54
    :try_start_0
    invoke-interface {p0, p1}, Landroid/window/ITaskFpsCallback;->onFpsReported(F)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 57
    goto :goto_5

    .line 55
    :catch_4
    move-exception v0

    .line 58
    :goto_5
    return-void
.end method


# virtual methods
.method public abstract whitelist onFpsReported(F)V
.end method
