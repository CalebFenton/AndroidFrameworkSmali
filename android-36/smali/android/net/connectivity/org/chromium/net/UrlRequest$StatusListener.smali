.class public abstract Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/UrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onStatus(I)V
.end method
