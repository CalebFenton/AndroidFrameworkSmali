.class public interface abstract Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityListener"
.end annotation


# virtual methods
.method public whitelist onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "intentSender"    # Landroid/content/IntentSender;

    .line 1252
    return-void
.end method

.method public abstract whitelist onDisplayEmpty(I)V
.end method

.method public whitelist onSecureWindowHidden(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1283
    return-void
.end method

.method public whitelist onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1268
    return-void
.end method

.method public abstract whitelist onTopActivityChanged(ILandroid/content/ComponentName;)V
.end method

.method public whitelist onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 1225
    return-void
.end method
