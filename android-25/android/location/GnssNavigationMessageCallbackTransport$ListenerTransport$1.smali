.class Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;
.super Ljava/lang/Object;
.source "GnssNavigationMessageCallbackTransport.java"

# interfaces
.implements Landroid/location/LocalListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
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
        "Landroid/location/GnssNavigationMessage$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;

.field final synthetic val$event:Landroid/location/GnssNavigationMessage;


# direct methods
.method constructor <init>(Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;Landroid/location/GnssNavigationMessage;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;
    .param p2, "val$event"    # Landroid/location/GnssNavigationMessage;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;->this$1:Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;

    #@2
    iput-object p2, p0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;->val$event:Landroid/location/GnssNavigationMessage;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/GnssNavigationMessage$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;->val$event:Landroid/location/GnssNavigationMessage;

    #@2
    invoke-virtual {p1, v0}, Landroid/location/GnssNavigationMessage$Callback;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    #@5
    .line 59
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    check-cast p1, Landroid/location/GnssNavigationMessage$Callback;

    #@2
    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;->execute(Landroid/location/GnssNavigationMessage$Callback;)V

    #@5
    return-void
.end method
