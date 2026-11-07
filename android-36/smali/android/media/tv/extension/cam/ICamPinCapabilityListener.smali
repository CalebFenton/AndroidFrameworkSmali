.class public interface abstract Landroid/media/tv/extension/cam/ICamPinCapabilityListener;
.super Ljava/lang/Object;
.source "ICamPinCapabilityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamPinCapabilityListener$Stub;,
        Landroid/media/tv/extension/cam/ICamPinCapabilityListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamPinCapabilityListener"


# virtual methods
.method public abstract blacklist onCamPinCapabilityChanged(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
