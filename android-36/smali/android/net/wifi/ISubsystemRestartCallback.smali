.class public interface abstract Landroid/net/wifi/ISubsystemRestartCallback;
.super Ljava/lang/Object;
.source "ISubsystemRestartCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISubsystemRestartCallback$Stub;,
        Landroid/net/wifi/ISubsystemRestartCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ISubsystemRestartCallback"


# virtual methods
.method public abstract blacklist onSubsystemRestarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSubsystemRestarting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
