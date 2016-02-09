.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Lcom/android/server/audio/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p4, "val$networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p5, "val$networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p6, "val$networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "val$connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "val$audioServiceF"    # Lcom/android/server/audio/AudioService;
    .param p9, "val$wallpaperF"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p10, "val$immF"    # Lcom/android/server/InputMethodManagerService;
    .param p11, "val$statusBarF"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p12, "val$locationF"    # Lcom/android/server/LocationManagerService;
    .param p13, "val$countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p14, "val$networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p15, "val$commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p16, "val$textServiceManagerServiceF"    # Lcom/android/server/TextServicesManagerService;
    .param p17, "val$atlasF"    # Lcom/android/server/AssetAtlasService;
    .param p18, "val$inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p19, "val$telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p20, "val$mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p21, "val$mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    #@0
    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@2
    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    #@4
    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@6
    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    #@8
    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    #@a
    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    #@c
    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    #@e
    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    #@10
    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@12
    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    #@14
    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    #@16
    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    #@18
    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    #@1a
    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    #@1c
    move-object/from16 v0, p15

    #@1e
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    #@20
    move-object/from16 v0, p16

    #@22
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    #@24
    move-object/from16 v0, p17

    #@26
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    #@28
    move-object/from16 v0, p18

    #@2a
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    #@2c
    move-object/from16 v0, p19

    #@2e
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    #@30
    move-object/from16 v0, p20

    #@32
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    #@34
    move-object/from16 v0, p21

    #@36
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    #@38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1094
    const-string/jumbo v1, "SystemServer"

    #@3
    const-string/jumbo v2, "Making services ready"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1095
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@b
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    #@e
    move-result-object v1

    #@f
    .line 1096
    const/16 v2, 0x226

    #@11
    .line 1095
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@14
    .line 1099
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@16
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1104
    :goto_0
    const-string/jumbo v1, "SystemServer"

    #@20
    const-string/jumbo v2, "WebViewFactory preparation"

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1105
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    #@29
    .line 1108
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    #@2b
    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    .line 1113
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@30
    if-eqz v1, :cond_0

    #@32
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@34
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@37
    .line 1118
    :cond_0
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    #@39
    if-eqz v1, :cond_1

    #@3b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    #@3d
    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    #@40
    .line 1123
    :cond_1
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    #@42
    if-eqz v1, :cond_2

    #@44
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    #@46
    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    #@49
    .line 1128
    :cond_2
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    #@4b
    if-eqz v1, :cond_3

    #@4d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    #@4f
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    #@52
    .line 1133
    :cond_3
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    #@54
    if-eqz v1, :cond_4

    #@56
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    #@58
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    #@5b
    .line 1138
    :cond_4
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    #@5d
    if-eqz v1, :cond_5

    #@5f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    #@61
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    #@64
    .line 1142
    :cond_5
    :goto_7
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    #@6b
    .line 1146
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@6d
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    #@70
    move-result-object v1

    #@71
    .line 1147
    const/16 v2, 0x258

    #@73
    .line 1146
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@76
    .line 1150
    :try_start_8
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@78
    if-eqz v1, :cond_6

    #@7a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@7c
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    #@7f
    .line 1155
    :cond_6
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    #@81
    if-eqz v1, :cond_7

    #@83
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    #@85
    iget-object v2, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    #@87
    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    #@8a
    .line 1160
    :cond_7
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    #@8c
    if-eqz v1, :cond_8

    #@8e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    #@90
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    #@93
    .line 1165
    :cond_8
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    #@95
    if-eqz v1, :cond_9

    #@97
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    #@99
    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    #@9c
    .line 1170
    :cond_9
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    #@9e
    if-eqz v1, :cond_a

    #@a0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    #@a2
    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    #@a5
    .line 1175
    :cond_a
    :goto_c
    :try_start_d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    #@a7
    if-eqz v1, :cond_b

    #@a9
    .line 1176
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    #@ab
    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    #@ae
    .line 1182
    :cond_b
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    #@b0
    if-eqz v1, :cond_c

    #@b2
    .line 1183
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    #@b4
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    #@b7
    .line 1188
    :cond_c
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    #@b9
    if-eqz v1, :cond_d

    #@bb
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    #@bd
    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    #@c0
    .line 1194
    :cond_d
    :goto_f
    :try_start_10
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    #@c2
    if-eqz v1, :cond_e

    #@c4
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    #@c6
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    #@c9
    .line 1199
    :cond_e
    :goto_10
    :try_start_11
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    #@cb
    if-eqz v1, :cond_f

    #@cd
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    #@cf
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    #@d2
    .line 1204
    :cond_f
    :goto_11
    :try_start_12
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    #@d4
    if-eqz v1, :cond_10

    #@d6
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    #@d8
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    #@db
    .line 1210
    :cond_10
    :goto_12
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    #@dd
    if-eqz v1, :cond_11

    #@df
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    #@e1
    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    #@e4
    .line 1093
    :cond_11
    :goto_13
    return-void

    #@e5
    .line 1100
    :catch_0
    move-exception v0

    #@e6
    .line 1101
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@e8
    const-string/jumbo v2, "observing native crashes"

    #@eb
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ee
    goto/16 :goto_0

    #@f0
    .line 1109
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@f1
    .line 1110
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@f3
    const-string/jumbo v2, "starting System UI"

    #@f6
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f9
    goto/16 :goto_1

    #@fb
    .line 1114
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    #@fc
    .line 1115
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@fe
    const-string/jumbo v2, "making Network Score Service ready"

    #@101
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@104
    goto/16 :goto_2

    #@106
    .line 1119
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    #@107
    .line 1120
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@109
    const-string/jumbo v2, "making Network Managment Service ready"

    #@10c
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10f
    goto/16 :goto_3

    #@111
    .line 1124
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    #@112
    .line 1125
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@114
    const-string/jumbo v2, "making Network Stats Service ready"

    #@117
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11a
    goto/16 :goto_4

    #@11c
    .line 1129
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    #@11d
    .line 1130
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@11f
    const-string/jumbo v2, "making Network Policy Service ready"

    #@122
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@125
    goto/16 :goto_5

    #@127
    .line 1134
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    #@128
    .line 1135
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@12a
    const-string/jumbo v2, "making Connectivity Service ready"

    #@12d
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@130
    goto/16 :goto_6

    #@132
    .line 1139
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    #@133
    .line 1140
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@135
    const-string/jumbo v2, "Notifying AudioService running"

    #@138
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13b
    goto/16 :goto_7

    #@13d
    .line 1151
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    #@13e
    .line 1152
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@140
    const-string/jumbo v2, "Notifying WallpaperService running"

    #@143
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@146
    goto/16 :goto_8

    #@148
    .line 1156
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    #@149
    .line 1157
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@14b
    const-string/jumbo v2, "Notifying InputMethodService running"

    #@14e
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@151
    goto/16 :goto_9

    #@153
    .line 1161
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    #@154
    .line 1162
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@156
    const-string/jumbo v2, "Notifying Location Service running"

    #@159
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15c
    goto/16 :goto_a

    #@15e
    .line 1166
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    #@15f
    .line 1167
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@161
    const-string/jumbo v2, "Notifying CountryDetectorService running"

    #@164
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@167
    goto/16 :goto_b

    #@169
    .line 1171
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    #@16a
    .line 1172
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@16c
    const-string/jumbo v2, "Notifying NetworkTimeService running"

    #@16f
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@172
    goto/16 :goto_c

    #@174
    .line 1178
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    #@175
    .line 1179
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@177
    const-string/jumbo v2, "Notifying CommonTimeManagementService running"

    #@17a
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17d
    goto/16 :goto_d

    #@17f
    .line 1184
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    #@180
    .line 1185
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@182
    const-string/jumbo v2, "Notifying TextServicesManagerService running"

    #@185
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@188
    goto/16 :goto_e

    #@18a
    .line 1189
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    #@18b
    .line 1190
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@18d
    const-string/jumbo v2, "Notifying AssetAtlasService running"

    #@190
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@193
    goto/16 :goto_f

    #@195
    .line 1195
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    #@196
    .line 1196
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@198
    const-string/jumbo v2, "Notifying InputManagerService running"

    #@19b
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19e
    goto/16 :goto_10

    #@1a0
    .line 1200
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v0

    #@1a1
    .line 1201
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1a3
    const-string/jumbo v2, "Notifying TelephonyRegistry running"

    #@1a6
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a9
    goto/16 :goto_11

    #@1ab
    .line 1205
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v0

    #@1ac
    .line 1206
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1ae
    const-string/jumbo v2, "Notifying MediaRouterService running"

    #@1b1
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b4
    goto/16 :goto_12

    #@1b6
    .line 1211
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    #@1b7
    .line 1212
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1b9
    const-string/jumbo v2, "Notifying MmsService running"

    #@1bc
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1bf
    goto/16 :goto_13
.end method
