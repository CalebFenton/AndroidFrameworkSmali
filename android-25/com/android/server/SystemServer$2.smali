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

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p4, "val$networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p5, "val$networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p6, "val$networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "val$connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "val$locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "val$countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "val$networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "val$commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "val$atlasF"    # Lcom/android/server/AssetAtlasService;
    .param p13, "val$inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p14, "val$telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p15, "val$mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p16, "val$mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    #@0
    .prologue
    .line 1302
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
    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    #@10
    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    #@12
    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    #@14
    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    #@16
    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    #@18
    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    #@1a
    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    #@1c
    move-object/from16 v0, p15

    #@1e
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    #@20
    move-object/from16 v0, p16

    #@22
    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    #@24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0x80000

    #@3
    .line 1305
    const-string/jumbo v1, "SystemServer"

    #@6
    const-string/jumbo v2, "Making services ready"

    #@9
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1306
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@e
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    #@11
    move-result-object v1

    #@12
    .line 1307
    const/16 v2, 0x226

    #@14
    .line 1306
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@17
    .line 1308
    const-string/jumbo v1, "PhaseActivityManagerReady"

    #@1a
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 1310
    const-string/jumbo v1, "StartObservingNativeCrashes"

    #@20
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@23
    .line 1312
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@25
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 1316
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2f
    .line 1318
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@31
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_0

    #@37
    .line 1319
    const-string/jumbo v1, "SystemServer"

    #@3a
    const-string/jumbo v2, "WebViewFactory preparation"

    #@3d
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1320
    const-string/jumbo v1, "WebViewFactoryPreparation"

    #@43
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@46
    .line 1321
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@48
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    #@4f
    .line 1322
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@52
    .line 1325
    :cond_0
    const-string/jumbo v1, "StartSystemUI"

    #@55
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@58
    .line 1327
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    #@5a
    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@5d
    .line 1331
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@60
    .line 1332
    const-string/jumbo v1, "MakeNetworkScoreReady"

    #@63
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@66
    .line 1334
    :try_start_2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@68
    if-eqz v1, :cond_1

    #@6a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@6c
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@6f
    .line 1338
    :cond_1
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@72
    .line 1339
    const-string/jumbo v1, "MakeNetworkManagementServiceReady"

    #@75
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@78
    .line 1341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    #@7a
    if-eqz v1, :cond_2

    #@7c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    #@7e
    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    #@81
    .line 1345
    :cond_2
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@84
    .line 1346
    const-string/jumbo v1, "MakeNetworkStatsServiceReady"

    #@87
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8a
    .line 1348
    :try_start_4
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    #@8c
    if-eqz v1, :cond_3

    #@8e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    #@90
    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    #@93
    .line 1352
    :cond_3
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@96
    .line 1353
    const-string/jumbo v1, "MakeNetworkPolicyServiceReady"

    #@99
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9c
    .line 1355
    :try_start_5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    #@9e
    if-eqz v1, :cond_4

    #@a0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    #@a2
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    #@a5
    .line 1359
    :cond_4
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@a8
    .line 1360
    const-string/jumbo v1, "MakeConnectivityServiceReady"

    #@ab
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@ae
    .line 1362
    :try_start_6
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    #@b0
    if-eqz v1, :cond_5

    #@b2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    #@b4
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    #@b7
    .line 1366
    :cond_5
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@ba
    .line 1368
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    #@c1
    .line 1372
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@c4
    .line 1373
    const-string/jumbo v1, "PhaseThirdPartyAppsCanStart"

    #@c7
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@ca
    .line 1374
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@cc
    invoke-static {v1}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    #@cf
    move-result-object v1

    #@d0
    .line 1375
    const/16 v2, 0x258

    #@d2
    .line 1374
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@d5
    .line 1378
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    #@d7
    if-eqz v1, :cond_6

    #@d9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    #@db
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    #@de
    .line 1383
    :cond_6
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    #@e0
    if-eqz v1, :cond_7

    #@e2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    #@e4
    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    #@e7
    .line 1388
    :cond_7
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    #@e9
    if-eqz v1, :cond_8

    #@eb
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    #@ed
    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    #@f0
    .line 1393
    :cond_8
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    #@f2
    if-eqz v1, :cond_9

    #@f4
    .line 1394
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    #@f6
    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    #@f9
    .line 1400
    :cond_9
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    #@fb
    if-eqz v1, :cond_a

    #@fd
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    #@ff
    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    #@102
    .line 1406
    :cond_a
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    #@104
    if-eqz v1, :cond_b

    #@106
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    #@108
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    #@10b
    .line 1411
    :cond_b
    :goto_c
    :try_start_d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    #@10d
    if-eqz v1, :cond_c

    #@10f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    #@111
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    #@114
    .line 1416
    :cond_c
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    #@116
    if-eqz v1, :cond_d

    #@118
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    #@11a
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    #@11d
    .line 1422
    :cond_d
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    #@11f
    if-eqz v1, :cond_e

    #@121
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    #@123
    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    #@126
    .line 1428
    :cond_e
    :goto_f
    :try_start_10
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@128
    if-eqz v1, :cond_f

    #@12a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    #@12c
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    #@12f
    .line 1432
    :cond_f
    :goto_10
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@132
    .line 1304
    return-void

    #@133
    .line 1313
    :catch_0
    move-exception v0

    #@134
    .line 1314
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@136
    const-string/jumbo v2, "observing native crashes"

    #@139
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13c
    goto/16 :goto_0

    #@13e
    .line 1328
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@13f
    .line 1329
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@141
    const-string/jumbo v2, "starting System UI"

    #@144
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@147
    goto/16 :goto_1

    #@149
    .line 1335
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    #@14a
    .line 1336
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@14c
    const-string/jumbo v2, "making Network Score Service ready"

    #@14f
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@152
    goto/16 :goto_2

    #@154
    .line 1342
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    #@155
    .line 1343
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@157
    const-string/jumbo v2, "making Network Managment Service ready"

    #@15a
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15d
    goto/16 :goto_3

    #@15f
    .line 1349
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    #@160
    .line 1350
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@162
    const-string/jumbo v2, "making Network Stats Service ready"

    #@165
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@168
    goto/16 :goto_4

    #@16a
    .line 1356
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    #@16b
    .line 1357
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@16d
    const-string/jumbo v2, "making Network Policy Service ready"

    #@170
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@173
    goto/16 :goto_5

    #@175
    .line 1363
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    #@176
    .line 1364
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@178
    const-string/jumbo v2, "making Connectivity Service ready"

    #@17b
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17e
    goto/16 :goto_6

    #@180
    .line 1379
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    #@181
    .line 1380
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@183
    const-string/jumbo v2, "Notifying Location Service running"

    #@186
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@189
    goto/16 :goto_7

    #@18b
    .line 1384
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    #@18c
    .line 1385
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@18e
    const-string/jumbo v2, "Notifying CountryDetectorService running"

    #@191
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@194
    goto/16 :goto_8

    #@196
    .line 1389
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    #@197
    .line 1390
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@199
    const-string/jumbo v2, "Notifying NetworkTimeService running"

    #@19c
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19f
    goto/16 :goto_9

    #@1a1
    .line 1396
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    #@1a2
    .line 1397
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1a4
    const-string/jumbo v2, "Notifying CommonTimeManagementService running"

    #@1a7
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1aa
    goto/16 :goto_a

    #@1ac
    .line 1401
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    #@1ad
    .line 1402
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1af
    const-string/jumbo v2, "Notifying AssetAtlasService running"

    #@1b2
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b5
    goto/16 :goto_b

    #@1b7
    .line 1407
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    #@1b8
    .line 1408
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1ba
    const-string/jumbo v2, "Notifying InputManagerService running"

    #@1bd
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c0
    goto/16 :goto_c

    #@1c2
    .line 1412
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    #@1c3
    .line 1413
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1c5
    const-string/jumbo v2, "Notifying TelephonyRegistry running"

    #@1c8
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1cb
    goto/16 :goto_d

    #@1cd
    .line 1417
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    #@1ce
    .line 1418
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1d0
    const-string/jumbo v2, "Notifying MediaRouterService running"

    #@1d3
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d6
    goto/16 :goto_e

    #@1d8
    .line 1423
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    #@1d9
    .line 1424
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1db
    const-string/jumbo v2, "Notifying MmsService running"

    #@1de
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e1
    goto/16 :goto_f

    #@1e3
    .line 1429
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    #@1e4
    .line 1430
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    #@1e6
    const-string/jumbo v2, "Notifying NetworkScoreService running"

    #@1e9
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1ec
    goto/16 :goto_10
.end method
