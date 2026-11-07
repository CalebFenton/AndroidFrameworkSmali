.class public interface abstract Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;
.super Ljava/lang/Object;
.source "IGetAvailableMemoryInBytesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetAvailableMemoryInBytesCallback$Stub;,
        Landroid/service/euicc/IGetAvailableMemoryInBytesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IGetAvailableMemoryInBytesCallback"


# virtual methods
.method public abstract blacklist onSuccess(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUnsupportedOperationException(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
