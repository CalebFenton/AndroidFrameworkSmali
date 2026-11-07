.class public interface abstract Landroid/media/IPreferredMixerAttributesDispatcher;
.super Ljava/lang/Object;
.source "IPreferredMixerAttributesDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPreferredMixerAttributesDispatcher$Stub;,
        Landroid/media/IPreferredMixerAttributesDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IPreferredMixerAttributesDispatcher"


# virtual methods
.method public abstract blacklist dispatchPrefMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
