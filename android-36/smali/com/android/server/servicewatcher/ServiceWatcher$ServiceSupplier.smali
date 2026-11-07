.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TBoundServiceInfo:",
        "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist alertUnstableService(Ljava/lang/String;)V
.end method

.method public abstract blacklist getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTBoundServiceInfo;"
        }
    .end annotation
.end method

.method public abstract blacklist hasMatchingService()Z
.end method

.method public abstract blacklist register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V
.end method

.method public abstract blacklist unregister()V
.end method
