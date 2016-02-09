.class final Landroid/app/ActivityThread$ActivityClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityClientRecord"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field activityInfo:Landroid/content/pm/ActivityInfo;

.field compatInfo:Landroid/content/res/CompatibilityInfo;

.field createdConfig:Landroid/content/res/Configuration;

.field embeddedID:Ljava/lang/String;

.field hideForNow:Z

.field ident:I

.field intent:Landroid/content/Intent;

.field isForward:Z

.field lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field mPendingRemoveWindow:Landroid/view/View;

.field mPendingRemoveWindowManager:Landroid/view/WindowManager;

.field newConfig:Landroid/content/res/Configuration;

.field nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

.field onlyLocalRequest:Z

.field overrideConfig:Landroid/content/res/Configuration;

.field packageInfo:Landroid/app/LoadedApk;

.field parent:Landroid/app/Activity;

.field paused:Z

.field pendingConfigChanges:I

.field pendingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field pendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field persistentState:Landroid/os/PersistableBundle;

.field profilerInfo:Landroid/app/ProfilerInfo;

.field referrer:Ljava/lang/String;

.field startsNotResumed:Z

.field state:Landroid/os/Bundle;

.field stopped:Z

.field private tmpConfig:Landroid/content/res/Configuration;

.field token:Landroid/os/IBinder;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field window:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    #@2
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 299
    new-instance v0, Landroid/content/res/Configuration;

    #@7
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    #@c
    .line 320
    iput-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    #@e
    .line 321
    iput-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    #@10
    .line 322
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@12
    .line 323
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@14
    .line 324
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@16
    .line 325
    iput-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@18
    .line 319
    return-void
.end method


# virtual methods
.method public isPersistable()Z
    .locals 2

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isPreHoneycomb()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 329
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 330
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@7
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    .line 331
    const/16 v2, 0xb

    #@f
    .line 330
    if-ge v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0

    #@13
    .line 333
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 341
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@6
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    .line 342
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "ActivityRecord{"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 343
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@19
    move-result v2

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 344
    const-string/jumbo v2, " token="

    #@25
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 344
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@2b
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 344
    const-string/jumbo v2, " "

    #@32
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 344
    if-nez v0, :cond_1

    #@38
    .line 345
    const-string/jumbo v1, "no component name"

    #@3b
    .line 342
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 346
    const-string/jumbo v2, "}"

    #@42
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 341
    :cond_0
    const/4 v0, 0x0

    #@4c
    .local v0, "componentName":Landroid/content/ComponentName;
    goto :goto_0

    #@4d
    .line 345
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    goto :goto_1
.end method
