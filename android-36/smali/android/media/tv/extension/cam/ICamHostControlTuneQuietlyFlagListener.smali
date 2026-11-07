.class public interface abstract Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;
.super Ljava/lang/Object;
.source "ICamHostControlTuneQuietlyFlagListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener$Stub;,
        Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlTuneQuietlyFlagListener"


# virtual methods
.method public abstract blacklist onHcTuneQuietlyFlagChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
