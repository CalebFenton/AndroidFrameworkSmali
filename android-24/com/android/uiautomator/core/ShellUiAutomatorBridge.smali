.class public Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
.super Lcom/android/uiautomator/core/UiAutomatorBridge;
.source "ShellUiAutomatorBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-class v0, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/UiAutomation;)V
    .locals 0
    .param p1, "uiAutomation"    # Landroid/app/UiAutomation;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;-><init>(Landroid/app/UiAutomation;)V

    #@3
    .line 45
    return-void
.end method


# virtual methods
.method public getDefaultDisplay()Landroid/view/Display;
    .locals 2

    #@0
    .prologue
    .line 50
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getRotation()I
    .locals 5

    #@0
    .prologue
    .line 98
    const-string/jumbo v3, "window"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@a
    move-result-object v2

    #@b
    .line 99
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v1, -0x1

    #@c
    .line 101
    .local v1, "ret":I
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    .line 106
    return v1

    #@11
    .line 102
    :catch_0
    move-exception v0

    #@12
    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v4, "Error getting screen rotation"

    #@17
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 104
    new-instance v3, Ljava/lang/RuntimeException;

    #@1c
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v3
.end method

.method public getSystemLongPressTime()J
    .locals 19

    #@0
    .prologue
    .line 55
    const-wide/16 v14, 0x0

    #@2
    .line 57
    .local v14, "longPressTimeout":J
    const/4 v2, 0x0

    #@3
    .line 58
    .local v2, "provider":Landroid/content/IContentProvider;
    const/4 v11, 0x0

    #@4
    .line 59
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v10

    #@8
    .line 60
    .local v10, "activityManager":Landroid/app/IActivityManager;
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@a
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@d
    move-result-object v17

    #@e
    .line 61
    .local v17, "providerName":Ljava/lang/String;
    new-instance v18, Landroid/os/Binder;

    #@10
    invoke-direct/range {v18 .. v18}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 64
    .local v18, "token":Landroid/os/IBinder;
    const/4 v3, 0x0

    #@14
    .line 63
    :try_start_1
    move-object/from16 v0, v17

    #@16
    move-object/from16 v1, v18

    #@18
    invoke-interface {v10, v0, v3, v1}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    #@1b
    move-result-object v13

    #@1c
    .line 65
    .local v13, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v13, :cond_2

    #@1e
    .line 66
    new-instance v3, Ljava/lang/IllegalStateException;

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "Could not find provider: "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    move-object/from16 v0, v17

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 79
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v3

    #@3b
    .line 80
    if-eqz v11, :cond_0

    #@3d
    .line 81
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@40
    .line 83
    :cond_0
    if-eqz v2, :cond_1

    #@42
    .line 84
    move-object/from16 v0, v17

    #@44
    move-object/from16 v1, v18

    #@46
    invoke-interface {v10, v0, v1}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    #@49
    .line 79
    :cond_1
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@4a
    .line 87
    .end local v10    # "activityManager":Landroid/app/IActivityManager;
    .end local v17    # "providerName":Ljava/lang/String;
    .end local v18    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v12

    #@4b
    .line 88
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v16, "Error reading long press timeout setting."

    #@4e
    .line 89
    .local v16, "message":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@50
    move-object/from16 v0, v16

    #@52
    invoke-static {v3, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    .line 90
    new-instance v3, Ljava/lang/RuntimeException;

    #@57
    move-object/from16 v0, v16

    #@59
    invoke-direct {v3, v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5c
    throw v3

    #@5d
    .line 68
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v16    # "message":Ljava/lang/String;
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "activityManager":Landroid/app/IActivityManager;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v17    # "providerName":Ljava/lang/String;
    .restart local v18    # "token":Landroid/os/IBinder;
    :cond_2
    :try_start_3
    iget-object v2, v13, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@5f
    .line 69
    .local v2, "provider":Landroid/content/IContentProvider;
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@61
    .line 70
    const/4 v3, 0x1

    #@62
    new-array v5, v3, [Ljava/lang/String;

    #@64
    .line 71
    const-string/jumbo v3, "value"

    #@67
    const/4 v6, 0x0

    #@68
    aput-object v3, v5, v6

    #@6a
    .line 72
    const-string/jumbo v6, "name=?"

    #@6d
    .line 73
    const/4 v3, 0x1

    #@6e
    new-array v7, v3, [Ljava/lang/String;

    #@70
    .line 74
    const-string/jumbo v3, "long_press_timeout"

    #@73
    const/4 v8, 0x0

    #@74
    aput-object v3, v7, v8

    #@76
    .line 69
    const/4 v3, 0x0

    #@77
    .line 75
    const/4 v8, 0x0

    #@78
    const/4 v9, 0x0

    #@79
    .line 69
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@7c
    move-result-object v11

    #@7d
    .line 76
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_3

    #@83
    .line 77
    const/4 v3, 0x0

    #@84
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@87
    move-result v3

    #@88
    int-to-long v14, v3

    #@89
    .line 80
    :cond_3
    if-eqz v11, :cond_4

    #@8b
    .line 81
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@8e
    .line 83
    :cond_4
    if-eqz v2, :cond_5

    #@90
    .line 84
    move-object/from16 v0, v17

    #@92
    move-object/from16 v1, v18

    #@94
    invoke-interface {v10, v0, v1}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@97
    .line 92
    :cond_5
    return-wide v14
.end method

.method public isScreenOn()Z
    .locals 5

    #@0
    .prologue
    .line 112
    const-string/jumbo v3, "power"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    #@a
    move-result-object v1

    #@b
    .line 113
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    #@c
    .line 115
    .local v2, "ret":Z
    :try_start_0
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    .line 120
    .local v2, "ret":Z
    return v2

    #@11
    .line 116
    .local v2, "ret":Z
    :catch_0
    move-exception v0

    #@12
    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v4, "Error getting screen status"

    #@17
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 118
    new-instance v3, Ljava/lang/RuntimeException;

    #@1c
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v3
.end method
