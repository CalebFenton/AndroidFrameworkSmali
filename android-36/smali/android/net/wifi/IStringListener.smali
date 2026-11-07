.class public interface abstract Landroid/net/wifi/IStringListener;
.super Ljava/lang/Object;
.source "IStringListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IStringListener$Stub;,
        Landroid/net/wifi/IStringListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IStringListener"


# virtual methods
.method public abstract blacklist onResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
