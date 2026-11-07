.class public interface abstract Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;
.super Ljava/lang/Object;
.source "IDataServiceSignalInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener$Stub;,
        Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.teletext.IDataServiceSignalInfoListener"


# virtual methods
.method public abstract blacklist onDataServiceSignalInfoChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
