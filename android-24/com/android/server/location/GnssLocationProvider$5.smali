.class Lcom/android/server/location/GnssLocationProvider$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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
    .line 503
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$5;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    const/16 v1, 0xc

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    #@9
    .line 505
    return-void
.end method
