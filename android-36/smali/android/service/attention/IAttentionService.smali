.class public interface abstract Landroid/service/attention/IAttentionService;
.super Ljava/lang/Object;
.source "IAttentionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/IAttentionService$Stub;,
        Landroid/service/attention/IAttentionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.attention.IAttentionService"


# virtual methods
.method public abstract blacklist cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist checkAttention(Landroid/service/attention/IAttentionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStopProximityUpdates()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
