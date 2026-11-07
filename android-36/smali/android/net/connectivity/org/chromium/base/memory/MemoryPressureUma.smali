.class public Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;
.super Ljava/lang/Object;
.source "MemoryPressureUma.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma$Notification;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sInstance:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;


# instance fields
.field private final blacklist mHistogramName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 20
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "processType"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android.MemoryPressureNotification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->mHistogramName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static blacklist initializeForBrowser()V
    .registers 1

    .line 56
    const-string v0, "Browser"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->initializeInstance(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist initializeForChildService()V
    .registers 1

    .line 60
    const-string v0, "ChildService"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->initializeInstance(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private static blacklist initializeInstance(Ljava/lang/String;)V
    .registers 3
    .param p0, "processType"    # Ljava/lang/String;

    .line 64
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 65
    nop

    .line 66
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->sInstance:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;

    .line 67
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->sInstance:Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 68
    return-void
.end method

.method private blacklist record(I)V
    .registers 4
    .param p1, "notification"    # I

    .line 113
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->mHistogramName:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v0, p1, v1}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 110
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 76
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 77
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 81
    sparse-switch p1, :sswitch_data_2c

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    goto :goto_2b

    .line 83
    :sswitch_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 84
    goto :goto_2b

    .line 86
    :sswitch_d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 87
    goto :goto_2b

    .line 89
    :sswitch_12
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 90
    goto :goto_2b

    .line 92
    :sswitch_17
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 93
    goto :goto_2b

    .line 95
    :sswitch_1c
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 96
    goto :goto_2b

    .line 98
    :sswitch_21
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 99
    goto :goto_2b

    .line 101
    :sswitch_26
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;->record(I)V

    .line 102
    nop

    .line 107
    :goto_2b
    return-void

    :sswitch_data_2c
    .sparse-switch
        0x5 -> :sswitch_26
        0xa -> :sswitch_21
        0xf -> :sswitch_1c
        0x14 -> :sswitch_17
        0x28 -> :sswitch_12
        0x3c -> :sswitch_d
        0x50 -> :sswitch_8
    .end sparse-switch
.end method
