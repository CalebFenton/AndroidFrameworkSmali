.class Lcom/android/server/location/GnssLocationProvider$2;
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
    .line 452
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get6(Lcom/android/server/location/GnssLocationProvider;)I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 456
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@a
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap29(Lcom/android/server/location/GnssLocationProvider;)V

    #@d
    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@f
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get4(Lcom/android/server/location/GnssLocationProvider;)I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 459
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@17
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap34(Lcom/android/server/location/GnssLocationProvider;)V

    #@1a
    .line 454
    :cond_1
    return-void
.end method
