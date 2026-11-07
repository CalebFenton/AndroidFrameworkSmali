.class public abstract Landroid/net/connectivity/org/chromium/net/UploadDataSink;
.super Ljava/lang/Object;
.source "UploadDataSink.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onReadError(Ljava/lang/Exception;)V
.end method

.method public abstract blacklist onReadSucceeded(Z)V
.end method

.method public abstract blacklist onRewindError(Ljava/lang/Exception;)V
.end method

.method public abstract blacklist onRewindSucceeded()V
.end method
