.class public Landroid/net/connectivity/com/android/net/module/util/BpfDump;
.super Ljava/lang/Object;
.source "BpfDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;
    }
.end annotation


# static fields
.field private static final blacklist BASE64_DELIMITER:Ljava/lang/String; = ","


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpMap(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiFunction;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "mapName"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "TK;TV;>;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "TK;TV;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p0, "map":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    .local p4, "entryToString":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TK;TV;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :cond_32
    :try_start_32
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p4}, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/util/function/BiFunction;)V

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->forEach(Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;)V
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_32 .. :try_end_3a} :catch_3b

    .line 133
    goto :goto_58

    .line 131
    :catch_3b
    move-exception v0

    .line 132
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map dump end with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    invoke-static {v2}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_58
    return-void
.end method

.method public static blacklist dumpMap(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/function/BiFunction;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "mapName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "TK;TV;>;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "TK;TV;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p0, "map":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    .local p3, "entryToString":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TK;TV;Ljava/lang/String;>;"
    const-string v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->dumpMap(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiFunction;)V

    .line 110
    return-void
.end method

.method public static blacklist dumpMapStatus(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "mapName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "TK;TV;>;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    .local p0, "map":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->dumpMapStatus(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;)V

    .line 151
    return-void
.end method

.method public static blacklist dumpMapStatus(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "mapName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "deps"    # Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "TK;TV;>;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;",
            ")V"
        }
    .end annotation

    .line 159
    .local p0, "map":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    const-string v0, ")"

    if-eqz p0, :cond_1b

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    return-void

    .line 164
    :cond_1b
    :try_start_1b
    sget v1, Landroid/system/OsConstants;->R_OK:I

    invoke-virtual {p4, p3, v1}, Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;->access(Ljava/lang/String;I)Z

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": NULL(map is pinned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_1b .. :try_end_3e} :catch_3f

    .line 169
    goto :goto_6e

    .line 166
    :catch_3f
    move-exception v1

    .line 167
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": NULL(map is not pinned to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    .line 168
    invoke-static {v3}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_6e
    return-void
.end method

.method public static blacklist dumpRawMap(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "TK;TV;>;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 90
    .local p0, "map":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    if-nez p0, :cond_8

    .line 91
    :try_start_2
    const-string v0, "BPF map is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    return-void

    .line 94
    :cond_8
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 95
    const-string v0, "No entries"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_14
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->forEach(Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_1c} :catch_1d

    .line 101
    goto :goto_3a

    .line 99
    :catch_1d
    move-exception v0

    .line 100
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map dump end with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    invoke-static {v2}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_3a
    return-void
.end method

.method public static blacklist fromBase64EncodedString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .param p2, "base64Str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    .local p0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "keyValueStrs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 79
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->parseStruct(Ljava/lang/Class;Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    .line 80
    .local v0, "k":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {p1, v2}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->parseStruct(Ljava/lang/Class;Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v2

    .line 81
    .local v2, "v":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 76
    .end local v0    # "k":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .end local v2    # "v":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid base64Str ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), base64Str must contain exactly one delimiter \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$dumpMap$1(Ljava/io/PrintWriter;Ljava/util/function/BiFunction;Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "entryToString"    # Ljava/util/function/BiFunction;
    .param p2, "key"    # Landroid/net/connectivity/com/android/net/module/util/Struct;
    .param p3, "value"    # Landroid/net/connectivity/com/android/net/module/util/Struct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 125
    if-eqz p3, :cond_1f

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 128
    :cond_1f
    const-string v0, "Entry is deleted while dumping, iterating from first entry"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :goto_24
    return-void
.end method

.method static synthetic blacklist lambda$dumpRawMap$0(Ljava/io/PrintWriter;Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "k"    # Landroid/net/connectivity/com/android/net/module/util/Struct;
    .param p2, "v"    # Landroid/net/connectivity/com/android/net/module/util/Struct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 98
    invoke-static {p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->toBase64EncodedString(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist parseStruct(Ljava/lang/Class;Ljava/lang/String;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .registers 5
    .param p1, "base64Str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 62
    .local p0, "structClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 63
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 64
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-static {p0, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->parse(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/Struct;

    return-object v2
.end method

.method public static blacklist toBase64EncodedString(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "V:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(TK;TV;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 47
    .local p0, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p1, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v0

    .line 48
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "keyBase64Str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v5

    .line 51
    .local v5, "valueBytes":[B
    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "valueBase64Str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
