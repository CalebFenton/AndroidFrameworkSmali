.class Lcom/android/server/location/GeofenceProxy$1;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceProxy;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$1;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$1;->this$0:Lcom/android/server/location/GeofenceProxy;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get1(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 60
    return-void
.end method
