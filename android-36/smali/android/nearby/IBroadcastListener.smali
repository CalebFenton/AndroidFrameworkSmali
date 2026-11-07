.class public interface abstract Landroid/nearby/IBroadcastListener;
.super Ljava/lang/Object;
.source "IBroadcastListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/IBroadcastListener$Stub;,
        Landroid/nearby/IBroadcastListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nearby.IBroadcastListener"


# virtual methods
.method public abstract blacklist onStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
