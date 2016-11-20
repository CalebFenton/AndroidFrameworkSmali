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

.field private mService:Landroid/net/IConnectivityMetricsLogger;

.field private mServiceUnblockedTimestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    const-string/jumbo v0, "ConnectivityMetricsLogger"

    #@3
    sput-object v0, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@5
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@7
    .line 51
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@a
    .line 55
    const-string/jumbo v0, "connectivity_metrics_logger"

    #@d
    .line 54
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@17
    .line 53
    return-void
.end method


# virtual methods
.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .locals 4
    .param p1, "reference"    # Landroid/net/ConnectivityMetricsEvent$Reference;

    #@0
    .prologue
    .line 123
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
    .line 124
    :catch_0
    move-exception v0

    #@8
    .line 125
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "IConnectivityMetricsLogger.getEvents: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 126
    const/4 v1, 0x0

    #@22
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
    .line 59
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@4
    if-nez v6, :cond_0

    #@6
    .line 61
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
    .line 63
    return-void

    #@36
    .line 66
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
    .line 67
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
    .line 70
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
    .line 71
    return-void

    #@57
    .line 75
    :cond_1
    const/4 v5, 0x0

    #@58
    .line 76
    .local v5, "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    move-object/from16 v0, p0

    #@5a
    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@5c
    if-lez v6, :cond_2

    #@5e
    .line 78
    new-instance v10, Landroid/os/Bundle;

    #@60
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@63
    .line 79
    .local v10, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "count"

    #@66
    move-object/from16 v0, p0

    #@68
    iget v7, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@6a
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@6d
    .line 80
    new-instance v5, Landroid/net/ConnectivityMetricsEvent;

    #@6f
    .end local v5    # "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    move-object/from16 v0, p0

    #@71
    iget-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@73
    .line 81
    const/4 v9, -0x1

    #@74
    move/from16 v8, p3

    #@76
    .line 80
    invoke-direct/range {v5 .. v10}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    #@79
    .line 83
    .local v5, "skippedEventsEvent":Landroid/net/ConnectivityMetricsEvent;
    const-wide/16 v6, 0x0

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    #@7f
    .line 86
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
    .line 91
    .local v11, "event":Landroid/net/ConnectivityMetricsEvent;
    if-nez v5, :cond_4

    #@8e
    .line 92
    :try_start_0
    move-object/from16 v0, p0

    #@90
    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@92
    invoke-interface {v6, v11}, Landroid/net/IConnectivityMetricsLogger;->logEvent(Landroid/net/ConnectivityMetricsEvent;)J

    #@95
    move-result-wide v18

    #@96
    .line 98
    .local v18, "result":J
    :goto_0
    const-wide/16 v6, 0x0

    #@98
    cmp-long v6, v18, v6

    #@9a
    if-nez v6, :cond_5

    #@9c
    .line 99
    const/4 v6, 0x0

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    #@a1
    .line 58
    .end local v18    # "result":J
    :cond_3
    :goto_1
    return-void

    #@a2
    .line 94
    :cond_4
    move-object/from16 v0, p0

    #@a4
    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@a6
    .line 95
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
    .line 94
    invoke-interface {v6, v7}, Landroid/net/IConnectivityMetricsLogger;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    #@b2
    move-result-wide v18

    #@b3
    .restart local v18    # "result":J
    goto :goto_0

    #@b4
    .line 101
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
    .line 102
    const-wide/16 v6, 0x0

    #@c0
    cmp-long v6, v18, v6

    #@c2
    if-lez v6, :cond_3

    #@c4
    .line 103
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
    .line 106
    .end local v18    # "result":J
    :catch_0
    move-exception v4

    #@cc
    .line 107
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v6, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@ce
    new-instance v7, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v8, "Error logging event "

    #@d6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@dd
    move-result-object v8

    #@de
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    goto :goto_1
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 135
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
    .line 136
    :catch_0
    move-exception v0

    #@8
    .line 137
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "IConnectivityMetricsLogger.register: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 138
    const/4 v1, 0x0

    #@22
    return v1
.end method

.method public unregister(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "newEventsIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->unregister(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 150
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 145
    :catch_0
    move-exception v0

    #@8
    .line 146
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "IConnectivityMetricsLogger.unregister: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 147
    const/4 v1, 0x0

    #@22
    return v1
.end method
