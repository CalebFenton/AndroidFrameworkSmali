.class public interface abstract Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback;
.super Ljava/lang/Object;
.source "IGetInfoRecordedContentsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback$Stub;,
        Landroid/media/tv/extension/pvr/IGetInfoRecordedContentsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.pvr.IGetInfoRecordedContentsCallback"


# virtual methods
.method public abstract blacklist onRecordedContentsGetInfo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
