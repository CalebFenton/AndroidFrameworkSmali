.class final Lcom/android/server/location/GeofenceManager$GeofenceHandler;
.super Landroid/os/Handler;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofenceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeofenceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceManager;

    #@0
    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    #@2
    .line 427
    const/4 v0, 0x1

    #@3
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    #@6
    .line 426
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 431
    :goto_0
    return-void

    #@6
    .line 434
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    #@8
    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->-wrap0(Lcom/android/server/location/GeofenceManager;)V

    #@b
    goto :goto_0

    #@c
    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
