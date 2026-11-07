.class public final Landroid/providers/settings/GlobalSettingsProto$Data;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Data"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TIMEOUT_MOBILE:J = 0x10b00000001L

.field public static final blacklist ACTIVITY_TIMEOUT_WIFI:J = 0x10b00000002L

.field public static final blacklist ROAMING:J = 0x10b00000003L

.field public static final blacklist STALL_ALARM_AGGRESSIVE_DELAY_IN_MS:J = 0x10b00000005L

.field public static final blacklist STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS:J = 0x10b00000004L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
