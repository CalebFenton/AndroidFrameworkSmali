.class public interface abstract Landroid/media/tv/extension/scan/ILcnConflict;
.super Ljava/lang/Object;
.source "ILcnConflict.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ILcnConflict$Stub;,
        Landroid/media/tv/extension/scan/ILcnConflict$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnConflict"


# virtual methods
.method public abstract blacklist getLcnConflictGroups()[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resolveLcnConflict([Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setListener(Landroid/media/tv/extension/scan/ILcnConflictListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
