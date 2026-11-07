.class public interface abstract Landroid/media/ISpatializerCallback;
.super Ljava/lang/Object;
.source "ISpatializerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerCallback$Stub;,
        Landroid/media/ISpatializerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerCallback"


# virtual methods
.method public abstract blacklist dispatchSpatializerAvailableChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist dispatchSpatializerEnabledChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
