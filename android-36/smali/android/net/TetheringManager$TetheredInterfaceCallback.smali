.class public interface abstract Landroid/net/TetheringManager$TetheredInterfaceCallback;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TetheredInterfaceCallback"
.end annotation


# virtual methods
.method public abstract blacklist onAvailable(Ljava/lang/String;)V
.end method

.method public abstract blacklist onUnavailable()V
.end method
