.class public final Landroid/service/attention/AttentionService$AttentionCallback;
.super Ljava/lang/Object;
.source "AttentionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/AttentionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttentionCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/attention/IAttentionCallback;


# direct methods
.method private constructor blacklist <init>(Landroid/service/attention/IAttentionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/attention/IAttentionCallback;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/service/attention/AttentionService$AttentionCallback;->mCallback:Landroid/service/attention/IAttentionCallback;

    .line 190
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/attention/IAttentionCallback;Landroid/service/attention/AttentionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/attention/AttentionService$AttentionCallback;-><init>(Landroid/service/attention/IAttentionCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onFailure(I)V
    .registers 3
    .param p1, "error"    # I

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/service/attention/AttentionService$AttentionCallback;->mCallback:Landroid/service/attention/IAttentionCallback;

    invoke-interface {v0, p1}, Landroid/service/attention/IAttentionCallback;->onFailure(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 212
    goto :goto_a

    .line 210
    :catch_6
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist onSuccess(IJ)V
    .registers 5
    .param p1, "result"    # I
    .param p2, "timestamp"    # J

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/service/attention/AttentionService$AttentionCallback;->mCallback:Landroid/service/attention/IAttentionCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/attention/IAttentionCallback;->onSuccess(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 203
    goto :goto_a

    .line 201
    :catch_6
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
