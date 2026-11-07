.class public interface abstract Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor;
.super Ljava/lang/Object;
.source "IDownloadableRatingTableMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub;,
        Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.rating.IDownloadableRatingTableMonitor"


# virtual methods
.method public abstract blacklist getTable()[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
