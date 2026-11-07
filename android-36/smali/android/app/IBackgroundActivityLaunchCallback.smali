.class public interface abstract Landroid/app/IBackgroundActivityLaunchCallback;
.super Ljava/lang/Object;
.source "IBackgroundActivityLaunchCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackgroundActivityLaunchCallback$Stub;,
        Landroid/app/IBackgroundActivityLaunchCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IBackgroundActivityLaunchCallback"


# virtual methods
.method public abstract blacklist onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
