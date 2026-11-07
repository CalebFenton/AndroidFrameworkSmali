.class public interface abstract Landroid/media/tv/extension/scan/IHDPlusInfo;
.super Ljava/lang/Object;
.source "IHDPlusInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IHDPlusInfo$Stub;,
        Landroid/media/tv/extension/scan/IHDPlusInfo$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IHDPlusInfo"


# virtual methods
.method public abstract blacklist setHDPlusInfo(ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
