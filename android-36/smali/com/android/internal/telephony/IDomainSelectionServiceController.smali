.class public interface abstract Lcom/android/internal/telephony/IDomainSelectionServiceController;
.super Ljava/lang/Object;
.source "IDomainSelectionServiceController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;,
        Lcom/android/internal/telephony/IDomainSelectionServiceController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IDomainSelectionServiceController"


# virtual methods
.method public abstract blacklist selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateBarringInfo(IILandroid/telephony/BarringInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateServiceState(IILandroid/telephony/ServiceState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
