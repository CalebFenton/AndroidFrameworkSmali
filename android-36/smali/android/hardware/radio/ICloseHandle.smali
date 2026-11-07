.class public interface abstract Landroid/hardware/radio/ICloseHandle;
.super Ljava/lang/Object;
.source "ICloseHandle.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ICloseHandle$Stub;,
        Landroid/hardware/radio/ICloseHandle$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
