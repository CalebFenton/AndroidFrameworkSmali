.class public Lcom/android/internal/os/DebugStore;
.super Ljava/lang/Object;
.source "DebugStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/DebugStore$DebugStoreNative;,
        Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_EVENTS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DebugStore"

.field private static blacklist sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbeginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->beginEventNative(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smendEventNative(JLjava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/DebugStore;->endEventNative(JLjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smrecordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->recordEventNative(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;-><init>(Lcom/android/internal/os/DebugStore-IA;)V

    sput-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist beginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist endEventNative(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordBroadcastReceive(Landroid/content/Intent;I)J
    .registers 16
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pendingResultId"    # I

    .line 187
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 195
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    :goto_1f
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 197
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    move-object v2, v1

    :goto_2b
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 199
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_35
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string/jumbo v10, "pkg"

    const-string/jumbo v12, "prid"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 187
    const-string v2, "BcRcv"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordBroadcastReceiveReg(Landroid/content/Intent;I)J
    .registers 16
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pendingResultId"    # I

    .line 213
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 221
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    :goto_1f
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 223
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    move-object v2, v1

    :goto_2b
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 225
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_35
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string/jumbo v10, "pkg"

    const-string/jumbo v12, "prid"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 213
    const-string v2, "BcRcvReg"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordEventEnd(J)V
    .registers 4
    .param p0, "id"    # J

    .line 275
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->endEvent(JLjava/util/List;)V

    .line 276
    return-void
.end method

.method private static native blacklist recordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordFinish(I)V
    .registers 9
    .param p0, "pendingResultId"    # I

    .line 146
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string/jumbo v6, "prid"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 146
    const-string v2, "Finish"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 155
    return-void
.end method

.method public static greylist recordGoAsync(I)V
    .registers 9
    .param p0, "pendingResultId"    # I

    .line 128
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 130
    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string/jumbo v6, "prid"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 128
    const-string v2, "GoAsync"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 137
    return-void
.end method

.method public static greylist recordHandleBindApplication()J
    .registers 3

    .line 237
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "BindApp"

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordLongLooperMessage(ILjava/lang/String;J)V
    .registers 11
    .param p0, "messageCode"    # I
    .param p1, "targetClass"    # Ljava/lang/String;
    .param p2, "elapsedTimeMs"    # J

    .line 167
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 171
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string v1, "code"

    const-string/jumbo v3, "trgt"

    const-string v5, "elapsed"

    invoke-static/range {v1 .. v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 167
    const-string v2, "LooperMsg"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 176
    return-void
.end method

.method public static greylist recordScheduleReceiver()J
    .registers 5

    .line 247
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 249
    const-string/jumbo v3, "tname"

    const-string/jumbo v4, "tid"

    invoke-static {v3, v1, v4, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 247
    const-string v2, "SchRcv"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordScheduleRegisteredReceiver()J
    .registers 5

    .line 261
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 263
    const-string/jumbo v3, "tname"

    const-string/jumbo v4, "tid"

    invoke-static {v3, v1, v4, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 261
    const-string v2, "SchRcvReg"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceBind(ZLandroid/content/Intent;)J
    .registers 11
    .param p0, "isRebind"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .line 108
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 112
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 114
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_e
    move-object v3, v1

    :goto_f
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 116
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    move-object v3, v1

    :goto_1b
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 118
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_25
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 110
    const-string/jumbo v1, "rebind"

    const-string v3, "act"

    const-string v5, "cmp"

    const-string/jumbo v7, "pkg"

    invoke-static/range {v1 .. v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 108
    const-string v2, "SvcBind"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceCreate(Landroid/content/pm/ServiceInfo;)J
    .registers 6
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 90
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 94
    const/4 v1, 0x0

    if-eqz p0, :cond_8

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v2, v1

    :goto_9
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz p0, :cond_11

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :cond_11
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v3, "name"

    const-string/jumbo v4, "pkg"

    invoke-static {v3, v2, v4, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 90
    const-string v2, "SvcCreate"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceOnStart(IILandroid/content/Intent;)J
    .registers 14
    .param p0, "startId"    # I
    .param p1, "flags"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 67
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 71
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_12
    move-object v3, v1

    :goto_13
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 77
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v1

    :goto_1f
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 79
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_29
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 69
    const-string/jumbo v1, "stId"

    const-string v3, "flg"

    const-string v5, "act"

    const-string v7, "comp"

    const-string/jumbo v9, "pkg"

    invoke-static/range {v1 .. v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 67
    const-string v2, "SvcStart"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist setDebugStoreNative(Lcom/android/internal/os/DebugStore$DebugStoreNative;)V
    .registers 1
    .param p0, "nativeImpl"    # Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 55
    sput-object p0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 56
    return-void
.end method
