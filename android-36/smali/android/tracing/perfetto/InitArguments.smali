.class public Landroid/tracing/perfetto/InitArguments;
.super Ljava/lang/Object;
.source "InitArguments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tracing/perfetto/InitArguments$PerfettoBackend;
    }
.end annotation


# static fields
.field public static blacklist DEFAULTS:Landroid/tracing/perfetto/InitArguments; = null

.field public static final blacklist PERFETTO_BACKEND_IN_PROCESS:I = 0x1

.field public static final blacklist PERFETTO_BACKEND_SYSTEM:I = 0x2

.field public static blacklist TESTING:Landroid/tracing/perfetto/InitArguments;


# instance fields
.field public final blacklist backends:I

.field public final blacklist shmemSizeHintKb:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Landroid/tracing/perfetto/InitArguments;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    sput-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    .line 50
    new-instance v0, Landroid/tracing/perfetto/InitArguments;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    sput-object v0, Landroid/tracing/perfetto/InitArguments;->TESTING:Landroid/tracing/perfetto/InitArguments;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "backends"    # I
    .param p2, "shmemSizeHintKb"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/tracing/perfetto/InitArguments;->backends:I

    .line 63
    iput p2, p0, Landroid/tracing/perfetto/InitArguments;->shmemSizeHintKb:I

    .line 64
    return-void
.end method
