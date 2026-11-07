.class public final synthetic Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/tracing/TraceReportService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/tracing/TraceReportService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;->f$0:Landroid/service/tracing/TraceReportService;

    return-void
.end method


# virtual methods
.method public final whitelist handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;->f$0:Landroid/service/tracing/TraceReportService;

    invoke-static {v0, p1}, Landroid/service/tracing/TraceReportService;->$r8$lambda$vhnvNgPSu9YI5qGd45EL2GaGwpc(Landroid/service/tracing/TraceReportService;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
