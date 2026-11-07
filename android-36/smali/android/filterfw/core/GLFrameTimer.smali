.class Landroid/filterfw/core/GLFrameTimer;
.super Ljava/lang/Object;
.source "GLFrame.java"


# static fields
.field private static blacklist mTimer:Landroid/filterfw/core/StopWatchMap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/filterfw/core/StopWatchMap;
    .registers 1

    .line 32
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    sput-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 35
    :cond_b
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-object v0
.end method
