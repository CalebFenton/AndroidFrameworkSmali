.class public final Lcom/android/internal/telephony/util/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field public static final blacklist DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final blacklist FORCE_VERBOSE_STATE_LOGGING:Z = false

.field public static blacklist IS_DEBUGGABLE:Z = false

.field public static blacklist IS_USER:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    .line 65
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v1, v2

    :cond_17
    sput-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 67
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist apnEditedStatusToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "apnEditStatus"    # I

    .line 243
    packed-switch p0, :pswitch_data_2c

    .line 249
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 248
    :pswitch_1d
    const-string v0, "CARRIER_DELETED"

    goto :goto_2b

    .line 247
    :pswitch_20
    const-string v0, "CARRIER_EDITED"

    goto :goto_2b

    .line 246
    :pswitch_23
    const-string v0, "USER_DELETED"

    goto :goto_2b

    .line 245
    :pswitch_26
    const-string v0, "USER_EDITED"

    goto :goto_2b

    .line 244
    :pswitch_29
    const-string v0, "UNEDITED"

    .line 243
    :goto_2b
    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_3
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 75
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist dataStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 203
    packed-switch p0, :pswitch_data_32

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_1d
    const-string v0, "HANDOVERINPROGRESS"

    return-object v0

    .line 208
    :pswitch_20
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 207
    :pswitch_23
    const-string v0, "SUSPENDED"

    return-object v0

    .line 206
    :pswitch_26
    const-string v0, "CONNECTED"

    return-object v0

    .line 205
    :pswitch_29
    const-string v0, "CONNECTING"

    return-object v0

    .line 204
    :pswitch_2c
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 210
    :pswitch_2f
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_32
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 88
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 167
    .local v0, "ret":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 169
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v3, [I

    if-nez v4, :cond_d

    instance-of v4, v3, [J

    if-nez v4, :cond_d

    instance-of v4, v3, [D

    if-nez v4, :cond_d

    instance-of v4, v3, [Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-nez v4, :cond_d

    if-eqz v3, :cond_d

    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_d

    instance-of v4, v3, [Z

    if-eqz v4, :cond_4c

    .line 175
    goto :goto_d

    .line 177
    :cond_4c
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5b

    .line 178
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    goto :goto_d

    .line 181
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 182
    goto :goto_d

    .line 184
    :cond_6c
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 185
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_d

    .line 186
    :cond_70
    return-object v0
.end method

.method public static blacklist getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 102
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 103
    :cond_e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 104
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing ComponentInfo!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "userHandle":Landroid/os/UserHandle;
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 273
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_15

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 274
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 276
    :cond_15
    return-object v0
.end method

.method private static blacklist isPackageSMSRoleHolderForUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 339
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 340
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    const-string v1, "android.app.role.SMS"

    invoke-virtual {v0, v1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 345
    .local v1, "smsRoleHolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_21

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 346
    const/4 v2, 0x1

    return v2

    .line 348
    :cond_21
    return v3
.end method

.method private static blacklist isUidForeground(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 331
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 332
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 334
    .local v1, "result":Z
    :goto_15
    return v1
.end method

.method public static blacklist isValidCountryCode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 374
    const-string v0, "^[A-Za-z]{2}$"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isValidPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    .line 361
    :cond_e
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 362
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 363
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 364
    return v1

    .line 366
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 359
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static blacklist isValidPlmn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "plmn"    # Ljava/lang/String;

    .line 382
    const-string v0, "^(?:[0-9]{3})(?:[0-9]{2}|[0-9]{3})$"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isValidService(I)Z
    .registers 3
    .param p0, "serviceType"    # I

    .line 390
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/4 v1, 0x6

    if-le p0, v1, :cond_7

    goto :goto_8

    .line 393
    :cond_7
    return v0

    .line 391
    :cond_8
    :goto_8
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$runWithCleanCallingIdentity$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 136
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static blacklist mobileDataPolicyToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mobileDataPolicy"    # I

    .line 224
    packed-switch p0, :pswitch_data_26

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_1d
    const-string v0, "AUTO_DATA_SWITCH"

    return-object v0

    .line 228
    :pswitch_20
    const-string v0, "MMS_ALWAYS_ALLOWED"

    return-object v0

    .line 226
    :pswitch_23
    const-string v0, "DATA_ON_NON_DEFAULT_DURING_VOICE_CALL"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 154
    .local p0, "action":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 156
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return-object v2

    .line 158
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw v2
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 118
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    throw v2
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p0, "action"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 134
    if-eqz p0, :cond_10

    .line 135
    if-eqz p1, :cond_d

    .line 136
    new-instance v0, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 138
    :cond_d
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    .line 141
    :cond_10
    :goto_10
    return-void
.end method

.method public static blacklist showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    .local v0, "token":J
    :try_start_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 294
    .local v2, "callingUserHandle":Landroid/os/UserHandle;
    invoke-static {p0, p2}, Lcom/android/internal/telephony/util/TelephonyUtils;->isUidForeground(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 295
    invoke-static {p0, p3, v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->isPackageSMSRoleHolderForUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_78

    .line 300
    :cond_15
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 302
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v4
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_7c

    const-string v5, "TelephonyUtils"

    if-nez v4, :cond_3f

    .line 303
    :try_start_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to send message with an inactive subscription "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_7c

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return-void

    .line 306
    :cond_3f
    :try_start_3f
    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 307
    .local v4, "associatedUserHandle":Landroid/os/UserHandle;
    const-class v6, Landroid/os/UserManager;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 309
    .local v6, "um":Landroid/os/UserManager;
    if-eqz v4, :cond_73

    .line 310
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 309
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 314
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v7

    .line 315
    invoke-virtual {v7}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v7

    .line 316
    invoke-virtual {v7}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v7

    .line 312
    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_7c

    .line 317
    .local v7, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_73

    .line 319
    :try_start_69
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->showSwitchToManagedProfileDialog()V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7c

    .line 322
    goto :goto_73

    .line 320
    :catch_6d
    move-exception v8

    .line 321
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_6e
    const-string v9, "Failed to launch switch to managed profile dialog."

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_7c

    .line 326
    .end local v2    # "callingUserHandle":Landroid/os/UserHandle;
    .end local v3    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v4    # "associatedUserHandle":Landroid/os/UserHandle;
    .end local v6    # "um":Landroid/os/UserManager;
    .end local v7    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    nop

    .line 328
    return-void

    .line 326
    .restart local v2    # "callingUserHandle":Landroid/os/UserHandle;
    :cond_78
    :goto_78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    return-void

    .line 326
    .end local v2    # "callingUserHandle":Landroid/os/UserHandle;
    :catchall_7c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    throw v2
.end method

.method public static blacklist waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V
    .registers 4
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeoutMs"    # J

    .line 192
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 194
    goto :goto_7

    .line 193
    :catch_6
    move-exception v0

    .line 195
    :goto_7
    return-void
.end method
