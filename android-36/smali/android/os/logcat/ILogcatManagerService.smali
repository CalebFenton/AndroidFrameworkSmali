.class public interface abstract Landroid/os/logcat/ILogcatManagerService;
.super Ljava/lang/Object;
.source "ILogcatManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/logcat/ILogcatManagerService$Stub;,
        Landroid/os/logcat/ILogcatManagerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.logcat.ILogcatManagerService"


# virtual methods
.method public abstract blacklist finishThread(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startThread(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
