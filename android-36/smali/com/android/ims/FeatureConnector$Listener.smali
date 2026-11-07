.class public interface abstract Lcom/android/ims/FeatureConnector$Listener;
.super Ljava/lang/Object;
.source "FeatureConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/FeatureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/android/ims/FeatureUpdates;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract blacklist connectionUnavailable(I)V
.end method
