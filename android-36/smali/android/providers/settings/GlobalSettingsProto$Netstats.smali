.class public final Landroid/providers/settings/GlobalSettingsProto$Netstats;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Netstats"
.end annotation


# static fields
.field public static final blacklist AUGMENT_ENABLED:J = 0x10b00000006L

.field public static final blacklist DEV_BUCKET_DURATION:J = 0x10b00000007L

.field public static final blacklist DEV_DELETE_AGE:J = 0x10b0000000aL

.field public static final blacklist DEV_PERSIST_BYTES:J = 0x10b00000008L

.field public static final blacklist DEV_ROTATE_AGE:J = 0x10b00000009L

.field public static final blacklist ENABLED:J = 0x10b00000001L

.field public static final blacklist GLOBAL_ALERT_BYTES:J = 0x10b00000004L

.field public static final blacklist POLL_INTERVAL:J = 0x10b00000002L

.field public static final blacklist SAMPLE_ENABLED:J = 0x10b00000005L

.field public static final blacklist TIME_CACHE_MAX_AGE:J = 0x10b00000003L

.field public static final blacklist UID_BUCKET_DURATION:J = 0x10b0000000bL

.field public static final blacklist UID_DELETE_AGE:J = 0x10b0000000eL

.field public static final blacklist UID_PERSIST_BYTES:J = 0x10b0000000cL

.field public static final blacklist UID_ROTATE_AGE:J = 0x10b0000000dL

.field public static final blacklist UID_TAG_BUCKET_DURATION:J = 0x10b0000000fL

.field public static final blacklist UID_TAG_DELETE_AGE:J = 0x10b00000012L

.field public static final blacklist UID_TAG_PERSIST_BYTES:J = 0x10b00000010L

.field public static final blacklist UID_TAG_ROTATE_AGE:J = 0x10b00000011L


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

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
