.class public interface abstract Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
.super Ljava/lang/Object;
.source "IVirtualDeviceSoundEffectListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;,
        Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.IVirtualDeviceSoundEffectListener"


# virtual methods
.method public abstract blacklist onPlaySoundEffect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
