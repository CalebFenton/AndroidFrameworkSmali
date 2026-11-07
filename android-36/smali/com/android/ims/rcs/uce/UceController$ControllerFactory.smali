.class public interface abstract Lcom/android/ims/rcs/uce/UceController$ControllerFactory;
.super Ljava/lang/Object;
.source "UceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerFactory"
.end annotation


# virtual methods
.method public abstract blacklist createEabController(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)Lcom/android/ims/rcs/uce/eab/EabController;
.end method

.method public abstract blacklist createOptionsController(Landroid/content/Context;I)Lcom/android/ims/rcs/uce/options/OptionsController;
.end method

.method public abstract blacklist createPublishController(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;
.end method

.method public abstract blacklist createSubscribeController(Landroid/content/Context;I)Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;
.end method
