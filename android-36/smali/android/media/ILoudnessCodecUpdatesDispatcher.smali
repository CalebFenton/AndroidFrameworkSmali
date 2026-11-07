.class public interface abstract Landroid/media/ILoudnessCodecUpdatesDispatcher;
.super Ljava/lang/Object;
.source "ILoudnessCodecUpdatesDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;,
        Landroid/media/ILoudnessCodecUpdatesDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ILoudnessCodecUpdatesDispatcher"


# virtual methods
.method public abstract blacklist dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
