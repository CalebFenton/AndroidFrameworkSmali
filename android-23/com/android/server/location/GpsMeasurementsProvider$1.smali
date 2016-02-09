.class Lcom/android/server/location/GpsMeasurementsProvider$1;
.super Ljava/lang/Object;
.source "GpsMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsMeasurementsProvider;

.field final synthetic val$event:Landroid/location/GpsMeasurementsEvent;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsMeasurementsProvider;
    .param p2, "val$event"    # Landroid/location/GpsMeasurementsEvent;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/location/GpsMeasurementsProvider$1;->this$0:Lcom/android/server/location/GpsMeasurementsProvider;

    #@2
    iput-object p2, p0, Lcom/android/server/location/GpsMeasurementsProvider$1;->val$event:Landroid/location/GpsMeasurementsEvent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/location/GpsMeasurementsProvider$1;->val$event:Landroid/location/GpsMeasurementsEvent;

    #@2
    invoke-interface {p1, v0}, Landroid/location/IGpsMeasurementsListener;->onGpsMeasurementsReceived(Landroid/location/GpsMeasurementsEvent;)V

    #@5
    .line 44
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    check-cast p1, Landroid/location/IGpsMeasurementsListener;

    #@2
    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;->execute(Landroid/location/IGpsMeasurementsListener;)V

    #@5
    return-void
.end method
