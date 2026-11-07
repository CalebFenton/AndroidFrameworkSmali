.class public interface abstract Landroid/net/wifi/IBooleanListener;
.super Ljava/lang/Object;
.source "IBooleanListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IBooleanListener$Stub;,
        Landroid/net/wifi/IBooleanListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IBooleanListener"


# virtual methods
.method public abstract blacklist onResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
