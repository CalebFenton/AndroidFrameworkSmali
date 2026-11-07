.class public abstract Landroid/os/UpdateEngineStableCallback;
.super Ljava/lang/Object;
.source "UpdateEngineStableCallback.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onPayloadApplicationComplete(I)V
.end method

.method public abstract blacklist onStatusUpdate(IF)V
.end method
