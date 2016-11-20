.class Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamplingProfilerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplingProfilerSettingsObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/SamplingProfilerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SamplingProfilerService;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SamplingProfilerService;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->this$0:Lcom/android/server/SamplingProfilerService;

    #@2
    .line 108
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 109
    iput-object p2, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@8
    .line 110
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->onChange(Z)V

    #@c
    .line 107
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v2, "sampling_profiler_ms"

    #@5
    const/4 v3, 0x0

    #@6
    .line 114
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v0

    #@e
    .line 118
    .local v0, "samplingProfilerMs":Ljava/lang/Integer;
    const-string/jumbo v1, "persist.sys.profiler_ms"

    #@11
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 113
    return-void
.end method
