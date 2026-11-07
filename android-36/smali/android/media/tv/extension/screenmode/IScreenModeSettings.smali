.class public interface abstract Landroid/media/tv/extension/screenmode/IScreenModeSettings;
.super Ljava/lang/Object;
.source "IScreenModeSettings.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;,
        Landroid/media/tv/extension/screenmode/IScreenModeSettings$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.screenmode.IScreenModeSettings"


# virtual methods
.method public abstract blacklist getOverScanIndex(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportApplyOverScan(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setScreenModeSettings(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
