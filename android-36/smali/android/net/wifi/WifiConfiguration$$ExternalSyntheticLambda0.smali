.class public final synthetic Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiConfiguration;

    check-cast p1, Landroid/net/wifi/SecurityParams;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiConfiguration;->$r8$lambda$9WRNVOaU9e0O3Uauu67Z8gUIFQs(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/SecurityParams;)V

    return-void
.end method
