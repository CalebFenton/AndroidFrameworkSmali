.class Lcom/android/server/location/GpsStatusListenerHelper$3;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$timeToFirstFix:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsStatusListenerHelper;
    .param p2, "val$timeToFirstFix"    # I

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    #@2
    iput p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$timeToFirstFix:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/location/GpsStatusListenerHelper$3;->val$timeToFirstFix:I

    #@2
    invoke-interface {p1, v0}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V

    #@5
    .line 68
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
    .line 68
    check-cast p1, Landroid/location/IGpsStatusListener;

    #@2
    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$3;->execute(Landroid/location/IGpsStatusListener;)V

    #@5
    return-void
.end method
