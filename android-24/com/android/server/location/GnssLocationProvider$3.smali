.class Lcom/android/server/location/GnssLocationProvider$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    #@0
    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$3;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$3;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    const/4 v1, 0x4

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    #@7
    .line 459
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$3;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap27(Lcom/android/server/location/GnssLocationProvider;I)V

    #@6
    .line 464
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$3;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap27(Lcom/android/server/location/GnssLocationProvider;I)V

    #@6
    .line 469
    return-void
.end method
