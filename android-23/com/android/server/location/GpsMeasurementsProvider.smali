.class public abstract Lcom/android/server/location/GpsMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsMeasurementsProvider"


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "GpsMeasurementsProvider"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    #@6
    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "listener"    # Landroid/os/IInterface;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGpsMeasurementsListener;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 65
    packed-switch p1, :pswitch_data_0

    #@4
    .line 80
    const-string/jumbo v1, "GpsMeasurementsProvider"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unhandled addListener result: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 81
    return-object v4

    #@1f
    .line 67
    :pswitch_0
    const/4 v0, 0x1

    #@20
    .line 83
    .local v0, "status":I
    :goto_0
    new-instance v1, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;

    #@22
    invoke-direct {v1, v0}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    #@25
    return-object v1

    #@26
    .line 72
    .end local v0    # "status":I
    :pswitch_1
    const/4 v0, 0x0

    #@27
    .line 73
    .restart local v0    # "status":I
    goto :goto_0

    #@28
    .line 75
    .end local v0    # "status":I
    :pswitch_2
    const/4 v0, 0x2

    #@29
    .line 76
    .restart local v0    # "status":I
    goto :goto_0

    #@2a
    .line 78
    .end local v0    # "status":I
    :pswitch_3
    return-object v4

    #@2b
    .line 65
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0
    .param p1, "isGpsMeasurementsSupported"    # Z

    #@0
    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->setSupported(Z)V

    #@3
    .line 53
    invoke-virtual {p0}, Lcom/android/server/location/GpsMeasurementsProvider;->updateResult()V

    #@6
    .line 51
    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/server/location/GpsMeasurementsProvider;->tryUpdateRegistrationWithService()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 58
    invoke-virtual {p0}, Lcom/android/server/location/GpsMeasurementsProvider;->updateResult()V

    #@9
    .line 56
    :cond_0
    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    #@0
    .prologue
    .line 42
    new-instance v0, Lcom/android/server/location/GpsMeasurementsProvider$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V

    #@5
    .line 48
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGpsMeasurementsListener;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    #@8
    .line 40
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    #@3
    return-void
.end method
