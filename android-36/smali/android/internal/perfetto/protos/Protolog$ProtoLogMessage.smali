.class public final Landroid/internal/perfetto/protos/Protolog$ProtoLogMessage;
.super Ljava/lang/Object;
.source "Protolog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Protolog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProtoLogMessage"
.end annotation


# static fields
.field public static final blacklist BOOLEAN_PARAMS:J = 0x20500000005L

.field public static final blacklist DOUBLE_PARAMS:J = 0x20100000004L

.field public static final blacklist MESSAGE_ID:J = 0x10600000001L

.field public static final blacklist SINT64_PARAMS:J = 0x21200000003L

.field public static final blacklist STACKTRACE_IID:J = 0x10d00000006L

.field public static final blacklist STR_PARAM_IIDS:J = 0x20d00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Protolog;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/Protolog;
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
