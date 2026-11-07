.class public Lcom/android/internal/app/DisableCarModeActivity;
.super Landroid/app/Activity;
.source "DisableCarModeActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DisableCarModeActivity"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    :try_start_3
    const-string/jumbo v0, "uimode"

    .line 35
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 36
    .local v0, "uiModeManager":Landroid/app/IUiModeManager;
    nop

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/app/DisableCarModeActivity;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 36
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_18

    .line 41
    .end local v0    # "uiModeManager":Landroid/app/IUiModeManager;
    goto :goto_20

    .line 39
    :catch_18
    move-exception v0

    .line 40
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisableCarModeActivity"

    const-string v2, "Failed to disable car mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p0}, Lcom/android/internal/app/DisableCarModeActivity;->finish()V

    .line 43
    return-void
.end method
