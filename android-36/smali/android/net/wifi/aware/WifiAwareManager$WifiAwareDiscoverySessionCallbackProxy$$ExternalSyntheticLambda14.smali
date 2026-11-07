.class public final synthetic Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/aware/DiscoverySessionCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda14;->f$0:Landroid/net/wifi/aware/DiscoverySessionCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda14;->f$0:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionResumeSucceeded()V

    return-void
.end method
