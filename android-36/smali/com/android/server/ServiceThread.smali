.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final blacklist mAllowIo:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "allowIo"    # Z

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 39
    return-void
.end method

.method protected static blacklist makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 5
    .param p0, "looper"    # Landroid/os/Looper;

    .line 53
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_c

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 49
    :cond_c
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 50
    return-void
.end method
