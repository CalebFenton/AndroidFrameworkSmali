.class Lcom/android/server/location/GnssStatusListenerHelper$1;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$1;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStarted()V

    #@3
    .line 50
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
    .line 50
    check-cast p1, Landroid/location/IGnssStatusListener;

    #@2
    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$1;->execute(Landroid/location/IGnssStatusListener;)V

    #@5
    return-void
.end method
