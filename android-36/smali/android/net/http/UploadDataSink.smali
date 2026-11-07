.class public abstract Landroid/net/http/UploadDataSink;
.super Ljava/lang/Object;
.source "UploadDataSink.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onReadError(Ljava/lang/Exception;)V
.end method

.method public abstract whitelist onReadSucceeded(Z)V
.end method

.method public abstract whitelist onRewindError(Ljava/lang/Exception;)V
.end method

.method public abstract whitelist onRewindSucceeded()V
.end method
