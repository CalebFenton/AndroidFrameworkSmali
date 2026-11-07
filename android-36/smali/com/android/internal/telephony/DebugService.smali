.class public Lcom/android/internal/telephony/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String; = "DebugService"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string p0, "DebugService:"

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 73
    sget-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 p0, 0x0

    if-eqz p3, :cond_7d

    .line 46
    array-length v0, p3

    if-lez v0, :cond_7d

    .line 47
    aget-object v0, p3, p0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_86

    :goto_13
    move p0, v1

    goto :goto_4a

    :sswitch_15
    const-string p0, "--clearatoms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 p0, 0x4

    goto :goto_4a

    :sswitch_20
    const-string p0, "--metricsproto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_13

    :cond_29
    const/4 p0, 0x3

    goto :goto_4a

    :sswitch_2b
    const-string p0, "--saveatoms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_13

    :cond_34
    const/4 p0, 0x2

    goto :goto_4a

    :sswitch_36
    const-string p0, "--metricsprototext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_13

    :cond_3f
    const/4 p0, 0x1

    goto :goto_4a

    :sswitch_41
    const-string v2, "--metrics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_13

    :cond_4a
    :goto_4a
    packed-switch p0, :pswitch_data_9c

    goto :goto_7d

    .line 61
    :pswitch_4e
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_6f

    .line 62
    const-string p0, "Clearing atoms.."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->clearAtomsStorage()V

    return-void

    .line 55
    :pswitch_5f
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_6f

    .line 56
    const-string p0, "Saving atoms.."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->flushAtomsStorage()V

    :cond_6f
    return-void

    .line 51
    :pswitch_70
    const-string p0, "Collecting telephony metrics.."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 68
    :cond_7d
    :goto_7d
    const-string p0, "Dump telephony."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 69
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/PhoneFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :sswitch_data_86
    .sparse-switch
        -0x746ad8dd -> :sswitch_41
        0x1ea00b52 -> :sswitch_36
        0x28324445 -> :sswitch_2b
        0x38a4a0a5 -> :sswitch_20
        0x5adc00b5 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_70
        :pswitch_5f
        :pswitch_70
        :pswitch_4e
    .end packed-switch
.end method
