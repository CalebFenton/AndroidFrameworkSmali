.class public interface abstract Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;
.super Ljava/lang/Object;
.source "UceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestManagerFactory"
.end annotation


# virtual methods
.method public abstract blacklist createRequestManager(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end method
