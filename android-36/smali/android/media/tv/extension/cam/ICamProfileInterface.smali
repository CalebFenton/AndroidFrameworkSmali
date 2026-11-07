.class public interface abstract Landroid/media/tv/extension/cam/ICamProfileInterface;
.super Ljava/lang/Object;
.source "ICamProfileInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamProfileInterface$Stub;,
        Landroid/media/tv/extension/cam/ICamProfileInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamProfileInterface"


# virtual methods
.method public abstract blacklist getCamServiceUpdateInfo(I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestResendProfileInfoBroadcastACON()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
