.class public Landroid/net/ConnectivityMetricsLogger;
.super Ljava/lang/Object;
.source "ConnectivityMetricsLogger.java"


# static fields
.field public static final COMPONENT_TAG_BLUETOOTH:I = 0x1

.field public static final COMPONENT_TAG_CONNECTIVITY:I = 0x0

.field public static final COMPONENT_TAG_TELECOM:I = 0x3

.field public static final COMPONENT_TAG_TELEPHONY:I = 0x4

.field public static final COMPONENT_TAG_WIFI:I = 0x2

.field public static final CONNECTIVITY_METRICS_LOGGER_SERVICE:Ljava/lang/String; = "connectivity_metrics_logger"

.field public static final DATA_KEY_EVENTS_COUNT:Ljava/lang/String; = "count"

.field private static final DBG:Z = true

.field public static final NUMBER_OF_COMPONENTS:I = 0x5

.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_SKIPPED_EVENTS:I = -0x1


# instance fields
.field private mNumSkippedEvents:I

.field protected mService:Landroid/net/IConnectivityMetricsLogger;

.field protected volatile mServiceUnblockedTimestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "ConnectivityMetricsLogger"

    #@3
    sput-object v0, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@5
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "connectivity_metrics_logger"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 55
    invoke-static {v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, v0}, Landroid/net/ConnectivityMetricsLogger;-><init>(Landroid/net/IConnectivityMetricsLogger;)V

    #@e
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityMetricsLogger;)V
    .locals 0
    .param p1, "service"    # Landroid/net/IConnectivityMetricsLogger;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@5
    .line 61
    return-void
.end method


