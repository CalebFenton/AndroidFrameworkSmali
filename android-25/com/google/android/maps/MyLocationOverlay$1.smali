.class Lcom/google/android/maps/MyLocationOverlay$1;
.super Landroid/os/Handler;
.source "MyLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MyLocationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MyLocationOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/MyLocationOverlay;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    #@2
    iget-object v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 133
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    #@8
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay$1;->this$0:Lcom/google/android/maps/MyLocationOverlay;

    #@a
    iget-object v1, v1, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MyLocationOverlay;->onLocationChanged(Landroid/location/Location;)V

    #@f
    .line 131
    :cond_0
    return-void
.end method
