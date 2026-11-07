.class public interface abstract Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlag;
.super Ljava/lang/Object;
.source "ICamHostControlTuneQuietlyFlag.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlag$Stub;,
        Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlag$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlTuneQuietlyFlag"


# virtual methods
.method public abstract blacklist addHcTuneQuietlyFlagListener(Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHcTuneQuietlyFlag(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeHcTuneQuietlyFlagListener(Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
