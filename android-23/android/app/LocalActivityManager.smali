.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "singleMode"    # Z

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 78
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@a
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 81
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@11
    .line 91
    const/4 v0, 0x1

    #@12
    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@14
    .line 106
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@1a
    .line 107
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    #@1c
    .line 108
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@1e
    .line 105
    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 10
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "desiredState"    # I

    #@0
    .prologue
    .line 112
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 114
    :cond_0
    return-void

    #@a
    .line 117
    :cond_1
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@c
    const/4 v1, 0x1

    #@d
    if-ne v0, v1, :cond_7

    #@f
    .line 120
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    #@11
    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    #@14
    move-result-object v9

    #@15
    .line 121
    .local v9, "lastNonConfigurationInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    #@16
    .line 122
    .local v8, "instanceObj":Ljava/lang/Object;
    if-eqz v9, :cond_2

    #@18
    .line 123
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    #@1a
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v8

    #@1e
    .line 125
    .end local v8    # "instanceObj":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    #@1f
    .line 126
    .local v7, "instance":Landroid/app/Activity$NonConfigurationInstances;
    if-eqz v8, :cond_3

    #@21
    .line 127
    new-instance v7, Landroid/app/Activity$NonConfigurationInstances;

    #@23
    .end local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    invoke-direct {v7}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    #@26
    .line 128
    .local v7, "instance":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v8, v7, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    #@28
    .line 133
    .end local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    :cond_3
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    if-nez v0, :cond_4

    #@2c
    .line 134
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@2e
    iget-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@30
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@36
    .line 136
    :cond_4
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@38
    .line 137
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    #@3a
    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    #@3c
    iget-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@3e
    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@40
    iget-object v6, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@42
    move-object v5, p1

    #@43
    .line 136
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@49
    .line 138
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@4b
    if-nez v0, :cond_5

    #@4d
    .line 139
    return-void

    #@4e
    .line 141
    :cond_5
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@50
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    #@56
    .line 142
    const/4 v0, 0x0

    #@57
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@59
    .line 143
    const/4 v0, 0x3

    #@5a
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@5c
    .line 145
    const/4 v0, 0x4

    #@5d
    if-ne p2, v0, :cond_6

    #@5f
    .line 147
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@61
    const/4 v1, 0x1

    #@62
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    #@65
    .line 148
    const/4 v0, 0x4

    #@66
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@68
    .line 157
    :cond_6
    return-void

    #@69
    .line 160
    .end local v9    # "lastNonConfigurationInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@6b
    packed-switch v0, :pswitch_data_0

    #@6e
    .line 111
    return-void

    #@6f
    .line 162
    :pswitch_0
    const/4 v0, 0x3

    #@70
    if-ne p2, v0, :cond_8

    #@72
    .line 164
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@74
    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    #@77
    .line 165
    const/4 v0, 0x3

    #@78
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@7a
    .line 167
    :cond_8
    const/4 v0, 0x4

    #@7b
    if-ne p2, v0, :cond_9

    #@7d
    .line 169
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@7f
    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    #@82
    .line 170
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@84
    const/4 v1, 0x1

    #@85
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    #@88
    .line 171
    const/4 v0, 0x4

    #@89
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@8b
    .line 173
    :cond_9
    return-void

    #@8c
    .line 176
    :pswitch_1
    const/4 v0, 0x4

    #@8d
    if-ne p2, v0, :cond_a

    #@8f
    .line 179
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@91
    const/4 v1, 0x1

    #@92
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    #@95
    .line 180
    const/4 v0, 0x0

    #@96
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@98
    .line 181
    const/4 v0, 0x4

    #@99
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@9b
    .line 183
    :cond_a
    const/4 v0, 0x2

    #@9c
    if-ne p2, v0, :cond_b

    #@9e
    .line 185
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@a0
    const/4 v1, 0x0

    #@a1
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;Z)V

    #@a4
    .line 186
    const/4 v0, 0x2

    #@a5
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@a7
    .line 188
    :cond_b
    return-void

    #@a8
    .line 191
    :pswitch_2
    const/4 v0, 0x3

    #@a9
    if-ne p2, v0, :cond_c

    #@ab
    .line 193
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    #@ad
    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    #@b0
    .line 194
    const/4 v0, 0x3

    #@b1
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@b3
    .line 196
    :cond_c
    const/4 v0, 0x2

    #@b4
    if-ne p2, v0, :cond_d

    #@b6
    .line 198
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    #@b8
    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    #@bb
    .line 200
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@bd
    const/4 v1, 0x0

    #@be
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;Z)V

    #@c1
    .line 201
    const/4 v0, 0x2

    #@c2
    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@c4
    .line 203
    :cond_d
    return-void

    #@c5
    .line 160
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 4
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "finish"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 359
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    #@3
    .line 360
    .local v0, "win":Landroid/view/Window;
    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_0

    #@8
    if-eqz p2, :cond_2

    #@a
    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@c
    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    #@f
    .line 365
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@11
    .line 366
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    #@13
    .line 367
    if-eqz p2, :cond_1

    #@15
    .line 368
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@17
    .line 370
    :cond_1
    const/4 v1, 0x5

    #@18
    iput v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@1a
    .line 371
    return-object v0

    #@1b
    .line 361
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    #@1e
    goto :goto_0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 3
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "finishing"    # Z

    #@0
    .prologue
    .line 208
    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@2
    if-nez v2, :cond_1

    #@4
    const/4 v1, 0x1

    #@5
    .line 209
    .local v1, "needState":Z
    :goto_0
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@7
    invoke-virtual {v2, p1, p2, v1}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    .line 211
    .local v0, "instanceState":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@d
    .line 212
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@f
    .line 207
    :cond_0
    return-void

    #@10
    .line 208
    .end local v0    # "instanceState":Landroid/os/Bundle;
    .end local v1    # "needState":Z
    :cond_1
    const/4 v1, 0x0

    #@11
    .restart local v1    # "needState":Z
    goto :goto_0
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    #@0
    .prologue
    .line 387
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@8
    .line 388
    .local v0, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x0

    #@9
    .line 389
    .local v1, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@b
    .line 390
    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    #@e
    move-result-object v1

    #@f
    .line 391
    .local v1, "win":Landroid/view/Window;
    if-eqz p2, :cond_0

    #@11
    .line 392
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@13
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 393
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1b
    .line 396
    .end local v1    # "win":Landroid/view/Window;
    :cond_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 453
    if-eqz p1, :cond_1

    #@2
    .line 454
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v5

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 456
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@19
    move-result-object v0

    #@1a
    .line 457
    .local v0, "astate":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@1c
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@22
    .line 458
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_0

    #@24
    .line 459
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 466
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :catch_0
    move-exception v1

    #@28
    .line 468
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LocalActivityManager"

    #@2b
    const-string/jumbo v6, "Exception thrown when restoring LocalActivityManager state"

    #@2e
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0

    #@32
    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "astate":Landroid/os/Bundle;
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@34
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v5, 0x0

    #@35
    invoke-direct {v4, v2, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    #@38
    .line 462
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@3a
    .line 463
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@3c
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 464
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 473
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "id$iterator":Ljava/util/Iterator;
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_1
    const/4 v5, 0x2

    #@46
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@48
    .line 452
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 4
    .param p1, "finishing"    # Z

    #@0
    .prologue
    .line 624
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 625
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 626
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@11
    .line 628
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@13
    invoke-virtual {v3, v2, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    #@16
    .line 625
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 630
    .end local v2    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@1b
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@1e
    .line 631
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@23
    .line 623
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 6
    .param p1, "finishing"    # Z

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 547
    if-eqz p1, :cond_0

    #@3
    .line 548
    const/4 v3, 0x1

    #@4
    iput-boolean v3, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    #@6
    .line 550
    :cond_0
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@8
    .line 551
    iget-boolean v3, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 552
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 553
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@12
    invoke-direct {p0, v3, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@15
    .line 546
    :cond_1
    return-void

    #@16
    .line 556
    :cond_2
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    .line 557
    .local v0, "N":I
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@1f
    .line 558
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@27
    .line 559
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@29
    const/4 v4, 0x4

    #@2a
    if-ne v3, v4, :cond_3

    #@2c
    .line 560
    invoke-direct {p0, v2, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@2f
    .line 557
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 521
    iput v3, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@3
    .line 522
    iget-boolean v2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 523
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 524
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@d
    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@10
    .line 520
    :cond_0
    return-void

    #@11
    .line 527
    :cond_1
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v0

    #@17
    .line 528
    .local v0, "N":I
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1a
    .line 529
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@22
    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@25
    .line 528
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 590
    const/4 v3, 0x0

    #@1
    .line 592
    .local v3, "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 593
    .local v0, "N":I
    const/4 v1, 0x0

    #@8
    .end local v3    # "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 594
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@12
    .line 595
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_1

    #@14
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 596
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@1a
    invoke-virtual {v5}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    .line 597
    .local v2, "instance":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@20
    .line 598
    if-nez v3, :cond_0

    #@22
    .line 599
    new-instance v3, Ljava/util/HashMap;

    #@24
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@27
    .line 601
    :cond_0
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    #@29
    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 593
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 605
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_2
    return-object v3
.end method

.method public dispatchStop()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 574
    iput v4, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@3
    .line 575
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 576
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 577
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@14
    .line 578
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {p0, v2, v4}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@17
    .line 576
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 573
    .end local v2    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 434
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@9
    .line 435
    .local v0, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v0, :cond_0

    #@b
    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@d
    :cond_0
    return-object v1
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 409
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@7
    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@9
    :cond_0
    return-object v0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 422
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@7
    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method public removeAllActivities()V
    .locals 1

    #@0
    .prologue
    .line 613
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    #@4
    .line 612
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 7

    #@0
    .prologue
    .line 487
    const/4 v4, 0x0

    #@1
    .line 491
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 492
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .end local v4    # "state":Landroid/os/Bundle;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@a
    .line 493
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@12
    .line 494
    .local v3, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_0

    #@14
    .line 495
    new-instance v4, Landroid/os/Bundle;

    #@16
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@19
    .line 497
    :cond_0
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@1b
    if-nez v5, :cond_1

    #@1d
    iget v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@1f
    const/4 v6, 0x4

    #@20
    if-ne v5, v6, :cond_2

    #@22
    .line 498
    :cond_1
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 501
    new-instance v1, Landroid/os/Bundle;

    #@28
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@2b
    .line 502
    .local v1, "childState":Landroid/os/Bundle;
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    #@2d
    invoke-virtual {v5, v1}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@30
    .line 503
    iput-object v1, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@32
    .line 505
    .end local v1    # "childState":Landroid/os/Bundle;
    :cond_2
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 506
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    #@38
    iget-object v6, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    #@3a
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3d
    .line 492
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 510
    .end local v3    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_4
    return-object v4
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 262
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@3
    if-ne v6, v8, :cond_0

    #@5
    .line 263
    new-instance v6, Ljava/lang/IllegalStateException;

    #@7
    .line 264
    const-string/jumbo v7, "Activities can\'t be added until the containing group has been created."

    #@a
    .line 263
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v6

    #@e
    .line 267
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 268
    .local v1, "adding":Z
    const/4 v5, 0x0

    #@10
    .line 270
    .local v5, "sameIntent":Z
    const/4 v0, 0x0

    #@11
    .line 273
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@13
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@19
    .line 274
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_6

    #@1b
    .line 276
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@1d
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {v4, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    #@20
    .line 277
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x1

    #@21
    .line 285
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "sameIntent":Z
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    #@23
    .line 286
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@25
    invoke-virtual {v6, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    #@28
    move-result-object v0

    #@29
    .line 291
    :cond_2
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 292
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@2f
    .line 296
    .local v3, "old":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v3, :cond_3

    #@31
    if-eq v3, v4, :cond_3

    #@33
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@35
    const/4 v7, 0x4

    #@36
    if-ne v6, v7, :cond_3

    #@38
    .line 297
    const/4 v6, 0x3

    #@39
    invoke-direct {p0, v3, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@3c
    .line 301
    .end local v3    # "old":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_3
    if-eqz v1, :cond_7

    #@3e
    .line 303
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    #@40
    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 304
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 344
    :cond_4
    :goto_1
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@4a
    .line 345
    iput v8, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    #@4c
    .line 346
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4e
    .line 348
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@50
    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@53
    .line 351
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@55
    if-eqz v6, :cond_5

    #@57
    .line 352
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@59
    .line 354
    :cond_5
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    #@5b
    return-object v6

    #@5c
    .line 278
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "sameIntent":Z
    :cond_6
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@5e
    if-eqz v6, :cond_1

    #@60
    .line 279
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@62
    invoke-virtual {v6, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@65
    move-result v5

    #@66
    .line 280
    .local v5, "sameIntent":Z
    if-eqz v5, :cond_1

    #@68
    .line 282
    iget-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6a
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    #@6b
    .line 305
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "sameIntent":Z
    :cond_7
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6d
    if-eqz v6, :cond_4

    #@6f
    .line 308
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@71
    if-eq v0, v6, :cond_8

    #@73
    .line 309
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@75
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@77
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_d

    #@7f
    .line 310
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@81
    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@83
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@85
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v6

    #@89
    .line 308
    if-eqz v6, :cond_d

    #@8b
    .line 311
    :cond_8
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@8d
    if-nez v6, :cond_9

    #@8f
    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    #@92
    move-result v6

    #@93
    const/high16 v7, 0x20000000

    #@95
    and-int/2addr v6, v7

    #@96
    if-eqz v6, :cond_b

    #@98
    .line 314
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    #@9a
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@9d
    .line 315
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v6, Lcom/android/internal/content/ReferrerIntent;

    #@9f
    iget-object v7, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    #@a1
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@a4
    move-result-object v7

    #@a5
    invoke-direct {v6, p2, v7}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    #@a8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab
    .line 317
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    #@ad
    invoke-virtual {v6, v4, v2}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    #@b0
    .line 318
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@b2
    .line 319
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@b4
    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@b7
    .line 320
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@b9
    if-eqz v6, :cond_a

    #@bb
    .line 321
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@bd
    .line 323
    :cond_a
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    #@bf
    return-object v6

    #@c0
    .line 325
    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_b
    if-eqz v5, :cond_d

    #@c2
    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    #@c5
    move-result v6

    #@c6
    const/high16 v7, 0x4000000

    #@c8
    and-int/2addr v6, v7

    #@c9
    if-nez v6, :cond_d

    #@cb
    .line 329
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    #@cd
    .line 330
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    #@cf
    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    #@d2
    .line 331
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    #@d4
    if-eqz v6, :cond_c

    #@d6
    .line 332
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    #@d8
    .line 334
    :cond_c
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    #@da
    return-object v6

    #@db
    .line 341
    :cond_d
    invoke-direct {p0, v4, v8}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    #@de
    goto/16 :goto_1
.end method
