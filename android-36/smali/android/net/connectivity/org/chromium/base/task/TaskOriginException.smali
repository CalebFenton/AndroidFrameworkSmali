.class Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;
.super Ljava/lang/Exception;
.source "TaskOriginException.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 11
    const-string v0, "vvv This is where the task was posted. vvv"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
