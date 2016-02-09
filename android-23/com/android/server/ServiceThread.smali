.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "allowIo"    # Z

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@3
    .line 34
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    #@5
    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    #@4
    .line 42
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 43
    const-string/jumbo v0, "ServiceThread"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Enabled StrictMode logging for "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " looper."

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 46
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    #@36
    .line 38
    return-void
.end method
