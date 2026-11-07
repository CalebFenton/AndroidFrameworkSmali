.class public final Landroid/providers/settings/GlobalSettingsProto$Battery;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Battery"
.end annotation


# static fields
.field public static final blacklist DISCHARGE_DURATION_THRESHOLD:J = 0x10b00000001L

.field public static final blacklist DISCHARGE_THRESHOLD:J = 0x10b00000002L

.field public static final blacklist SAVER_CONSTANTS:J = 0x10b00000003L

.field public static final blacklist SAVER_DEVICE_SPECIFIC_CONSTANTS:J = 0x10b00000004L

.field public static final blacklist STATS_CONSTANTS:J = 0x10b00000005L

.field public static final blacklist TIP_CONSTANTS:J = 0x10b00000006L


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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
