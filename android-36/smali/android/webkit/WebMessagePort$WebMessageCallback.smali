.class public abstract Landroid/webkit/WebMessagePort$WebMessageCallback;
.super Ljava/lang/Object;
.source "WebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebMessagePort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WebMessageCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .registers 3
    .param p1, "port"    # Landroid/webkit/WebMessagePort;
    .param p2, "message"    # Landroid/webkit/WebMessage;

    .line 68
    return-void
.end method
