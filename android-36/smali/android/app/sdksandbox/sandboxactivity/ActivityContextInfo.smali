.class public interface abstract Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
.super Ljava/lang/Object;
.source "ActivityContextInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public blacklist getContextFlags()I
    .registers 2

    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method public abstract blacklist getSdkApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method
