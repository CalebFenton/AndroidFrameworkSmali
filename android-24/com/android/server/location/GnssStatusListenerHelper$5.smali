.class Lcom/android/server/location/GnssStatusListenerHelper$5;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$nmea:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;
    .param p2, "val$timestamp"    # J
    .param p4, "val$nmea"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    #@2
    iput-wide p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$timestamp:J

    #@4
    iput-object p4, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$timestamp:J

    #@2
    iget-object v2, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    #@4
    invoke-interface {p1, v0, v1, v2}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    #@7
    .line 98
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
    .line 98
    check-cast p1, Landroid/location/IGnssStatusListener;

    #@2
    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$5;->execute(Landroid/location/IGnssStatusListener;)V

    #@5
    return-void
.end method
