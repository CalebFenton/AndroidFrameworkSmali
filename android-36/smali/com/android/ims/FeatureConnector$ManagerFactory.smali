.class public interface abstract Lcom/android/ims/FeatureConnector$ManagerFactory;
.super Ljava/lang/Object;
.source "FeatureConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/FeatureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManagerFactory"
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
.method public abstract blacklist createManager(Landroid/content/Context;I)Lcom/android/ims/FeatureUpdates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TU;"
        }
    .end annotation
.end method
