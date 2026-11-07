.class public interface abstract Landroid/provider/ICloudMediaSurfaceStateChangedCallback;
.super Ljava/lang/Object;
.source "ICloudMediaSurfaceStateChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ICloudMediaSurfaceStateChangedCallback$Stub;,
        Landroid/provider/ICloudMediaSurfaceStateChangedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.ICloudMediaSurfaceStateChangedCallback"


# virtual methods
.method public abstract blacklist setPlaybackState(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
