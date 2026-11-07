.class public interface abstract Landroid/net/wifi/ILastCallerListener;
.super Ljava/lang/Object;
.source "ILastCallerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ILastCallerListener$Stub;,
        Landroid/net/wifi/ILastCallerListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ILastCallerListener"


# virtual methods
.method public abstract blacklist onResult(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
