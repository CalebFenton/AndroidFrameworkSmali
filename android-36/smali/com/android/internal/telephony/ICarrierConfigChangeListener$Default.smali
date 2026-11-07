.class public Lcom/android/internal/telephony/ICarrierConfigChangeListener$Default;
.super Ljava/lang/Object;
.source "ICarrierConfigChangeListener.java"

# interfaces
.implements Lcom/android/internal/telephony/ICarrierConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICarrierConfigChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCarrierConfigChanged(IIII)V
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "carrierId"    # I
    .param p4, "specificCarrierId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
