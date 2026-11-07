.class public final Landroid/providers/settings/SecureSettingsProto$Autofill;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Autofill"
.end annotation


# static fields
.field public static final blacklist FEATURE_FIELD_CLASSIFICATION:J = 0x10b00000002L

.field public static final blacklist SERVICE:J = 0x10b00000001L

.field public static final blacklist SERVICE_SEARCH_URI:J = 0x10b00000008L

.field public static final blacklist USER_DATA_MAX_CATEGORY_COUNT:J = 0x10b00000005L

.field public static final blacklist USER_DATA_MAX_FIELD_CLASSIFICATION_IDS_SIZE:J = 0x10b00000004L

.field public static final blacklist USER_DATA_MAX_USER_DATA_SIZE:J = 0x10b00000003L

.field public static final blacklist USER_DATA_MAX_VALUE_LENGTH:J = 0x10b00000006L

.field public static final blacklist USER_DATA_MIN_VALUE_LENGTH:J = 0x10b00000007L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
