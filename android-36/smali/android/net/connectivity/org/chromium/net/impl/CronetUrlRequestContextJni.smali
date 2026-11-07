.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;
.super Ljava/lang/Object;
.source "CronetUrlRequestContextJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 12
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;
    .registers 2

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 18
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    return-object v1

    .line 21
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 22
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;

    .line 26
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 29
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContextJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist addPkp(JLjava/lang/String;[[BZJ)V
    .registers 8
    .param p1, "urlRequestContextConfig"    # J
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "hashes"    # [[B
    .param p5, "includeSubdomains"    # Z
    .param p6, "expirationTime"    # J

    .line 35
    invoke-static/range {p1 .. p7}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_addPkp(JLjava/lang/Object;Ljava/lang/Object;ZJ)V

    .line 41
    return-void
.end method

.method public blacklist addQuicHint(JLjava/lang/String;II)V
    .registers 6
    .param p1, "urlRequestContextConfig"    # J
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "alternatePort"    # I

    .line 45
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_addQuicHint(JLjava/lang/Object;II)V

    .line 50
    return-void
.end method

.method public blacklist configureNetworkQualityEstimatorForTesting(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;ZZZ)V
    .registers 7
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p4, "useLocalHostRequests"    # Z
    .param p5, "useSmallerResponses"    # Z
    .param p6, "disableOfflineCheck"    # Z

    .line 54
    nop

    .line 55
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_configureNetworkQualityEstimatorForTesting(JLjava/lang/Object;ZZZ)V

    .line 61
    return-void
.end method

.method public blacklist createRequestContextAdapter(J)J
    .registers 5
    .param p1, "urlRequestContextConfig"    # J

    .line 65
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_createRequestContextAdapter(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist createRequestContextConfig([B)J
    .registers 4
    .param p1, "serializedRequestContextConfigOptions"    # [B

    .line 71
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_createRequestContextConfig(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 77
    nop

    .line 78
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_destroy(JLjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public blacklist flushWritePropertiesForTesting(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 85
    nop

    .line 86
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_flushWritePropertiesForTesting(JLjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public blacklist getHistogramDeltas()[B
    .registers 2

    .line 93
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_getHistogramDeltas()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist initRequestContextOnInitThread(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 98
    nop

    .line 99
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_initRequestContextOnInitThread(JLjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public blacklist provideRTTObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p4, "should"    # Z

    .line 106
    nop

    .line 107
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_provideRTTObservations(JLjava/lang/Object;Z)V

    .line 111
    return-void
.end method

.method public blacklist provideThroughputObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p4, "should"    # Z

    .line 115
    nop

    .line 116
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_provideThroughputObservations(JLjava/lang/Object;Z)V

    .line 120
    return-void
.end method

.method public blacklist startNetLogToDisk(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p4, "dirPath"    # Ljava/lang/String;
    .param p5, "logAll"    # Z
    .param p6, "maxSize"    # I

    .line 124
    nop

    .line 125
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_startNetLogToDisk(JLjava/lang/Object;Ljava/lang/Object;ZI)V

    .line 131
    return-void
.end method

.method public blacklist startNetLogToFile(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "logAll"    # Z

    .line 135
    nop

    .line 136
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_startNetLogToFile(JLjava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist stopNetLog(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    .line 145
    nop

    .line 146
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_stopNetLog(JLjava/lang/Object;)V

    .line 149
    return-void
.end method
