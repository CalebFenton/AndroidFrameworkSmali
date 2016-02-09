.class public Lcom/android/internal/app/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mReboot:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    #@2
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownActivity;->getIntent()Landroid/content/Intent;

    #@6
    move-result-object v1

    #@7
    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.REBOOT"

    #@a
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    iput-boolean v3, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    #@14
    .line 40
    const-string/jumbo v3, "android.intent.extra.KEY_CONFIRM"

    #@17
    const/4 v4, 0x0

    #@18
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1b
    move-result v3

    #@1c
    iput-boolean v3, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    #@1e
    .line 41
    const-string/jumbo v3, "ShutdownActivity"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "onCreate(): confirm="

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 43
    new-instance v2, Lcom/android/internal/app/ShutdownActivity$1;

    #@3c
    const-string/jumbo v3, "ShutdownActivity"

    #@3f
    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/ShutdownActivity$1;-><init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;)V

    #@42
    .line 58
    .local v2, "thr":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@45
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownActivity;->finish()V

    #@48
    .line 62
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 35
    :goto_0
    return-void

    #@4c
    .line 63
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
