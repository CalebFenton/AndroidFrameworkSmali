.class public interface abstract Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;
.super Ljava/lang/Object;
.source "ICamHostControlAskReleaseReplyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback$Stub;,
        Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlAskReleaseReplyCallback"


# virtual methods
.method public abstract blacklist onAskReleaseReply(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
