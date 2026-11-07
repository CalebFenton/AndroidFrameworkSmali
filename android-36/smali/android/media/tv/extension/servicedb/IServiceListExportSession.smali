.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListExportSession;
.super Ljava/lang/Object;
.source "IServiceListExportSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListExportSession$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListExportSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListExportSession"


# virtual methods
.method public abstract blacklist exportServiceList(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
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
