.class public interface abstract Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
.super Ljava/lang/Object;
.source "IVirtualDeviceIntentInterceptor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;,
        Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.IVirtualDeviceIntentInterceptor"


# virtual methods
.method public abstract blacklist onIntentIntercepted(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
