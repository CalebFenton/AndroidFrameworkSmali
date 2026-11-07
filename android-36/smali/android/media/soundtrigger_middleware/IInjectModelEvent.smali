.class public interface abstract Landroid/media/soundtrigger_middleware/IInjectModelEvent;
.super Ljava/lang/Object;
.source "IInjectModelEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;,
        Landroid/media/soundtrigger_middleware/IInjectModelEvent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger_middleware.IInjectModelEvent"


# virtual methods
.method public abstract blacklist triggerUnloadModel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
