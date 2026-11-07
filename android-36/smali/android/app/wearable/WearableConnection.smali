.class public interface abstract Landroid/app/wearable/WearableConnection;
.super Ljava/lang/Object;
.source "WearableConnection.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist getConnection()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract whitelist getMetadata()Landroid/os/PersistableBundle;
.end method

.method public abstract whitelist onConnectionAccepted()V
.end method

.method public abstract whitelist onError(I)V
.end method
