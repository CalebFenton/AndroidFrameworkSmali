.class public abstract Landroid/webkit/WebMessagePort;
.super Ljava/lang/Object;
.source "WebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebMessagePort$WebMessageCallback;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist close()V
.end method

.method public abstract whitelist postMessage(Landroid/webkit/WebMessage;)V
.end method

.method public abstract whitelist setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V
.end method

.method public abstract whitelist setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V
.end method
