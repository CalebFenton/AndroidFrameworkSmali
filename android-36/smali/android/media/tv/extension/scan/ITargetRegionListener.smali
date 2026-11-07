.class public interface abstract Landroid/media/tv/extension/scan/ITargetRegionListener;
.super Ljava/lang/Object;
.source "ITargetRegionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ITargetRegionListener$Stub;,
        Landroid/media/tv/extension/scan/ITargetRegionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.ITargetRegionListener"


# virtual methods
.method public abstract blacklist onDetectTargetRegion(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
