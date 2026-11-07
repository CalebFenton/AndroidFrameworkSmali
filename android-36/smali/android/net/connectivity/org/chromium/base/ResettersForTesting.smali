.class public Landroid/net/connectivity/org/chromium/base/ResettersForTesting;
.super Ljava/lang/Object;
.source "ResettersForTesting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ResettersForTesting$State;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sClassResetters:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIsFlushing:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMethodResetters:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    nop

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    sput v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist afterClassHooksDidExecute()V
    .registers 2

    .line 225
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    nop

    .line 228
    const/4 v1, 0x1

    :try_start_5
    sput v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    .line 231
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sMethodResetters:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->flushResetters(Ljava/util/LinkedHashSet;)V

    .line 233
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sClassResetters:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->flushResetters(Ljava/util/LinkedHashSet;)V

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    throw v1

    :catchall_15
    move-exception v1

    goto :goto_13
.end method

.method public static blacklist afterHooksDidExecute()V
    .registers 2

    .line 215
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    nop

    .line 217
    const/4 v1, 0x3

    :try_start_5
    sput v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    .line 219
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sMethodResetters:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->flushResetters(Ljava/util/LinkedHashSet;)V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    throw v1

    :catchall_10
    move-exception v1

    goto :goto_e
.end method

.method public static blacklist beforeClassHooksWillExecute()V
    .registers 2

    .line 193
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    nop

    .line 196
    const/4 v1, 0x2

    :try_start_5
    sput v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    .line 198
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sClassResetters:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->flushResetters(Ljava/util/LinkedHashSet;)V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    throw v1

    :catchall_10
    move-exception v1

    goto :goto_e
.end method

.method public static blacklist beforeHooksWillExecute()V
    .registers 2

    .line 204
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    nop

    .line 207
    const/4 v1, 0x4

    :try_start_5
    sput v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    .line 209
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sMethodResetters:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->flushResetters(Ljava/util/LinkedHashSet;)V

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    throw v1

    :catchall_10
    move-exception v1

    goto :goto_e
.end method

.method public static blacklist enable()V
    .registers 2

    .line 239
    nop

    .line 240
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    nop

    .line 242
    const/4 v1, 0x1

    :try_start_6
    sput v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    .line 243
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sMethodResetters:Ljava/util/LinkedHashSet;

    .line 244
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sClassResetters:Ljava/util/LinkedHashSet;

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    throw v1

    :catchall_1a
    move-exception v1

    goto :goto_18
.end method

.method private static blacklist flushResetters(Ljava/util/LinkedHashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p0, "activeSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Runnable;>;"
    nop

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v0, "resetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 172
    const/4 v1, 0x1

    sput-boolean v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sIsFlushing:Z

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "firstError":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 178
    .local v3, "resetter":Ljava/lang/Runnable;
    :try_start_20
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    .line 183
    goto :goto_28

    .line 179
    :catchall_24
    move-exception v4

    .line 180
    .local v4, "t":Ljava/lang/Throwable;
    if-nez v1, :cond_28

    .line 181
    move-object v1, v4

    .line 184
    .end local v3    # "resetter":Ljava/lang/Runnable;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_28
    :goto_28
    goto :goto_14

    .line 185
    :cond_29
    const/4 v2, 0x0

    sput-boolean v2, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sIsFlushing:Z

    .line 186
    if-nez v1, :cond_2f

    .line 189
    return-void

    .line 187
    :cond_2f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist getState()I
    .registers 2

    .line 254
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    sget v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    monitor-exit v0

    return v1

    .line 256
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist register(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 133
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-nez v0, :cond_5

    .line 134
    return-void

    .line 136
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_8
    sget-boolean v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sIsFlushing:Z

    if-nez v1, :cond_2d

    .line 146
    sget v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sState:I

    packed-switch v1, :pswitch_data_38

    goto :goto_2b

    .line 151
    :pswitch_12
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sMethodResetters:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 150
    :pswitch_18
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sMethodResetters:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 149
    :pswitch_1e
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sClassResetters:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 148
    :pswitch_24
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->sClassResetters:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 147
    :pswitch_2a
    nop

    .line 153
    :goto_2b
    monitor-exit v0

    .line 154
    return-void

    .line 138
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ResettersForTesting.register() called from within a resetting callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "runnable":Ljava/lang/Runnable;
    throw v1

    .line 153
    .restart local p0    # "runnable":Ljava/lang/Runnable;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method
