.class public final Landroid/providers/settings/GlobalSettingsProto$Bluetooth;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Bluetooth"
.end annotation


# static fields
.field public static final blacklist A2DP_OPTIONAL_CODECS_ENABLED:J = 0x20b00000009L

.field public static final blacklist A2DP_SINK_PRIORITIES:J = 0x20b00000006L

.field public static final blacklist A2DP_SRC_PRIORITIES:J = 0x20b00000007L

.field public static final blacklist A2DP_SUPPORTS_OPTIONAL_CODECS:J = 0x20b00000008L

.field public static final blacklist CLASS_OF_DEVICE:J = 0x10b00000001L

.field public static final blacklist DISABLED_PROFILES:J = 0x10b00000002L

.field public static final blacklist HEADSET_PRIORITIES:J = 0x20b00000005L

.field public static final blacklist HEARING_AID_PRIORITIES:J = 0x20b00000010L

.field public static final blacklist INPUT_DEVICE_PRIORITIES:J = 0x20b0000000aL

.field public static final blacklist INTEROPERABILITY_LIST:J = 0x10b00000003L

.field public static final blacklist MAP_CLIENT_PRIORITIES:J = 0x20b0000000cL

.field public static final blacklist MAP_PRIORITIES:J = 0x20b0000000bL

.field public static final blacklist ON:J = 0x10b00000004L

.field public static final blacklist PAN_PRIORITIES:J = 0x20b0000000fL

.field public static final blacklist PBAP_CLIENT_PRIORITIES:J = 0x20b0000000dL

.field public static final blacklist SAP_PRIORITIES:J = 0x20b0000000eL


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

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
