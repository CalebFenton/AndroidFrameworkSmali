.class public interface abstract Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdate;
.super Ljava/lang/Object;
.source "IScanBackgroundServiceUpdate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdate$Stub;,
        Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdate$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdate"


# virtual methods
.method public abstract blacklist addBackgroundServiceUpdateListener(Ljava/lang/String;Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeBackgroundServiceUpdateListener(Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
