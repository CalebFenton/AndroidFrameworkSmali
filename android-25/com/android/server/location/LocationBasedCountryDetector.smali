.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    #@3
    .line 69
    const-string/jumbo v0, "location"

    #@6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/location/LocationManager;

    #@c
    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    #@e
    .line 67
    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 238
    if-nez p1, :cond_0

    #@3
    .line 239
    const/4 v0, 0x0

    #@4
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 240
    return-void

    #@9
    .line 242
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    if-eqz v0, :cond_1

    #@d
    monitor-exit p0

    #@e
    return-void

    #@f
    .line 243
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    #@11
    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    #@13
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    #@16
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@19
    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    #@1b
    .line 259
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    #@1d
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 237
    return-void

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .locals 10

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 165
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 166
    new-instance v5, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v5

    #@c
    monitor-exit p0

    #@d
    throw v5

    #@e
    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    .line 170
    .local v0, "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@15
    move-result v4

    #@16
    .line 171
    .local v4, "totalProviders":I
    if-lez v4, :cond_3

    #@18
    .line 172
    new-instance v5, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@1d
    iput-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    #@1f
    .line 173
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@22
    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Ljava/lang/String;

    #@28
    .line 175
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_1

    #@2e
    .line 176
    new-instance v2, Lcom/android/server/location/LocationBasedCountryDetector$1;

    #@30
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    #@33
    .line 194
    .local v2, "listener":Landroid/location/LocationListener;
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    #@35
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 195
    invoke-virtual {p0, v3, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    #@3b
    .line 173
    .end local v2    # "listener":Landroid/location/LocationListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 199
    .end local v3    # "provider":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/util/Timer;

    #@40
    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    #@43
    iput-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    #@45
    .line 200
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    #@47
    new-instance v6, Lcom/android/server/location/LocationBasedCountryDetector$2;

    #@49
    invoke-direct {v6, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    #@4c
    .line 209
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    #@4f
    move-result-wide v8

    #@50
    .line 200
    invoke-virtual {v5, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@53
    .line 214
    .end local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    monitor-exit p0

    #@56
    return-object v5

    #@57
    .line 212
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    #@5a
    move-result-object v5

    #@5b
    invoke-direct {p0, v5}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    goto :goto_1
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 76
    const/4 v7, 0x0

    #@1
    .line 77
    .local v7, "country":Ljava/lang/String;
    new-instance v1, Landroid/location/Geocoder;

    #@3
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    #@5
    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    #@8
    .line 80
    .local v1, "geoCoder":Landroid/location/Geocoder;
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    #@f
    move-result-wide v4

    #@10
    const/4 v6, 0x1

    #@11
    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    .line 81
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_0

    #@17
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    if-lez v2, :cond_0

    #@1d
    .line 82
    const/4 v2, 0x0

    #@1e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/location/Address;

    #@24
    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v7

    #@28
    .line 87
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v7    # "country":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    #@29
    .line 84
    .restart local v7    # "country":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@2a
    .line 85
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v2, "LocationBasedCountryDetector"

    #@2d
    const-string/jumbo v3, "Exception occurs when getting country from location"

    #@30
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    goto :goto_0
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 152
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    #@d
    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    #@f
    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .locals 12

    #@0
    .prologue
    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 125
    .local v2, "bid":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    #@6
    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    #@9
    move-result-object v6

    #@a
    .line 126
    .local v6, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@b
    .line 127
    .local v0, "bestLocation":Landroid/location/Location;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v5

    #@f
    .end local v0    # "bestLocation":Landroid/location/Location;
    .local v5, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_2

    #@15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Ljava/lang/String;

    #@1b
    .line 128
    .local v4, "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    #@1d
    invoke-virtual {v7, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    #@20
    move-result-object v1

    #@21
    .line 129
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v1, :cond_0

    #@23
    .line 130
    if-eqz v0, :cond_1

    #@25
    .line 131
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    #@28
    move-result-wide v8

    #@29
    .line 132
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v10

    #@2d
    .line 131
    cmp-long v7, v8, v10

    #@2f
    if-gez v7, :cond_0

    #@31
    .line 133
    :cond_1
    move-object v0, v1

    #@32
    .local v0, "bestLocation":Landroid/location/Location;
    goto :goto_0

    #@33
    .line 139
    .end local v0    # "bestLocation":Landroid/location/Location;
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    .end local v4    # "provider":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 137
    return-object v0

    #@37
    .line 138
    .end local v5    # "provider$iterator":Ljava/util/Iterator;
    .end local v6    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    #@38
    .line 139
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 138
    throw v7
.end method

.method protected getQueryLocationTimeout()J
    .locals 2

    #@0
    .prologue
    .line 147
    const-wide/32 v0, 0x493e0

    #@3
    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "passive"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    #@0
    .prologue
    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v6

    #@4
    .line 101
    .local v6, "bid":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    #@6
    const-wide/16 v2, 0x0

    #@8
    const/4 v4, 0x0

    #@9
    move-object v1, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 103
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 98
    return-void

    #@12
    .line 102
    :catchall_0
    move-exception v0

    #@13
    .line 103
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 102
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 223
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/location/LocationListener;

    #@17
    .line 224
    .local v0, "listener":Landroid/location/LocationListener;
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .end local v0    # "listener":Landroid/location/LocationListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2

    #@1e
    .line 226
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    #@1f
    :try_start_1
    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    #@21
    .line 228
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 229
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    #@27
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    #@2a
    .line 230
    const/4 v2, 0x0

    #@2b
    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :cond_2
    monitor-exit p0

    #@2e
    .line 221
    return-void
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/LocationListener;

    #@0
    .prologue
    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 113
    .local v0, "bid":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    #@6
    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 110
    return-void

    #@d
    .line 114
    :catchall_0
    move-exception v2

    #@e
    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 114
    throw v2
.end method
