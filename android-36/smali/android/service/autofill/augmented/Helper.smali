.class public final Landroid/service/autofill/augmented/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static final blacklist sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Landroid/service/autofill/augmented/Helper;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains only static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V
    .registers 10
    .param p0, "type"    # I
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "mSessionId"    # I
    .param p4, "durationMs"    # J

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    .line 37
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, "sanitizedComponentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6bc

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 39
    invoke-virtual {v1, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x5b0

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 42
    const/16 v2, 0x38c

    invoke-virtual {v1, v2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 43
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x479

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 44
    .local v1, "log":Landroid/metrics/LogMaker;
    sget-object v2, Landroid/service/autofill/augmented/Helper;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 45
    return-void
.end method
