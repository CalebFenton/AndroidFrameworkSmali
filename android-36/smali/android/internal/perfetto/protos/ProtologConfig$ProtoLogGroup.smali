.class public final Landroid/internal/perfetto/protos/ProtologConfig$ProtoLogGroup;
.super Ljava/lang/Object;
.source "ProtologConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/ProtologConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProtoLogGroup"
.end annotation


# static fields
.field public static final blacklist COLLECT_STACKTRACE:J = 0x10800000003L

.field public static final blacklist GROUP_NAME:J = 0x10900000001L

.field public static final blacklist LOG_FROM:J = 0x10e00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/ProtologConfig;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/ProtologConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
