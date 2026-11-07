.class Landroid/os/Looper$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static final blacklist sVerboseLogging:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsVerboseLogging()Z
    .registers 1

    sget-boolean v0, Landroid/os/Looper$NoImagePreloadHolder;->sVerboseLogging:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 76
    nop

    .line 77
    const-string/jumbo v0, "log.looper.slow.verbose"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/Looper$NoImagePreloadHolder;->sVerboseLogging:Z

    .line 76
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
