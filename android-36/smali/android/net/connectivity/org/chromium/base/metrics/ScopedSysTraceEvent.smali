.class public Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
.super Ljava/lang/Object;
.source "ScopedSysTraceEvent.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist MAX_SECTION_NAME_LEN:I = 0x7f


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2a

    .line 42
    const-string v0, "..."

    .line 43
    .local v0, "ellipsis":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    .end local v0    # "ellipsis":Ljava/lang/String;
    :cond_2a
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    return-void
.end method
