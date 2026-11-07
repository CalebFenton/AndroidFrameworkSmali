.class public interface abstract Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
.super Ljava/lang/Object;
.source "IProcessingUpdateStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;,
        Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.ondeviceintelligence.IProcessingUpdateStatusCallback"


# virtual methods
.method public abstract blacklist onFailure(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
