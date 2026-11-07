.class public Landroid/tracing/perfetto/DataSourceParams;
.super Ljava/lang/Object;
.source "DataSourceParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tracing/perfetto/DataSourceParams$Builder;,
        Landroid/tracing/perfetto/DataSourceParams$PerfettoDsBufferExhausted;
    }
.end annotation


# static fields
.field public static blacklist DEFAULTS:Landroid/tracing/perfetto/DataSourceParams; = null

.field public static final blacklist PERFETTO_DS_BUFFER_EXHAUSTED_POLICY_DROP:I = 0x0

.field public static final blacklist PERFETTO_DS_BUFFER_EXHAUSTED_POLICY_STALL_AND_ABORT:I = 0x1


# instance fields
.field public final blacklist bufferExhaustedPolicy:I

.field public final blacklist noFlush:Z

.field public final blacklist willNotifyOnStop:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v0

    sput-object v0, Landroid/tracing/perfetto/DataSourceParams;->DEFAULTS:Landroid/tracing/perfetto/DataSourceParams;

    return-void
.end method

.method private constructor blacklist <init>(IZZ)V
    .registers 4
    .param p1, "bufferExhaustedPolicy"    # I
    .param p2, "willNotifyOnStop"    # Z
    .param p3, "noFlush"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/tracing/perfetto/DataSourceParams;->bufferExhaustedPolicy:I

    .line 54
    iput-boolean p2, p0, Landroid/tracing/perfetto/DataSourceParams;->willNotifyOnStop:Z

    .line 55
    iput-boolean p3, p0, Landroid/tracing/perfetto/DataSourceParams;->noFlush:Z

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(IZZLandroid/tracing/perfetto/DataSourceParams-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/tracing/perfetto/DataSourceParams;-><init>(IZZ)V

    return-void
.end method
