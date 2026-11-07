.class public final Landroid/nfc/cardemulation/ApduServiceInfoProto;
.super Ljava/lang/Object;
.source "ApduServiceInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfoProto$AutoTransactPattern;,
        Landroid/nfc/cardemulation/ApduServiceInfoProto$AutoTransactMapping;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_TRANSACT_MAPPING:J = 0x20b0000000aL

.field public static final blacklist AUTO_TRANSACT_PATTERNS:J = 0x20b0000000bL

.field public static final blacklist COMPONENT_NAME:J = 0x10b00000001L

.field public static final blacklist DESCRIPTION:J = 0x10900000002L

.field public static final blacklist DYNAMIC_AID_GROUPS:J = 0x20b00000007L

.field public static final blacklist OFF_HOST_NAME:J = 0x10900000004L

.field public static final blacklist ON_HOST:J = 0x10800000003L

.field public static final blacklist SETTINGS_ACTIVITY_NAME:J = 0x10900000008L

.field public static final blacklist SHOULD_DEFAULT_TO_OBSERVE_MODE:J = 0x10800000009L

.field public static final blacklist STATIC_AID_GROUPS:J = 0x20b00000006L

.field public static final blacklist STATIC_OFF_HOST_NAME:J = 0x10900000005L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
