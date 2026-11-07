.class public interface abstract Landroid/app/IScreenCaptureObserver;
.super Ljava/lang/Object;
.source "IScreenCaptureObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IScreenCaptureObserver$Stub;,
        Landroid/app/IScreenCaptureObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IScreenCaptureObserver"


# virtual methods
.method public abstract blacklist onScreenCaptured()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
