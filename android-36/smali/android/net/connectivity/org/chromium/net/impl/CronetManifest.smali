.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;
.super Ljava/lang/Object;
.source "CronetManifest.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ENABLE_TELEMETRY_META_DATA_KEY:Ljava/lang/String; = "android.net.http.EnableTelemetry"

.field static final blacklist META_DATA_HOLDER_SERVICE_NAME:Ljava/lang/String; = "android.net.http.MetaDataHolder"

.field public static final blacklist READ_HTTP_FLAGS_META_DATA_KEY:Ljava/lang/String; = "android.net.http.ReadHttpFlags"

.field private static blacklist sLastContext:Landroid/content/Context;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMetaData:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    nop

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 93
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_7
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;

    if-eq p0, v1, :cond_4d

    .line 100
    const-string v1, "CronetManifest#getMetaData fetching info"

    .line 101
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_52

    .line 104
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    nop

    .line 105
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "android.net.http.MetaDataHolder"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    const v4, 0xc0280

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_24} :catch_27
    .catchall {:try_start_12 .. :try_end_24} :catchall_25

    .line 117
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_2a

    .line 100
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_25
    move-exception v2

    goto :goto_42

    .line 113
    :catch_27
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 119
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_2a
    if-eqz v2, :cond_33

    :try_start_2c
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_33

    .line 120
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    goto :goto_38

    .line 121
    :cond_33
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_38
    sput-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    .line 122
    sput-object p0, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_25

    .line 123
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_4d

    :try_start_3e
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_52

    goto :goto_4d

    .line 100
    :goto_42
    if-eqz v1, :cond_4c

    :try_start_44
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v3

    :try_start_49
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    :cond_4c
    :goto_4c
    throw v2

    .line 125
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_4d
    :goto_4d
    nop

    .line 126
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public static blacklist isAppOptedInForTelemetry(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 59
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    if-eq p1, v0, :cond_b

    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 62
    .local v0, "telemetryIsDefaultEnabled":Z
    :goto_c
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 63
    const-string v2, "android.net.http.EnableTelemetry"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    return v1
.end method

.method public static blacklist resetCache()V
    .registers 1

    .line 132
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    .line 133
    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method public static blacklist shouldReadHttpFlags(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.net.http.ReadHttpFlags"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
