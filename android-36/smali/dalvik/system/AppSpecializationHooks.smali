.class public Ldalvik/system/AppSpecializationHooks;
.super Ljava/lang/Object;
.source "AppSpecializationHooks.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist test-api handleCompatChangesBeforeBindingApplication()V
    .registers 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 47
    invoke-static {}, Lcom/android/i18n/system/AppSpecializationHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 48
    return-void
.end method
