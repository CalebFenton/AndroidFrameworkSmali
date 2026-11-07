.class public interface abstract Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;
.super Ljava/lang/Object;
.source "IDataServiceSignalInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;,
        Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.teletext.IDataServiceSignalInfo"


# virtual methods
.method public abstract blacklist addDataServiceSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDataServiceSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeDataServiceSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
