.class public interface abstract Landroid/companion/virtual/audio/IAudioRoutingCallback;
.super Ljava/lang/Object;
.source "IAudioRoutingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;,
        Landroid/companion/virtual/audio/IAudioRoutingCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.audio.IAudioRoutingCallback"


# virtual methods
.method public abstract blacklist onAppsNeedingAudioRoutingChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
