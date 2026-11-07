.class public interface abstract Landroid/media/tv/extension/rating/IPmtRatingInterface;
.super Ljava/lang/Object;
.source "IPmtRatingInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IPmtRatingInterface$Stub;,
        Landroid/media/tv/extension/rating/IPmtRatingInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IPmtRatingInterface"


# virtual methods
.method public abstract blacklist addPmtRatingListener(Ljava/lang/String;Landroid/media/tv/extension/rating/IPmtRatingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPmtRating(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removePmtRatingListener(Landroid/media/tv/extension/rating/IPmtRatingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
