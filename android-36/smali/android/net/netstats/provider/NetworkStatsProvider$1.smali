.class Landroid/net/netstats/provider/NetworkStatsProvider$1;
.super Landroid/net/netstats/provider/INetworkStatsProvider$Stub;
.source "NetworkStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/provider/NetworkStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/netstats/provider/NetworkStatsProvider;


# direct methods
.method constructor blacklist <init>(Landroid/net/netstats/provider/NetworkStatsProvider;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/netstats/provider/NetworkStatsProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-direct {p0}, Landroid/net/netstats/provider/INetworkStatsProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRequestStatsUpdate(I)V
    .registers 3
    .param p1, "token"    # I

    .line 42
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-virtual {v0, p1}, Landroid/net/netstats/provider/NetworkStatsProvider;->onRequestStatsUpdate(I)V

    .line 43
    return-void
.end method

.method public blacklist onSetAlert(J)V
    .registers 4
    .param p1, "quotaBytes"    # J

    .line 47
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-virtual {v0, p1, p2}, Landroid/net/netstats/provider/NetworkStatsProvider;->onSetAlert(J)V

    .line 48
    return-void
.end method

.method public blacklist onSetWarningAndLimit(Ljava/lang/String;JJ)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warningBytes"    # J
    .param p4, "limitBytes"    # J

    .line 52
    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "warningBytes":J
    .end local p4    # "limitBytes":J
    .local v1, "iface":Ljava/lang/String;
    .local v2, "warningBytes":J
    .local v4, "limitBytes":J
    invoke-virtual/range {v0 .. v5}, Landroid/net/netstats/provider/NetworkStatsProvider;->onSetWarningAndLimit(Ljava/lang/String;JJ)V

    .line 53
    return-void
.end method
