.class public abstract Landroid/webkit/WebResourceError;
.super Ljava/lang/Object;
.source "WebResourceError.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getDescription()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getErrorCode()I
.end method
