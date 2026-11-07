.class public abstract Landroid/app/backup/SelectBackupTransportCallback;
.super Ljava/lang/Object;
.source "SelectBackupTransportCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFailure(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 43
    return-void
.end method

.method public whitelist onSuccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "transportName"    # Ljava/lang/String;

    .line 36
    return-void
.end method
