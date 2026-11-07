.class public final Landroid/telephony/AnomalyReporter;
.super Ljava/lang/Object;
.source "AnomalyReporter.java"


# static fields
.field private static final blacklist KEY_IS_TELEPHONY_ANOMALY_REPORT_ENABLED:Ljava/lang/String; = "is_telephony_anomaly_report_enabled"

.field private static final blacklist TAG:Ljava/lang/String; = "AnomalyReporter"

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sDebugPackageName:Ljava/lang/String;

.field private static blacklist sEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    .line 66
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    .line 73
    sput-object v0, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 210
    sget-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 211
    :cond_5
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 212
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v1, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "Requires DUMP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_27

    const-string v2, "Yes"

    goto :goto_29

    :cond_27
    const-string v2, "No"

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string v1, "Anomaly Counts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 217
    sget-object v1, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 218
    .local v2, "event":Ljava/util/UUID;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 219
    .end local v2    # "event":Ljava/util/UUID;
    goto :goto_5e

    .line 220
    :cond_8b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 221
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 222
    return-void
.end method

.method public static blacklist initialize(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 165
    if-eqz p0, :cond_9c

    .line 170
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "This app does not have privileges to send debug events"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sput-object p0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    .line 177
    sget-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 178
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_14

    return-void

    .line 179
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.action.ANOMALY_REPORTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1c0000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_9b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_9b

    .line 185
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "AnomalyReporter"

    if-le v2, v3, :cond_38

    .line 186
    const-string v2, "Multiple Anomaly Receivers installed."

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 190
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_52

    .line 191
    const-string v5, "Found package without activity"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    goto :goto_3c

    .line 193
    :cond_52
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_79

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found package without proper permissions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    goto :goto_3c

    .line 201
    :cond_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a valid package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v2, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    .line 203
    nop

    .line 206
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_9a
    return-void

    .line 184
    :cond_9b
    :goto_9b
    return-void

    .line 166
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AnomalyReporter needs a non-null context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V
    .registers 3
    .param p0, "eventId"    # Ljava/util/UUID;
    .param p1, "description"    # Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public static blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V
    .registers 11
    .param p0, "eventId"    # Ljava/util/UUID;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "carrierId"    # I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportAnomaly: Received anomaly event report with eventId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and description= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnomalyReporter"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    if-nez v0, :cond_3e

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnomalyReporter not yet initialized, dropping event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 116
    :cond_3e
    nop

    .line 119
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 120
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    .line 116
    const/16 v2, 0x1cd

    move v3, p2

    .end local p2    # "carrierId":I
    .local v3, "carrierId":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIJJ)V

    .line 125
    :try_start_4d
    const-string/jumbo p2, "telephony"

    const-string/jumbo v0, "is_telephony_anomaly_report_enabled"

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_58} :catch_ae

    .line 128
    .local p2, "isAnomalyReportEnabledFromServer":Z
    if-nez p2, :cond_5b

    return-void

    .line 132
    .end local p2    # "isAnomalyReportEnabledFromServer":Z
    :cond_5b
    nop

    .line 136
    sget-object p2, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_73

    sget-object p2, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_74

    :cond_73
    move p2, v0

    :goto_74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 137
    .local p2, "count":Ljava/lang/Integer;
    sget-object v1, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_84

    return-void

    .line 143
    :cond_84
    sget-object v0, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    if-nez v0, :cond_89

    return-void

    .line 145
    :cond_89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.ANOMALY_REPORTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "dbgIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const-string v2, "android.telephony.extra.ANOMALY_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    if-eqz p1, :cond_a1

    .line 148
    const-string v1, "android.telephony.extra.ANOMALY_DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_a1
    sget-object v1, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    sget-object v1, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 152
    return-void

    .line 129
    .end local v0    # "dbgIntent":Landroid/content/Intent;
    .end local p2    # "count":Ljava/lang/Integer;
    :catch_ae
    move-exception v0

    move-object p2, v0

    .line 130
    .local p2, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read device config, dropping event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
