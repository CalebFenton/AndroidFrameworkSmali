.class public final synthetic Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->lambda$bind$0(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    return-void
.end method
