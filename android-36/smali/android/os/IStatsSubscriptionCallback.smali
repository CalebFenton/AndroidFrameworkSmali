.class public interface abstract Landroid/os/IStatsSubscriptionCallback;
.super Ljava/lang/Object;
.source "IStatsSubscriptionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsSubscriptionCallback$Stub;,
        Landroid/os/IStatsSubscriptionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsSubscriptionCallback"


# virtual methods
.method public abstract blacklist onSubscriptionData(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
