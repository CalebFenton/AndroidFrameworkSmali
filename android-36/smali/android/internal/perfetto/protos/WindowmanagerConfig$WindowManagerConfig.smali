.class public final Landroid/internal/perfetto/protos/WindowmanagerConfig$WindowManagerConfig;
.super Ljava/lang/Object;
.source "WindowmanagerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/WindowmanagerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowManagerConfig"
.end annotation


# static fields
.field public static final blacklist LOG_FREQUENCY:J = 0x10e00000001L

.field public static final blacklist LOG_FREQUENCY_FRAME:I = 0x1

.field public static final blacklist LOG_FREQUENCY_SINGLE_DUMP:I = 0x3

.field public static final blacklist LOG_FREQUENCY_TRANSACTION:I = 0x2

.field public static final blacklist LOG_FREQUENCY_UNSPECIFIED:I = 0x0

.field public static final blacklist LOG_LEVEL:J = 0x10e00000002L

.field public static final blacklist LOG_LEVEL_CRITICAL:I = 0x3

.field public static final blacklist LOG_LEVEL_DEBUG:I = 0x2

.field public static final blacklist LOG_LEVEL_UNSPECIFIED:I = 0x0

.field public static final blacklist LOG_LEVEL_VERBOSE:I = 0x1


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/WindowmanagerConfig;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/WindowmanagerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
