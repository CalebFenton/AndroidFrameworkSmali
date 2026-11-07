.class public interface abstract Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract blacklist onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onError(Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist onPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
.end method
