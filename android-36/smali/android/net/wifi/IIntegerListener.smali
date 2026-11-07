.class public interface abstract Landroid/net/wifi/IIntegerListener;
.super Ljava/lang/Object;
.source "IIntegerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IIntegerListener$Stub;,
        Landroid/net/wifi/IIntegerListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IIntegerListener"


# virtual methods
.method public abstract blacklist onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
