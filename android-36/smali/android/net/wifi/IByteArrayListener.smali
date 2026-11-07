.class public interface abstract Landroid/net/wifi/IByteArrayListener;
.super Ljava/lang/Object;
.source "IByteArrayListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IByteArrayListener$Stub;,
        Landroid/net/wifi/IByteArrayListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IByteArrayListener"


# virtual methods
.method public abstract blacklist onResult([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
