.class public interface abstract Landroid/app/IForegroundServiceObserver;
.super Ljava/lang/Object;
.source "IForegroundServiceObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IForegroundServiceObserver$Stub;,
        Landroid/app/IForegroundServiceObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IForegroundServiceObserver"


# virtual methods
.method public abstract blacklist onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
