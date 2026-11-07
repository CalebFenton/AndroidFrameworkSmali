.class public interface abstract Lcom/android/net/IProxyCallback;
.super Ljava/lang/Object;
.source "IProxyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/IProxyCallback$Stub;,
        Lcom/android/net/IProxyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.net.IProxyCallback"


# virtual methods
.method public abstract blacklist getProxyPort(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