# virtual methods
.method protected checkLoggerService()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 67
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 68
    return v0

    #@6
    .line 73
    :cond_0
    const-string/jumbo v1, "connectivity_metrics_logger"

    #@9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@c
    move-result-object v1

    #@d
    .line 72
    invoke-static {v1}, Landroid/net/IConnectivityMetricsLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@13
    .line 74
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@15
    if-eqz v1, :cond_1

    #@17
    :goto_0
    return v0

    #@18
    :cond_1
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .locals 3
    .param p1, "reference"    # Landroid/net/ConnectivityMetricsEvent$Reference;

    #@0
    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 162
    :catch_0
    move-exception v0

    #@8
    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "IConnectivityMetricsLogger.getEvents"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 164
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public logEvent(JIILandroid/os/Parcelable;)V
    .locals 21
    .param p1, "timestamp"    # J
    .param p3, "componentTag"    # I
    .param p4, "eventTag"    # I
    .param p5, "data"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 91
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@4
    if-nez v6, :cond_0

    #@6
    .line 93
    sget-object v6, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@8
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v8, "logEvent("

    #@10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    move/from16 v0, p3

    #@16
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    const-string/jumbo v8, ","

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    move/from16 v0, p4

    #@23
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    const-string/jumbo v8, ") Service not ready"

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 95
    return-void

    #@36
    .line 98
    :cond_0
    move-object/from16 v0, p0

    #@38
    iget-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@3a
    const-wide/16 v8, 0x0

    #@3c
    cmp-long v6, v6, v8

    #@3e
    if-lez v6, :cond_1

    #@40
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@43
    move-result-wide v6

    #@44
    move-object/from16 v0, p0

    #@46
    iget-wide v8, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@48
    cmp-long v6, v6, v8

    #@4a
    if-gez v6, :cond_1

    #@4c
    .line 102
    move-object/from16 v0, p0

    #@4e
    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@50
    add-int/lit8 v6, v6, 0x1

    #@52
    move-object/from16 v0, p0

    #@54
    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@56
    .line 103
    return-void

    #@57
    .line 107
    :cond_1
    const/4 v5, 0x0

    #@58
    .line 108
    .local v5, "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    move-object/from16 v0, p0

    #@5a
    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@5c
    if-lez v6, :cond_2

    #@5e
    .line 110
    new-instance v10, Landroid/os/Bundle;

    #@60
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@63
    .line 111
    .local v10, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "count"

    #@66
    move-object/from16 v0, p0

    #@68
    iget v7, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@6a
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@6d
    .line 118
    new-instance v5, Landroid/net/ConnectivityMetricsEvent;

    #@6f
    .end local v5    # "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    move-object/from16 v0, p0

    #@71
    iget-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@73
    .line 119
    const/4 v9, -0x1

    #@74
    move/from16 v8, p3

    #@76
    .line 118
    invoke-direct/range {v5 .. v10}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    #@79
    .line 121
    .local v5, "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    const-wide/16 v6, 0x0

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@7f
    .line 124
    .end local v5    # "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    .end local v10    # "b":Landroid/os/Bundle;
    :cond_2
    new-instance v11, Landroid/net/ConnectivityMetricsEvent;

    #@81
    move-wide/from16 v12, p1

    #@83
    move/from16 v14, p3

    #@85
    move/from16 v15, p4

    #@87
    move-object/from16 v16, p5

    #@89
    invoke-direct/range {v11 .. v16}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    #@8c
    .line 129
    .local v11, "event":Landroid/net/ConnectivityMetricsEvent;
    if-nez v5, :cond_4

    #@8e
    .line 130
    :try_start_0
    move-object/from16 v0, p0

    #@90
    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@92
    invoke-interface {v6, v11}, Landroid/net/IConnectivityMetricsLogger;->logEvent(Landroid/net/ConnectivityMetricsEvent;)J

    #@95
    move-result-wide v18

    #@96
    .line 136
    .local v18, "result":J
    :goto_0
    const-wide/16 v6, 0x0

    #@98
    cmp-long v6, v18, v6

    #@9a
    if-nez v6, :cond_5

    #@9c
    .line 137
    const/4 v6, 0x0

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@a1
    .line 90
    .end local v18    # "result":J
    :cond_3
    :goto_1
    return-void

    #@a2
    .line 132
    :cond_4
    move-object/from16 v0, p0

    #@a4
    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@a6
    .line 133
    const/4 v7, 0x2

    #@a7
    new-array v7, v7, [Landroid/net/ConnectivityMetricsEvent;

    #@a9
    const/4 v8, 0x0

    #@aa
    aput-object v5, v7, v8

    #@ac
    const/4 v8, 0x1

    #@ad
    aput-object v11, v7, v8

    #@af
    .line 132
    invoke-interface {v6, v7}, Landroid/net/IConnectivityMetricsLogger;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    #@b2
    move-result-wide v18

    #@b3
    .restart local v18    # "result":J
    goto :goto_0

    #@b4
    .line 139
    :cond_5
    move-object/from16 v0, p0

    #@b6
    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@b8
    add-int/lit8 v6, v6, 0x1

    #@ba
    move-object/from16 v0, p0

    #@bc
    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@be
    .line 140
    const-wide/16 v6, 0x0

    #@c0
    cmp-long v6, v18, v6

    #@c2
    if-lez v6, :cond_3

    #@c4
    .line 141
    move-wide/from16 v0, v18

    #@c6
    move-object/from16 v2, p0

    #@c8
    iput-wide v0, v2, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@ca
    goto :goto_1

    #@cb
    .line 144
    .end local v18    # "result":J
    :catch_0
    move-exception v4

    #@cc
    .line 145
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v6, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@ce
    const-string/jumbo v7, "Error logging event"

    #@d1
    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d4
    goto :goto_1
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->register(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 174
    :catch_0
    move-exception v0

    #@8
    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "IConnectivityMetricsLogger.register"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 176
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public unregister(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->unregister(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 183
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 184
    :catch_0
    move-exception v0

    #@8
    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "IConnectivityMetricsLogger.unregister"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 186
    const/4 v1, 0x0

    #@11
    return v1
.end method
