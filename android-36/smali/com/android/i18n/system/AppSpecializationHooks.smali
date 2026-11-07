.class public Lcom/android/i18n/system/AppSpecializationHooks;
.super Ljava/lang/Object;
.source "AppSpecializationHooks.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist handleCompatChangesBeforeBindingApplication()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/android/i18n/system/ZygoteHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 43
    return-void
.end method
