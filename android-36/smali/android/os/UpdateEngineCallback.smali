.class public abstract Landroid/os/UpdateEngineCallback;
.super Ljava/lang/Object;
.source "UpdateEngineCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onPayloadApplicationComplete(I)V
.end method

.method public abstract whitelist onStatusUpdate(IF)V
.end method
