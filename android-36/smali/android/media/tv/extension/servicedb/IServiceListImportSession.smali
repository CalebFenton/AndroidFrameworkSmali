.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListImportSession;
.super Ljava/lang/Object;
.source "IServiceListImportSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListImportSession$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListImportSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListImportSession"


# virtual methods
.method public abstract blacklist importServiceList(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist preload(Landroid/os/ParcelFileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist release()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
