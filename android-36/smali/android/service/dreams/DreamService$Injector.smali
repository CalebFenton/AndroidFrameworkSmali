.class public interface abstract Landroid/service/dreams/DreamService$Injector;
.super Ljava/lang/Object;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract blacklist createOverlayConnection(Landroid/content/ComponentName;Ljava/lang/Runnable;)Landroid/service/dreams/DreamOverlayConnectionHandler;
.end method

.method public abstract blacklist getDreamActivityComponent()Landroid/content/ComponentName;
.end method

.method public abstract blacklist getDreamComponent()Landroid/content/ComponentName;
.end method

.method public abstract blacklist getDreamManager()Landroid/service/dreams/IDreamManager;
.end method

.method public abstract blacklist getDreamPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract blacklist getResources()Landroid/content/res/Resources;
.end method

.method public abstract blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
.end method

.method public abstract blacklist getWakefulHandler()Landroid/service/dreams/DreamService$WakefulHandler;
.end method

.method public abstract blacklist init(Landroid/content/Context;)V
.end method
