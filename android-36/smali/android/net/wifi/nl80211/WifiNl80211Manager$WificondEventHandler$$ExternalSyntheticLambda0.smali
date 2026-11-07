.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->lambda$OnRegDomainChanged$1(Ljava/lang/String;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method
