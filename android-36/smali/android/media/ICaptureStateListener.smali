.class public interface abstract Landroid/media/ICaptureStateListener;
.super Ljava/lang/Object;
.source "ICaptureStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ICaptureStateListener$Stub;,
        Landroid/media/ICaptureStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ICaptureStateListener"


# virtual methods
.method public abstract blacklist setCaptureState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
