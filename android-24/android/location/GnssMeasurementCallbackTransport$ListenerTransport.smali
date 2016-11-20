.class Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
.super Landroid/location/IGnssMeasurementsListener$Stub;
.source "GnssMeasurementCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GnssMeasurementCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/GnssMeasurementCallbackTransport;

    #@0
    .prologue
    .line 50
    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    #@2
    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/GnssMeasurementCallbackTransport;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;)V

    #@3
    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    #@0
    .prologue
    .line 54
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;Landroid/location/GnssMeasurementsEvent;)V

    #@5
    .line 61
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GnssMeasurementsEvent$Callback;>;"
    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    #@7
    invoke-virtual {v1, v0}, Landroid/location/GnssMeasurementCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    #@a
    .line 52
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;I)V

    #@5
    .line 74
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GnssMeasurementsEvent$Callback;>;"
    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    #@7
    invoke-virtual {v1, v0}, Landroid/location/GnssMeasurementCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    #@a
    .line 65
    return-void
.end method
