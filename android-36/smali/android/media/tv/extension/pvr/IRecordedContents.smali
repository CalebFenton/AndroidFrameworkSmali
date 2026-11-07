.class public interface abstract Landroid/media/tv/extension/pvr/IRecordedContents;
.super Ljava/lang/Object;
.source "IRecordedContents.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/pvr/IRecordedContents$Stub;,
        Landroid/media/tv/extension/pvr/IRecordedContents$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.pvr.IRecordedContents"


# virtual methods
.method public abstract blacklist deleteRecordedContents([Ljava/lang/String;Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRecordedContentsLockInfoAsync(Ljava/lang/String;Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRecordedContentsLockInfoSync(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
