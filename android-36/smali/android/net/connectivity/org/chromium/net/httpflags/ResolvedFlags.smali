.class public final Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;
.super Ljava/lang/Object;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    }
.end annotation


# instance fields
.field private final blacklist mFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smparseVersionString(Ljava/lang/String;)[I
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->parseVersionString(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->mFlags:Ljava/util/Map;

    .line 216
    return-void
.end method

.method private static blacklist parseVersionString(Ljava/lang/String;)[I
    .registers 5
    .param p0, "versionString"    # Ljava/lang/String;

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 231
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 233
    .local v1, "components":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_24

    .line 234
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 236
    .end local v2    # "i":I
    :cond_24
    return-object v1

    .line 229
    .end local v0    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v1    # "components":[I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version string is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "versionString":Ljava/lang/String;
    throw v0
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2d} :catch_2d

    .line 237
    .restart local p0    # "versionString":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 238
    .local v0, "exception":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse HTTP flags version string: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist resolve(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;
    .registers 11
    .param p0, "flags"    # Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cronetVersion"    # Ljava/lang/String;

    .line 196
    const-string v0, "Cronet ResolvedFlags#resolve"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 197
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->parseVersionString(Ljava/lang/String;)[I

    move-result-object v1

    .line 198
    .local v1, "parsedCronetVersion":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v2, "resolvedFlags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_70

    .line 201
    .local v4, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    :try_start_27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v5, p1, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->-$$Nest$smresolve(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Ljava/lang/String;[I)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    move-result-object v5

    .line 202
    .local v5, "value":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    if-nez v5, :cond_34

    goto :goto_1b

    .line 203
    :cond_34
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_3d} :catch_3f
    .catchall {:try_start_27 .. :try_end_3d} :catchall_70

    .line 207
    .end local v5    # "value":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    nop

    .line 208
    .end local v4    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    goto :goto_1b

    .line 204
    .restart local v4    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    :catch_3f
    move-exception v3

    .line 205
    .local v3, "exception":Ljava/lang/RuntimeException;
    :try_start_40
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve HTTP flag `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 206
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "`"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "cronetVersion":Ljava/lang/String;
    throw v5

    .line 209
    .end local v3    # "exception":Ljava/lang/RuntimeException;
    .end local v4    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .restart local p1    # "appId":Ljava/lang/String;
    .restart local p2    # "cronetVersion":Ljava/lang/String;
    :cond_65
    new-instance v3, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    invoke-direct {v3, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;-><init>(Ljava/util/Map;)V
    :try_end_6a
    .catchall {:try_start_40 .. :try_end_6a} :catchall_70

    .line 210
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 209
    :cond_6f
    return-object v3

    .line 196
    .end local v1    # "parsedCronetVersion":[I
    .end local v2    # "resolvedFlags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    :catchall_70
    move-exception v1

    if-eqz v0, :cond_7b

    :try_start_73
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_7b
    throw v1
.end method


# virtual methods
.method public blacklist flags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->mFlags:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
