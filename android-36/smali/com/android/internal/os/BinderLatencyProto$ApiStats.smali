.class public final Lcom/android/internal/os/BinderLatencyProto$ApiStats;
.super Ljava/lang/Object;
.source "BinderLatencyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ApiStats"
.end annotation


# static fields
.field public static final blacklist BUCKETS:J = 0x20500000003L

.field public static final blacklist BUCKET_COUNT:J = 0x10500000004L

.field public static final blacklist DIMS:J = 0x10b00000001L

.field public static final blacklist FIRST_BUCKET_INDEX:J = 0x10500000002L

.field public static final blacklist FIRST_BUCKET_SIZE:J = 0x10500000005L

.field public static final blacklist SCALE_FACTOR:J = 0x10200000006L


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BinderLatencyProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/os/BinderLatencyProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
