.class public interface abstract Landroid/media/tv/extension/signal/IAnalogAudioInfo;
.super Ljava/lang/Object;
.source "IAnalogAudioInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IAnalogAudioInfo$Stub;,
        Landroid/media/tv/extension/signal/IAnalogAudioInfo$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IAnalogAudioInfo"


# virtual methods
.method public abstract blacklist getAnalogAudioInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
