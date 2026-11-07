.class public interface abstract Landroid/media/tv/extension/rating/IVbiRatingListener;
.super Ljava/lang/Object;
.source "IVbiRatingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IVbiRatingListener$Stub;,
        Landroid/media/tv/extension/rating/IVbiRatingListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IVbiRatingListener"


# virtual methods
.method public abstract blacklist onVbiRatingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
