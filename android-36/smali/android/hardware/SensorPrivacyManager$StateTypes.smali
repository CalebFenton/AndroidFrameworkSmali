.class public Landroid/hardware/SensorPrivacyManager$StateTypes;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$StateTypes$StateType;
    }
.end annotation


# static fields
.field public static final whitelist DISABLED:I = 0x2

.field public static final whitelist ENABLED:I = 0x1

.field public static final whitelist ENABLED_EXCEPT_ALLOWLISTED_APPS:I = 0x3


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
