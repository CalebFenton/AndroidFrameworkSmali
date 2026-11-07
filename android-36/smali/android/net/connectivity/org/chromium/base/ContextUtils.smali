.class public Landroid/net/connectivity/org/chromium/base/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist RECEIVER_EXPORTED:I = 0x2

.field public static final blacklist RECEIVER_NOT_EXPORTED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "ContextUtils"

.field private static blacklist sApplicationContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfetchAppSharedPreferences()Landroid/content/SharedPreferences;
    .registers 1

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->fetchAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 27
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 191
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_15

    .line 192
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 194
    :cond_d
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    .line 197
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist fetchAppSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .line 90
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskWrites()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 91
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 92
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 91
    :cond_f
    return-object v1

    .line 90
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method

.method public static blacklist getAppSharedPreferences()Landroid/content/SharedPreferences;
    .registers 1

    .line 103
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->-$$Nest$sfgetsSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 61
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static blacklist getProcessName()Ljava/lang/String;
    .registers 1

    .line 162
    nop

    .line 163
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist initApplicationContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "appContext"    # Landroid/content/Context;

    .line 75
    nop

    .line 78
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->initJavaSideApplicationContext(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static blacklist initApplicationContextForTests(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .line 114
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    .line 115
    .local v0, "prevValue":Landroid/content/Context;
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->initJavaSideApplicationContext(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->-$$Nest$sfgetsSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    .local v1, "prevPrefs":Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->fetchAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->-$$Nest$sfputsSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 122
    new-instance v2, Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroid/net/connectivity/org/chromium/base/ContextUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method private static blacklist initJavaSideApplicationContext(Landroid/content/Context;)V
    .registers 2
    .param p0, "appContext"    # Landroid/content/Context;

    .line 130
    nop

    .line 132
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_f

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_f

    .line 133
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 135
    :cond_f
    sput-object p0, Landroid/net/connectivity/org/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public static blacklist isIsolatedProcess()Z
    .registers 1

    .line 144
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    return v0
.end method

.method public static blacklist isProcess64Bit()Z
    .registers 1

    .line 179
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static blacklist isSdkSandboxProcess()Z
    .registers 2

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_b

    .line 152
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    return v0

    .line 154
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$initApplicationContextForTests$0(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 2
    .param p0, "prevValue"    # Landroid/content/Context;
    .param p1, "prevPrefs"    # Landroid/content/SharedPreferences;

    .line 124
    sput-object p0, Landroid/net/connectivity/org/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    .line 125
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->-$$Nest$sfputsSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 126
    return-void
.end method

.method private static blacklist registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 310
    nop

    .line 311
    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "permission"    # Ljava/lang/String;

    .line 245
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "permission":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    .local v3, "permission":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist registerNonExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 283
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .local v0, "context":Landroid/content/Context;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist registerNonExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "scheduler"    # Landroid/os/Handler;

    .line 294
    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v0, "context":Landroid/content/Context;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    .local v4, "scheduler":Landroid/os/Handler;
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 221
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .local v0, "context":Landroid/content/Context;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "scheduler"    # Landroid/os/Handler;

    .line 227
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v0, "context":Landroid/content/Context;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    .local v4, "scheduler":Landroid/os/Handler;
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
