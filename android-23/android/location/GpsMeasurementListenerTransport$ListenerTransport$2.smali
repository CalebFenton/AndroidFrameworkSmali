.class Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;
.super Ljava/lang/Object;
.source "GpsMeasurementListenerTransport.java"

# interfaces
.implements Landroid/location/LocalListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;->onStatusChanged(I)V
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
        "Landroid/location/GpsMeasurementsEvent$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;
    .param p2, "val$status"    # I

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;->this$1:Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;

    #@2
    iput p2, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;->val$status:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;->val$status:I

    #@2
    invoke-interface {p1, v0}, Landroid/location/GpsMeasurementsEvent$Listener;->onStatusChanged(I)V

    #@5
    .line 68
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
    .line 68
    check-cast p1, Landroid/location/GpsMeasurementsEvent$Listener;

    #@2
    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$2;->execute(Landroid/location/GpsMeasurementsEvent$Listener;)V

    #@5
    return-void
.end method
