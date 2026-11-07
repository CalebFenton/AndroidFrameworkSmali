.class public interface abstract Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;
.super Ljava/lang/Object;
.source "IAcknowledgeEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;,
        Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger_middleware.IAcknowledgeEvent"


# virtual methods
.method public abstract blacklist eventReceived()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
