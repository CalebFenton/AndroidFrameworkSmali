.class Lcom/android/server/location/GpsStatusListenerHelper$1;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsStatusListenerHelper;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$1;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

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
    check-cast p1, Landroid/location/IGpsStatusListener;

    #@2
    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$1;->execute(Landroid/location/IGpsStatusListener;)V

    #@5
    return-void
.end method
