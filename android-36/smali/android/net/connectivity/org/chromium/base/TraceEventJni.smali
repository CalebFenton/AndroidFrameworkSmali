.class Landroid/net/connectivity/org/chromium/base/TraceEventJni;
.super Ljava/lang/Object;
.source "TraceEventJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/TraceEventJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist addViewDump(IIZZLjava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "parentId"    # I
    .param p3, "isShown"    # Z
    .param p4, "isDirty"    # Z
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "resourceName"    # Ljava/lang/String;
    .param p7, "activityProtoPtr"    # J

    .line 34
    invoke-static/range {p1 .. p8}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_addViewDump(IIZZLjava/lang/Object;Ljava/lang/Object;J)V

    .line 42
    return-void
.end method

.method public blacklist begin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 46
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_begin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public blacklist beginToplevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_beginToplevel(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public blacklist beginWithIntArg(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # I

    .line 56
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_beginWithIntArg(Ljava/lang/Object;I)V

    .line 57
    return-void
.end method

.method public blacklist end(Ljava/lang/String;J)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "flow"    # J

    .line 61
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_end(Ljava/lang/Object;J)V

    .line 62
    return-void
.end method

.method public blacklist endToplevel()V
    .registers 1

    .line 66
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_endToplevel()V

    .line 67
    return-void
.end method

.method public blacklist finishAsync(J)V
    .registers 3
    .param p1, "id"    # J

    .line 71
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_finishAsync(J)V

    .line 72
    return-void
.end method

.method public blacklist initViewHierarchyDump(JLjava/lang/Object;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "list"    # Ljava/lang/Object;

    .line 76
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_initViewHierarchyDump(JLjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public blacklist instant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 81
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_instant(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public blacklist instantAndroidIPC(Ljava/lang/String;J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durMs"    # J

    .line 86
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_instantAndroidIPC(Ljava/lang/Object;J)V

    .line 87
    return-void
.end method

.method public blacklist instantAndroidToolbar(III)V
    .registers 4
    .param p1, "blockReason"    # I
    .param p2, "allowReason"    # I
    .param p3, "snapshotDiff"    # I

    .line 91
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_instantAndroidToolbar(III)V

    .line 95
    return-void
.end method

.method public blacklist registerEnabledObserver()V
    .registers 1

    .line 99
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_registerEnabledObserver()V

    .line 100
    return-void
.end method

.method public blacklist startActivityDump(Ljava/lang/String;J)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpProtoPtr"    # J

    .line 104
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_startActivityDump(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist startAsync(Ljava/lang/String;J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # J

    .line 111
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_startAsync(Ljava/lang/Object;J)V

    .line 112
    return-void
.end method

.method public blacklist startupActivityStart(JJ)V
    .registers 5
    .param p1, "activityId"    # J
    .param p3, "startTimeMs"    # J

    .line 116
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_startupActivityStart(JJ)V

    .line 119
    return-void
.end method

.method public blacklist startupLaunchCause(JJI)V
    .registers 6
    .param p1, "activityId"    # J
    .param p3, "startTimeMs"    # J
    .param p5, "launchCause"    # I

    .line 123
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_startupLaunchCause(JJI)V

    .line 127
    return-void
.end method

.method public blacklist startupTimeToFirstVisibleContent2(JJJ)V
    .registers 7
    .param p1, "activityId"    # J
    .param p3, "startTimeMs"    # J
    .param p5, "durationMs"    # J

    .line 131
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_startupTimeToFirstVisibleContent2(JJJ)V

    .line 135
    return-void
.end method

.method public blacklist viewHierarchyDumpEnabled()Z
    .registers 2

    .line 139
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_viewHierarchyDumpEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist webViewStartupStage1(JJ)V
    .registers 5
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J

    .line 144
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupStage1(JJ)V

    .line 147
    return-void
.end method

.method public blacklist webViewStartupStage2(JJZ)V
    .registers 6
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J
    .param p5, "isColdStartup"    # Z

    .line 151
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupStage2(JJZ)V

    .line 155
    return-void
.end method

.method public blacklist webViewStartupStartChromiumLocked(JJIZ)V
    .registers 7
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J
    .param p5, "callSite"    # I
    .param p6, "fromUIThread"    # Z

    .line 159
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupStartChromiumLocked(JJIZ)V

    .line 164
    return-void
.end method

.method public blacklist webViewStartupTotalFactoryInit(JJ)V
    .registers 5
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J

    .line 168
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupTotalFactoryInit(JJ)V

    .line 171
    return-void
.end method
