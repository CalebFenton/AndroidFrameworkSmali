.class public interface abstract Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback;
.super Ljava/lang/Object;
.source "IDeleteRecordedContentsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback$Stub;,
        Landroid/media/tv/extension/pvr/IDeleteRecordedContentsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.pvr.IDeleteRecordedContentsCallback"


# virtual methods
.method public abstract blacklist onRecordedContentsDeleted([Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
