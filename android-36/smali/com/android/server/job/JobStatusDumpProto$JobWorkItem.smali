.class public final Lcom/android/server/job/JobStatusDumpProto$JobWorkItem;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobWorkItem"
.end annotation


# static fields
.field public static final blacklist DELIVERY_COUNT:J = 0x10500000002L

.field public static final blacklist INTENT:J = 0x10b00000003L

.field public static final blacklist URI_GRANTS:J = 0x10b00000004L

.field public static final blacklist WORK_ID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobStatusDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobStatusDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
