.class Lcom/android/server/location/GpsLocationProvider$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;

    #@0
    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

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
    .line 479
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    const/16 v1, 0xc

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->-wrap26(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    #@9
    .line 478
    return-void
.end method
