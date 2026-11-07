.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 1

    .line 61
    return-void
.end method

.method public whitelist proceed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 72
    return-void
.end method

.method public whitelist useHttpAuthUsernamePassword()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method
