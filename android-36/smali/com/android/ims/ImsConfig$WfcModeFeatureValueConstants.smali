.class public Lcom/android/ims/ImsConfig$WfcModeFeatureValueConstants;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WfcModeFeatureValueConstants"
.end annotation


# static fields
.field public static final blacklist CELLULAR_PREFERRED:I = 0x1

.field public static final blacklist WIFI_ONLY:I = 0x0

.field public static final blacklist WIFI_PREFERRED:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
