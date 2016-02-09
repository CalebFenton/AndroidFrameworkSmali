.class Landroid/location/LocationManager$ListenerTransport$2;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$ListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$ListenerTransport;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport$2;->this$1:Landroid/location/LocationManager$ListenerTransport;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport$2;->this$1:Landroid/location/LocationManager$ListenerTransport;

    #@2
    invoke-static {v0, p1}, Landroid/location/LocationManager$ListenerTransport;->-wrap0(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V

    #@5
    .line 236
    return-void
.end method
