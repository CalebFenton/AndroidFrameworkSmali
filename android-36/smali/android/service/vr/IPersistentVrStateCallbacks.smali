.class public interface abstract Landroid/service/vr/IPersistentVrStateCallbacks;
.super Ljava/lang/Object;
.source "IPersistentVrStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IPersistentVrStateCallbacks$Stub;,
        Landroid/service/vr/IPersistentVrStateCallbacks$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onPersistentVrStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
