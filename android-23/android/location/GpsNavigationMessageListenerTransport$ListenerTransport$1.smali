.class Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessageListenerTransport.java"

# interfaces
.implements Landroid/location/LocalListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;->onGpsNavigationMessageReceived(Landroid/location/GpsNavigationMessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/location/LocalListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/GpsNavigationMessageEvent$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;

.field final synthetic val$event:Landroid/location/GpsNavigationMessageEvent;


# direct methods
.method constructor <init>(Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;Landroid/location/GpsNavigationMessageEvent;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;
    .param p2, "val$event"    # Landroid/location/GpsNavigationMessageEvent;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;->this$1:Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;

    #@2
    iput-object p2, p0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;->val$event:Landroid/location/GpsNavigationMessageEvent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;->val$event:Landroid/location/GpsNavigationMessageEvent;

    #@2
    invoke-interface {p1, v0}, Landroid/location/GpsNavigationMessageEvent$Listener;->onGpsNavigationMessageReceived(Landroid/location/GpsNavigationMessageEvent;)V

    #@5
    .line 59
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    check-cast p1, Landroid/location/GpsNavigationMessageEvent$Listener;

    #@2
    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;->execute(Landroid/location/GpsNavigationMessageEvent$Listener;)V

    #@5
    return-void
.end method
