.class public final Lcom/android/internal/util/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/DumpUtils$Dump;,
        Lcom/android/internal/util/DumpUtils$KeyDumper;,
        Lcom/android/internal/util/DumpUtils$ValueDumper;
    }
.end annotation


# static fields
.field public static final blacklist CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static blacklist checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 178
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 99
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 101
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

    .line 102
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

    .line 101
    invoke-static {p2, v0}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 123
    .local v0, "uid":I
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_a4

    .line 132
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, ", uid="

    const-string v4, " from from pid="

    const-string v5, "Permission Denial: can\'t dump "

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {p2, v1}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 137
    return v6

    .line 128
    :sswitch_4a
    return v1

    .line 143
    :cond_4b
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 144
    .local v2, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "pkgs":[Ljava/lang/String;
    if-eqz v7, :cond_71

    .line 146
    array-length v8, v7

    move v9, v6

    :goto_5f
    if-ge v9, v8, :cond_71

    aget-object v10, v7, v9

    .line 147
    .local v10, "pkg":Ljava/lang/String;
    const/16 v11, 0x2b

    invoke-virtual {v2, v11, v0, v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v11

    sparse-switch v11, :sswitch_data_b6

    .line 146
    .end local v10    # "pkg":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 155
    .restart local v10    # "pkg":Ljava/lang/String;
    :sswitch_6f
    return v1

    .line 151
    :sswitch_70
    return v1

    .line 160
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " due to android:get_usage_stats app-op not allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {p2, v1}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 163
    return v6

    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_4a
        0x3e8 -> :sswitch_4a
        0x42b -> :sswitch_4a
        0x7d0 -> :sswitch_4a
    .end sparse-switch

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_70
        0x3 -> :sswitch_6f
    .end sparse-switch
.end method

.method public static blacklist dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "dump"    # Lcom/android/internal/util/DumpUtils$Dump;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "timeout"    # J

    .line 66
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 67
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    .line 77
    :cond_18
    const-string v1, "... timed out"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :goto_1d
    return-void
.end method

.method public static blacklist dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 349
    .local p2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p0    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    .end local p3    # "name":Ljava/lang/String;
    .local v0, "pw":Ljava/io/PrintWriter;
    .local v1, "prefix":Ljava/lang/String;
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    .local v3, "name":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 350
    return-void
.end method

.method public static blacklist dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V
    .registers 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "keyDumper"    # Lcom/android/internal/util/DumpUtils$KeyDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/DumpUtils$KeyDumper;",
            "Lcom/android/internal/util/DumpUtils$ValueDumper<",
            "TT;>;)V"
        }
    .end annotation

    .line 367
    .local p2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p5, "valueDumper":Lcom/android/internal/util/DumpUtils$ValueDumper;, "Lcom/android/internal/util/DumpUtils$ValueDumper<TT;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 368
    .local v0, "size":I
    if-nez v0, :cond_18

    .line 369
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const-string v1, "No "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string/jumbo v1, "s"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_18
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 377
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 378
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const-string v1, "(s):"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "prefix2":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v0, :cond_77

    .line 383
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 384
    .local v3, "key":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 385
    .local v4, "value":Ljava/lang/Object;, "TT;"
    if-eqz p4, :cond_4d

    .line 386
    invoke-interface {p4, v2, v3}, Lcom/android/internal/util/DumpUtils$KeyDumper;->dump(II)V

    goto :goto_60

    .line 388
    :cond_4d
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 390
    const-string v5, ": "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    const-string v5, "->"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    :goto_60
    if-nez v4, :cond_68

    .line 395
    const-string v5, "(null)"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_71

    .line 396
    :cond_68
    if-eqz p5, :cond_6e

    .line 397
    invoke-interface {p5, v4}, Lcom/android/internal/util/DumpUtils$ValueDumper;->dump(Ljava/lang/Object;)V

    goto :goto_71

    .line 399
    :cond_6e
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 401
    :goto_71
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 382
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 403
    .end local v2    # "i":I
    :cond_77
    return-void
.end method

.method public static blacklist dumpSparseArrayValues(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 357
    .local p2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v4, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p0    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .end local p3    # "name":Ljava/lang/String;
    .local v0, "pw":Ljava/io/PrintWriter;
    .local v1, "prefix":Ljava/lang/String;
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local v3, "name":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 360
    return-void
.end method

.method public static blacklist filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 4
    .param p0, "filterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRec::",
            "Landroid/content/ComponentName$WithComponentName;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "TTRec;>;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 279
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda0;-><init>()V

    return-object v0

    .line 283
    :cond_c
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 284
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda1;-><init>()V

    return-object v0

    .line 288
    :cond_1a
    const-string v0, "all-platform"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 289
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 293
    :cond_28
    const-string v0, "all-non-platform"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 294
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 298
    :cond_36
    const-string v0, "all-platform-critical"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 299
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda4;-><init>()V

    return-object v0

    .line 303
    :cond_44
    const-string v0, "all-platform-non-critical"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 304
    new-instance v0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda5;-><init>()V

    return-object v0

    .line 308
    :cond_52
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 309
    .local v0, "filterCname":Landroid/content/ComponentName;
    if-eqz v0, :cond_5e

    .line 311
    new-instance v1, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;-><init>(Landroid/content/ComponentName;)V

    return-object v1

    .line 316
    :cond_5e
    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v1

    .line 317
    .local v1, "id":I
    new-instance v2, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private static blacklist isCriticalPackage(Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 236
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 237
    return v0

    .line 240
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 241
    sget-object v2, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 242
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 245
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 229
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 221
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 213
    if-eqz p0, :cond_a

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 255
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 256
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 255
    :goto_19
    return v0
.end method

.method public static blacklist isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 267
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 268
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 267
    :goto_19
    return v0
.end method

.method public static blacklist isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "wcn"    # Landroid/content/ComponentName$WithComponentName;

    .line 205
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "cname"    # Landroid/content/ComponentName;

    .line 197
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isPlatformPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 186
    if-eqz p0, :cond_1c

    .line 187
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 188
    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 189
    const-string v0, "com.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 186
    :goto_1d
    return v0
.end method

.method static synthetic blacklist lambda$dumpSparseArrayValues$3(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "k"    # I

    .line 358
    const-string v0, "%s%s"

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 359
    return-void
.end method

.method static synthetic blacklist lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2
    .param p0, "rec"    # Landroid/content/ComponentName$WithComponentName;

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 3
    .param p0, "filterCname"    # Landroid/content/ComponentName;
    .param p1, "rec"    # Landroid/content/ComponentName$WithComponentName;

    .line 311
    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 6
    .param p0, "id"    # I
    .param p1, "filterString"    # Ljava/lang/String;
    .param p2, "rec"    # Landroid/content/ComponentName$WithComponentName;

    .line 318
    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 319
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_d

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p0, :cond_1f

    .line 320
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_1f
    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 319
    :goto_22
    return v1
.end method

.method private static blacklist logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    return-void
.end method
