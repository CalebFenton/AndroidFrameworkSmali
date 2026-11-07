.class public interface abstract Landroid/service/vr/IVrListener;
.super Ljava/lang/Object;
.source "IVrListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrListener$Stub;,
        Landroid/service/vr/IVrListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
