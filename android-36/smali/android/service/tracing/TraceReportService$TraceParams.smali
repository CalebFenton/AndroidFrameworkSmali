.class public final Landroid/service/tracing/TraceReportService$TraceParams;
.super Ljava/lang/Object;
.source "TraceReportService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/tracing/TraceReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceParams"
.end annotation


# instance fields
.field private final blacklist mFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mUuid:Ljava/util/UUID;


# direct methods
.method private constructor blacklist <init>(Landroid/tracing/TraceReportParams;)V
    .registers 7
    .param p1, "params"    # Landroid/tracing/TraceReportParams;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object v0, p1, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/service/tracing/TraceReportService$TraceParams;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 94
    new-instance v0, Ljava/util/UUID;

    iget-wide v1, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    iget-wide v3, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/service/tracing/TraceReportService$TraceParams;->mUuid:Ljava/util/UUID;

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/tracing/TraceReportParams;Landroid/service/tracing/TraceReportService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/tracing/TraceReportService$TraceParams;-><init>(Landroid/tracing/TraceReportParams;)V

    return-void
.end method


# virtual methods
.method public whitelist getFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/service/tracing/TraceReportService$TraceParams;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/service/tracing/TraceReportService$TraceParams;->mUuid:Ljava/util/UUID;

    return-object v0
.end method
