.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# static fields
.field public static ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_YES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UiModeManager"


# instance fields
.field private mService:Landroid/app/IUiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "android.app.action.ENTER_CAR_MODE"

    #@3
    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    #@5
    .line 73
    const-string/jumbo v0, "android.app.action.EXIT_CAR_MODE"

    #@8
    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    #@a
    .line 87
    const-string/jumbo v0, "android.app.action.ENTER_DESK_MODE"

    #@d
    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    #@f
    .line 94
    const-string/jumbo v0, "android.app.action.EXIT_DESK_MODE"

    #@12
    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    #@14
    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    const-string/jumbo v0, "uimode"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 114
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@10
    .line 113
    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 168
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->disableCarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 167
    :cond_0
    :goto_0
    return-void

    #@a
    .line 171
    :catch_0
    move-exception v0

    #@b
    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UiModeManager"

    #@e
    const-string/jumbo v2, "disableCarMode: RemoteException"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public enableCarMode(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->enableCarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 144
    :cond_0
    :goto_0
    return-void

    #@a
    .line 148
    :catch_0
    move-exception v0

    #@b
    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UiModeManager"

    #@e
    const-string/jumbo v2, "disableCarMode: RemoteException"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public getCurrentModeType()I
    .locals 3

    #@0
    .prologue
    .line 187
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@6
    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 190
    :catch_0
    move-exception v0

    #@c
    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UiModeManager"

    #@f
    const-string/jumbo v2, "getCurrentModeType: RemoteException"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method public getNightMode()I
    .locals 3

    #@0
    .prologue
    .line 227
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@6
    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 230
    :catch_0
    move-exception v0

    #@c
    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UiModeManager"

    #@f
    const-string/jumbo v2, "getNightMode: RemoteException"

    #@12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method public setNightMode(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 212
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 214
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    #@6
    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 211
    :cond_0
    :goto_0
    return-void

    #@a
    .line 215
    :catch_0
    move-exception v0

    #@b
    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UiModeManager"

    #@e
    const-string/jumbo v2, "setNightMode: RemoteException"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method
