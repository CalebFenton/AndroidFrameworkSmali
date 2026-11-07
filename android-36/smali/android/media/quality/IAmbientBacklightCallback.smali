.class public interface abstract Landroid/media/quality/IAmbientBacklightCallback;
.super Ljava/lang/Object;
.source "IAmbientBacklightCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IAmbientBacklightCallback$Stub;,
        Landroid/media/quality/IAmbientBacklightCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.quality.IAmbientBacklightCallback"


# virtual methods
.method public abstract blacklist onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
