.class public interface abstract Landroid/media/tv/extension/rating/IVbiRatingInterface;
.super Ljava/lang/Object;
.source "IVbiRatingInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IVbiRatingInterface$Stub;,
        Landroid/media/tv/extension/rating/IVbiRatingInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IVbiRatingInterface"


# virtual methods
.method public abstract blacklist addVbiRatingListener(Ljava/lang/String;Landroid/media/tv/extension/rating/IVbiRatingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVbiRating(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeVbiRatingListener(Landroid/media/tv/extension/rating/IVbiRatingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
