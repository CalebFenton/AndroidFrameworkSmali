.class public interface abstract Ldalvik/system/BlockGuard$VmPolicy;
.super Ljava/lang/Object;
.source "BlockGuard.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VmPolicy"
.end annotation


# virtual methods
.method public abstract blacklist test-api onPathAccess(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method
