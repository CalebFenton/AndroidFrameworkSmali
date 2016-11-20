.class Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final KEY_USER_INACTIVITY_TIMEOUT:Ljava/lang/String; = "user_inactivity_timeout_ms"

.field private static final KEY_WARNING_DIALOG_TIMEOUT:Ljava/lang/String; = "warning_dialog_timeout_ms"


# instance fields
.field private final mDeviceDemoModeUri:Landroid/net/Uri;

.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mRetailDemoConstantsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->refreshTimeoutConstants()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 200
    const-string/jumbo v0, "device_demo_mode"

    #@8
    .line 199
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceDemoModeUri:Landroid/net/Uri;

    #@e
    .line 202
    const-string/jumbo v0, "device_provisioned"

    #@11
    .line 201
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    #@17
    .line 204
    const-string/jumbo v0, "retail_demo_mode_constants"

    #@1a
    .line 203
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mRetailDemoConstantsUri:Landroid/net/Uri;

    #@20
    .line 206
    new-instance v0, Landroid/util/KeyValueListParser;

    #@22
    const/16 v1, 0x2c

    #@24
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@27
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    #@29
    .line 208
    return-void
.end method

.method private refreshTimeoutConstants()V
    .locals 6

    #@0
    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    #@2
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@4
    invoke-virtual {v2}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v2

    #@c
    .line 254
    const-string/jumbo v3, "retail_demo_mode_constants"

    #@f
    .line 253
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@18
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    #@1a
    const-string/jumbo v3, "warning_dialog_timeout_ms"

    #@1d
    .line 260
    const-wide/16 v4, 0x0

    #@1f
    .line 259
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mWarningDialogTimeout:J

    #@25
    .line 261
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@27
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    #@29
    const-string/jumbo v3, "user_inactivity_timeout_ms"

    #@2c
    .line 262
    const-wide/32 v4, 0x15f90

    #@2f
    .line 261
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@32
    move-result-wide v2

    #@33
    iput-wide v2, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    #@35
    .line 263
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@37
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@39
    iget-wide v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    #@3b
    const-wide/16 v4, 0x2710

    #@3d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@40
    move-result-wide v2

    #@41
    iput-wide v2, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    #@43
    .line 251
    return-void

    #@44
    .line 255
    :catch_0
    move-exception v0

    #@45
    .line 256
    .local v0, "exc":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, "Invalid string passed to KeyValueListParser"

    #@4c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    goto :goto_0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mRetailDemoConstantsUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 223
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->refreshTimeoutConstants()V

    #@b
    .line 224
    return-void

    #@c
    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceDemoModeUri:Landroid/net/Uri;

    #@e
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 227
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@16
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@18
    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@22
    .line 228
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@24
    iget-boolean v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 229
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2a
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap4(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    #@2d
    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2f
    iget-boolean v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@31
    if-nez v0, :cond_2

    #@33
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@35
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap2(Lcom/android/server/retaildemo/RetailDemoModeService;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_2

    #@3b
    .line 240
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@3e
    move-result-object v0

    #@3f
    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;

    #@41
    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V

    #@44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@47
    .line 221
    :cond_2
    return-void

    #@48
    .line 231
    :cond_3
    const-string/jumbo v0, "sys.retaildemo.enabled"

    #@4b
    const-string/jumbo v1, "0"

    #@4e
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 232
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@53
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_1

    #@5d
    .line 233
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@5f
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@66
    goto :goto_0
.end method

.method public register()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 213
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@3
    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v0

    #@b
    .line 214
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceDemoModeUri:Landroid/net/Uri;

    #@d
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@10
    .line 215
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    #@12
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@15
    .line 216
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->mRetailDemoConstantsUri:Landroid/net/Uri;

    #@17
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1a
    .line 212
    return-void
.end method
