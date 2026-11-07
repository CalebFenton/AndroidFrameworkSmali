.class public interface abstract Landroid/media/tv/extension/cam/ICamPinStatusListener;
.super Ljava/lang/Object;
.source "ICamPinStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamPinStatusListener$Stub;,
        Landroid/media/tv/extension/cam/ICamPinStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamPinStatusListener"


# virtual methods
.method public abstract blacklist onCamPinValidationReply(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
