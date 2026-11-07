.class public interface abstract Landroid/media/tv/extension/rating/IPmtRatingListener;
.super Ljava/lang/Object;
.source "IPmtRatingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IPmtRatingListener$Stub;,
        Landroid/media/tv/extension/rating/IPmtRatingListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IPmtRatingListener"


# virtual methods
.method public abstract blacklist onPmtRatingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
