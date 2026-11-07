.class public interface abstract Landroid/provider/IOpenFileCallback;
.super Ljava/lang/Object;
.source "IOpenFileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/IOpenFileCallback$Stub;,
        Landroid/provider/IOpenFileCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.IOpenFileCallback"


# virtual methods
.method public abstract blacklist onFailure(Landroid/provider/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
