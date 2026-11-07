.class public interface abstract Landroid/provider/IOpenAssetFileCallback;
.super Ljava/lang/Object;
.source "IOpenAssetFileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/IOpenAssetFileCallback$Stub;,
        Landroid/provider/IOpenAssetFileCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.IOpenAssetFileCallback"


# virtual methods
.method public abstract blacklist onFailure(Landroid/provider/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/content/res/AssetFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
