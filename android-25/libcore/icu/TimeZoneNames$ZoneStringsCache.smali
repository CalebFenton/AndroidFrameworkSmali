.class public Llibcore/icu/TimeZoneNames$ZoneStringsCache;
.super Llibcore/util/BasicLruCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneStringsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/util/Locale;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@4
    .line 57
    return-void
.end method

.method private declared-synchronized internStrings([[Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [[Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 88
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    #@3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 89
    .local v1, "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v5, p1

    #@8
    if-ge v0, v5, :cond_2

    #@a
    .line 90
    const/4 v2, 0x1

    #@b
    .local v2, "j":I
    :goto_1
    const/4 v5, 0x5

    #@c
    if-ge v2, v5, :cond_1

    #@e
    .line 91
    aget-object v5, p1, v0

    #@10
    aget-object v4, v5, v2

    #@12
    .line 92
    .local v4, "original":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/String;

    #@18
    .line 93
    .local v3, "nonDuplicate":Ljava/lang/String;
    if-nez v3, :cond_0

    #@1a
    .line 94
    invoke-virtual {v1, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 90
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 96
    :cond_0
    aget-object v5, p1, v0

    #@22
    aput-object v3, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_2

    #@25
    .end local v0    # "i":I
    .end local v1    # "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "j":I
    .end local v3    # "nonDuplicate":Ljava/lang/String;
    .end local v4    # "original":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@26
    monitor-exit p0

    #@27
    throw v5

    #@28
    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v2    # "j":I
    :cond_2
    monitor-exit p0

    #@2c
    .line 87
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "locale"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 61
    check-cast p1, Ljava/util/Locale;

    #@2
    .end local p1    # "locale":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->create(Ljava/util/Locale;)[[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected create(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 22
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v16

    #@4
    .line 65
    .local v16, "start":J
    const-class v18, Ljava/lang/String;

    #@6
    const/16 v19, 0x2

    #@8
    move/from16 v0, v19

    #@a
    new-array v0, v0, [I

    #@c
    move-object/from16 v19, v0

    #@e
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-get0()[Ljava/lang/String;

    #@11
    move-result-object v20

    #@12
    move-object/from16 v0, v20

    #@14
    array-length v0, v0

    #@15
    move/from16 v20, v0

    #@17
    const/16 v21, 0x0

    #@19
    aput v20, v19, v21

    #@1b
    const/16 v20, 0x5

    #@1d
    const/16 v21, 0x1

    #@1f
    aput v20, v19, v21

    #@21
    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    check-cast v9, [[Ljava/lang/String;

    #@27
    .line 66
    .local v9, "result":[[Ljava/lang/String;
    const/4 v8, 0x0

    #@28
    .local v8, "i":I
    :goto_0
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-get0()[Ljava/lang/String;

    #@2b
    move-result-object v18

    #@2c
    move-object/from16 v0, v18

    #@2e
    array-length v0, v0

    #@2f
    move/from16 v18, v0

    #@31
    move/from16 v0, v18

    #@33
    if-ge v8, v0, :cond_0

    #@35
    .line 67
    aget-object v18, v9, v8

    #@37
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-get0()[Ljava/lang/String;

    #@3a
    move-result-object v19

    #@3b
    aget-object v19, v19, v8

    #@3d
    const/16 v20, 0x0

    #@3f
    aput-object v19, v18, v20

    #@41
    .line 66
    add-int/lit8 v8, v8, 0x1

    #@43
    goto :goto_0

    #@44
    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@47
    move-result-wide v14

    #@48
    .line 71
    .local v14, "nativeStart":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@4b
    move-result-object v18

    #@4c
    move-object/from16 v0, v18

    #@4e
    invoke-static {v0, v9}, Llibcore/icu/TimeZoneNames;->-wrap0(Ljava/lang/String;[[Ljava/lang/String;)V

    #@51
    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@54
    move-result-wide v12

    #@55
    .line 74
    .local v12, "nativeEnd":J
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v9}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    #@5a
    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5d
    move-result-wide v6

    #@5e
    .line 79
    .local v6, "end":J
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@60
    sub-long v20, v12, v14

    #@62
    move-object/from16 v0, v18

    #@64
    move-wide/from16 v1, v20

    #@66
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@69
    move-result-wide v10

    #@6a
    .line 80
    .local v10, "nativeDuration":J
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@6c
    sub-long v20, v6, v16

    #@6e
    move-object/from16 v0, v18

    #@70
    move-wide/from16 v1, v20

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@75
    move-result-wide v4

    #@76
    .line 81
    .local v4, "duration":J
    new-instance v18, Ljava/lang/StringBuilder;

    #@78
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v19, "Loaded time zone names for \""

    #@7e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v18

    #@82
    move-object/from16 v0, v18

    #@84
    move-object/from16 v1, p1

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v18

    #@8a
    const-string/jumbo v19, "\" in "

    #@8d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v18

    #@91
    move-object/from16 v0, v18

    #@93
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@96
    move-result-object v18

    #@97
    const-string/jumbo v19, "ms"

    #@9a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v18

    #@9e
    .line 82
    const-string/jumbo v19, " ("

    #@a1
    .line 81
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v18

    #@a5
    move-object/from16 v0, v18

    #@a7
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v18

    #@ab
    .line 82
    const-string/jumbo v19, "ms in ICU)"

    #@ae
    .line 81
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v18

    #@b2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v18

    #@b6
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    #@b9
    .line 83
    return-object v9
.end method
