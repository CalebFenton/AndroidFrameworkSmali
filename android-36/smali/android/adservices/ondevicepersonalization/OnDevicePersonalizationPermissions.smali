.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationPermissions;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationPermissions.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist ACCESS_SYSTEM_SERVER_SERVICE:Ljava/lang/String; = "android.permission.ondevicepersonalization.ACCESS_SYSTEM_SERVER_SERVICE"

.field public static final whitelist MODIFY_ONDEVICEPERSONALIZATION_STATE:Ljava/lang/String; = "android.permission.ondevicepersonalization.MODIFY_ONDEVICEPERSONALIZATION_STATE"

.field public static final whitelist NOTIFY_MEASUREMENT_EVENT:Ljava/lang/String; = "android.permission.ondevicepersonalization.NOTIFY_MEASUREMENT_EVENT"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
