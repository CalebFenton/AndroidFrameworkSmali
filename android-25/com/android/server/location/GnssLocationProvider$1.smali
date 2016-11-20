.class Lcom/android/server/location/GnssLocationProvider$1;
.super Landroid/location/IGnssStatusProvider$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    #@0
    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/location/IGnssStatusProvider$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->addListener(Landroid/os/IInterface;)Z

    #@9
    .line 422
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->removeListener(Landroid/os/IInterface;)V

    #@9
    .line 427
    return-void
.end method
