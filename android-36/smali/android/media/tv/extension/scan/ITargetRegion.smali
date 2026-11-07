.class public interface abstract Landroid/media/tv/extension/scan/ITargetRegion;
.super Ljava/lang/Object;
.source "ITargetRegion.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ITargetRegion$Stub;,
        Landroid/media/tv/extension/scan/ITargetRegion$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.ITargetRegion"


# virtual methods
.method public abstract blacklist getTargetRegions()[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setListener(Landroid/media/tv/extension/scan/ITargetRegionListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setTargetRegion(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
