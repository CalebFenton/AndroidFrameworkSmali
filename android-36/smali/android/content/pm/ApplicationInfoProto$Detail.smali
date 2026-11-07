.class public final Landroid/content/pm/ApplicationInfoProto$Detail;
.super Ljava/lang/Object;
.source "ApplicationInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Detail"
.end annotation


# static fields
.field public static final blacklist ALLOW_CROSS_UID_ACTIVITY_SWITCH_FROM_BELOW:J = 0x10800000016L

.field public static final greylist-max-o CATEGORY:J = 0x10500000012L

.field public static final greylist-max-o CLASS_NAME:J = 0x10900000001L

.field public static final greylist-max-o COMPATIBLE_WIDTH_LIMIT_DP:J = 0x10500000004L

.field public static final greylist-max-o CONTENT:J = 0x1090000000fL

.field public static final greylist-max-o CREDENTIAL_PROTECTED_DATA_DIR:J = 0x10900000009L

.field public static final greylist-max-o DESCRIPTION_RES:J = 0x1050000000cL

.field public static final greylist-max-o DEVICE_PROTECTED_DATA_DIR:J = 0x10900000008L

.field public static final blacklist ENABLE_GWP_ASAN:J = 0x10500000013L

.field public static final blacklist ENABLE_MEMTAG:J = 0x10500000014L

.field public static final blacklist ENABLE_PAGE_SIZE_APP_COMPAT:J = 0x10500000017L

.field public static final greylist-max-o IS_FULL_BACKUP:J = 0x10800000010L

.field public static final greylist-max-o LARGEST_WIDTH_LIMIT_DP:J = 0x10500000005L

.field public static final greylist-max-o MANAGE_SPACE_ACTIVITY_NAME:J = 0x1090000000bL

.field public static final blacklist NATIVE_HEAP_ZERO_INIT:J = 0x10800000015L

.field public static final greylist-max-o NETWORK_SECURITY_CONFIG_RES:J = 0x10500000011L

.field public static final greylist-max-o REQUIRES_SMALLEST_WIDTH_DP:J = 0x10500000003L

.field public static final greylist-max-o SEINFO:J = 0x10900000006L

.field public static final greylist-max-o SEINFO_USER:J = 0x10900000007L

.field public static final greylist-max-o SHARED_LIBRARY_FILES:J = 0x2090000000aL

.field public static final greylist-max-o SUPPORTS_RTL:J = 0x1080000000eL

.field public static final greylist-max-o TASK_AFFINITY:J = 0x10900000002L

.field public static final greylist-max-o UI_OPTIONS:J = 0x1050000000dL


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfoProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/content/pm/ApplicationInfoProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
