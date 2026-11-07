.class public interface abstract Landroid/media/IRecordingConfigDispatcher;
.super Ljava/lang/Object;
.source "IRecordingConfigDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRecordingConfigDispatcher$Stub;,
        Landroid/media/IRecordingConfigDispatcher$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o dispatchRecordingConfigChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
