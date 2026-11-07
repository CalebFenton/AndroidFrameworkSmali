.class public interface abstract Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
.super Ljava/lang/Object;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;,
        Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "f2ec48a74490bf9d5675f48cb89ecdb3e5cd9c35"

.field public static final blacklist VERSION:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 249
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$soundtrigger3$ISoundTriggerHwCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist modelUnloaded(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
