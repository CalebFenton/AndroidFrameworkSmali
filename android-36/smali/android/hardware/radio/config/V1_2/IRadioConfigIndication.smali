.class public interface abstract Landroid/hardware/radio/config/V1_2/IRadioConfigIndication;
.super Ljava/lang/Object;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_0/IRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;
    }
.end annotation


# virtual methods
.method public abstract blacklist simSlotsStatusChanged_1_2(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_2/SimSlotStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
