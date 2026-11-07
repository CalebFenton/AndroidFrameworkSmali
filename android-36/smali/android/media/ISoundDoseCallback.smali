.class public interface abstract Landroid/media/ISoundDoseCallback;
.super Ljava/lang/Object;
.source "ISoundDoseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISoundDoseCallback$Stub;,
        Landroid/media/ISoundDoseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ISoundDoseCallback"


# virtual methods
.method public abstract blacklist onMomentaryExposure(FI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNewCsdValue(F[Landroid/media/SoundDoseRecord;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
