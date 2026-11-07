.class public interface abstract Landroid/media/tv/extension/rating/IProgramRatingInfo;
.super Ljava/lang/Object;
.source "IProgramRatingInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IProgramRatingInfo$Stub;,
        Landroid/media/tv/extension/rating/IProgramRatingInfo$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IProgramRatingInfo"


# virtual methods
.method public abstract blacklist addProgramRatingInfoListener(Ljava/lang/String;Landroid/media/tv/extension/rating/IProgramRatingInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getProgramRatingInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeProgramRatingInfoListener(Landroid/media/tv/extension/rating/IProgramRatingInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
