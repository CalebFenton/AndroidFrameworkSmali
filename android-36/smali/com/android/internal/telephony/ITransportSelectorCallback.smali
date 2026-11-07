.class public interface abstract Lcom/android/internal/telephony/ITransportSelectorCallback;
.super Ljava/lang/Object;
.source "ITransportSelectorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;,
        Lcom/android/internal/telephony/ITransportSelectorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITransportSelectorCallback"


# virtual methods
.method public abstract blacklist onCreated(Lcom/android/internal/telephony/IDomainSelector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSelectionTerminated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWlanSelected(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
