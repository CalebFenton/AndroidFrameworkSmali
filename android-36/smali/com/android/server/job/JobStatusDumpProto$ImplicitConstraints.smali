.class public final Lcom/android/server/job/JobStatusDumpProto$ImplicitConstraints;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImplicitConstraints"
.end annotation


# static fields
.field public static final blacklist IS_DYNAMIC_SATISFIED:J = 0x10800000003L

.field public static final blacklist IS_NOT_DOZING:J = 0x10800000001L

.field public static final blacklist IS_NOT_RESTRICTED_IN_BG:J = 0x10800000002L


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

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
