.class public interface abstract Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
.super Ljava/lang/Object;
.source "IInjectGlobalEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;,
        Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger_middleware.IInjectGlobalEvent"


# virtual methods
.method public abstract blacklist setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist triggerOnResourcesAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist triggerRestart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
