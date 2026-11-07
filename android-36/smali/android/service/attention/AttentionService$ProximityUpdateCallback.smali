.class public final Landroid/service/attention/AttentionService$ProximityUpdateCallback;
.super Ljava/lang/Object;
.source "AttentionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/AttentionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProximityUpdateCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/attention/IProximityUpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/service/attention/IProximityUpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/service/attention/IProximityUpdateCallback;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/attention/AttentionService$ProximityUpdateCallback;->mCallback:Ljava/lang/ref/WeakReference;

    .line 222
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/attention/IProximityUpdateCallback;Landroid/service/attention/AttentionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/attention/AttentionService$ProximityUpdateCallback;-><init>(Landroid/service/attention/IProximityUpdateCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onProximityUpdate(D)V
    .registers 4
    .param p1, "distance"    # D

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/service/attention/AttentionService$ProximityUpdateCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 232
    iget-object v0, p0, Landroid/service/attention/AttentionService$ProximityUpdateCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/attention/IProximityUpdateCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/attention/IProximityUpdateCallback;->onProximityUpdate(D)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 236
    :cond_13
    goto :goto_18

    .line 234
    :catch_14
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method
