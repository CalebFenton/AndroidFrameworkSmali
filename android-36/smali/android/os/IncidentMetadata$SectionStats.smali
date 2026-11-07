.class public final Landroid/os/IncidentMetadata$SectionStats;
.super Ljava/lang/Object;
.source "IncidentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SectionStats"
.end annotation


# static fields
.field public static final greylist-max-o DUMP_DURATION_MS:J = 0x10300000006L

.field public static final greylist-max-o DUMP_SIZE_BYTES:J = 0x10500000005L

.field public static final blacklist ERROR_MSG:J = 0x10900000009L

.field public static final greylist-max-o EXEC_DURATION_MS:J = 0x10300000004L

.field public static final greylist-max-o ID:J = 0x10500000001L

.field public static final greylist-max-o IS_TRUNCATED:J = 0x10800000008L

.field public static final greylist-max-o REPORT_SIZE_BYTES:J = 0x10500000003L

.field public static final greylist-max-o SUCCESS:J = 0x10800000002L

.field public static final greylist-max-o TIMED_OUT:J = 0x10800000007L


# direct methods
.method public constructor blacklist <init>(Landroid/os/IncidentMetadata;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/IncidentMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
