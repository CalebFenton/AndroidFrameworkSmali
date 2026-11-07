.class public Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;
.super Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WificondEventHandler"
.end annotation


# instance fields
.field private blacklist mCountryCodeChangedListenerHolder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->mCountryCodeChangedListenerHolder:Ljava/util/Map;

    return-void
.end method

.method static synthetic blacklist lambda$OnRegDomainChanged$0(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;Ljava/lang/String;)V
    .registers 2
    .param p0, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 208
    invoke-interface {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;->onCountryCodeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$OnRegDomainChanged$1(Ljava/lang/String;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "countryCode"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 208
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method


# virtual methods
.method public blacklist OnRegDomainChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnRegDomainChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 207
    .local v0, "token":J
    :try_start_1c
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->mCountryCodeChangedListenerHolder:Ljava/util/Map;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    throw v2
.end method

.method public blacklist registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 190
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->mCountryCodeChangedListenerHolder:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public blacklist unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 199
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->mCountryCodeChangedListenerHolder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method
