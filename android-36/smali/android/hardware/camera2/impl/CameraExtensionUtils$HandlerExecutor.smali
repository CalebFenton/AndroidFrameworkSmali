.class public final Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;
.super Ljava/lang/Object;
.source "CameraExtensionUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runCmd"    # Ljava/lang/Runnable;

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    .line 85
    goto :goto_e

    .line 83
    :catch_6
    move-exception v0

    .line 84
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "CameraExtensionUtils"

    const-string v2, "Handler thread unavailable, skipping message!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_e
    return-void
.end method
