.class public interface abstract Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectorFactory"
.end annotation


# virtual methods
.method public abstract blacklist create(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/ims/FeatureConnector$Listener<",
            "Lcom/android/ims/ImsManager;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end method
