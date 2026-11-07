.class public final Landroid/providers/settings/GlobalSettingsProto$TemperatureWarning;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemperatureWarning"
.end annotation


# static fields
.field public static final blacklist SHOW_TEMPERATURE_WARNING:J = 0x10b00000001L

.field public static final blacklist SHOW_USB_TEMPERATURE_ALARM:J = 0x10b00000003L

.field public static final blacklist WARNING_TEMPERATURE_LEVEL:J = 0x10b00000002L


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

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
