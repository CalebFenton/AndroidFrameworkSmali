.class public Landroid/nfc/NfcApplicationState;
.super Ljava/lang/Object;
.source "NfcApplicationState.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final greylist app:Landroid/app/Application;

.field private final greylist nfcActivityManager:Landroid/nfc/NfcActivityManager;

.field greylist refCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/app/Application;Landroid/nfc/NfcActivityManager;)V
    .registers 4
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "activityManager"    # Landroid/nfc/NfcActivityManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    .line 50
    iput-object p1, p0, Landroid/nfc/NfcApplicationState;->app:Landroid/app/Application;

    .line 51
    iput-object p2, p0, Landroid/nfc/NfcApplicationState;->nfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist register()V
    .registers 3

    .line 58
    iget v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    .line 59
    iget v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    if-ne v0, v1, :cond_11

    .line 60
    iget-object v0, p0, Landroid/nfc/NfcApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Landroid/nfc/NfcApplicationState;->nfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 62
    :cond_11
    return-void
.end method

.method public blacklist unregister()V
    .registers 3

    .line 68
    iget v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    .line 69
    iget v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    if-nez v0, :cond_12

    .line 70
    iget-object v0, p0, Landroid/nfc/NfcApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Landroid/nfc/NfcApplicationState;->nfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_30

    .line 71
    :cond_12
    iget v0, p0, Landroid/nfc/NfcApplicationState;->refCount:I

    if-gez v0, :cond_30

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ve refcount for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcApplicationState;->app:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NFC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_30
    :goto_30
    return-void
.end method
