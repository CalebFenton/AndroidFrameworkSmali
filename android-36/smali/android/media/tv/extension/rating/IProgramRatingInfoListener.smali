.class public interface abstract Landroid/media/tv/extension/rating/IProgramRatingInfoListener;
.super Ljava/lang/Object;
.source "IProgramRatingInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IProgramRatingInfoListener$Stub;,
        Landroid/media/tv/extension/rating/IProgramRatingInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IProgramRatingInfoListener"


# virtual methods
.method public abstract blacklist onProgramInfoChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
