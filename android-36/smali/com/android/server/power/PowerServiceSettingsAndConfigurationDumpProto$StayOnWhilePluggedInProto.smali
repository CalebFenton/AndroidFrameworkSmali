.class public final Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto$StayOnWhilePluggedInProto;
.super Ljava/lang/Object;
.source "PowerServiceSettingsAndConfigurationDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StayOnWhilePluggedInProto"
.end annotation


# static fields
.field public static final blacklist IS_STAY_ON_WHILE_PLUGGED_IN_AC:J = 0x10800000001L

.field public static final blacklist IS_STAY_ON_WHILE_PLUGGED_IN_DOCK:J = 0x10800000004L

.field public static final blacklist IS_STAY_ON_WHILE_PLUGGED_IN_USB:J = 0x10800000002L

.field public static final blacklist IS_STAY_ON_WHILE_PLUGGED_IN_WIRELESS:J = 0x10800000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
