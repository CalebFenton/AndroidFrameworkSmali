.class public interface abstract Landroid/service/dreams/DreamService$WakefulHandler;
.super Ljava/lang/Object;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WakefulHandler"
.end annotation


# virtual methods
.method public abstract blacklist getHandler()Landroid/os/Handler;
.end method

.method public abstract blacklist postIfNeeded(Ljava/lang/Runnable;)V
.end method
