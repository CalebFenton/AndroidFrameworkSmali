.class public interface abstract Landroid/media/tv/extension/analog/IAnalogAttributeInterface;
.super Ljava/lang/Object;
.source "IAnalogAttributeInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;,
        Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.analog.IAnalogAttributeInterface"


# virtual methods
.method public abstract blacklist getColorSystemCapability()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setColorSystemCapability([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
