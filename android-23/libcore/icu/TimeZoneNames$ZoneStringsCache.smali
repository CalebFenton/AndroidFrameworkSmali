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
    .line 57
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@4
    .line 56
    return-void
.end method

.method private declared-synchronized internStrings([[Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [[Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 87
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    #@3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 88
    .local v1, "internTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v5, p1

    #@8
    if-ge v0, v5, :cond_2

    #@a
    .line 89
    const/4 v2, 0x1

    #@b
    .local v2, "j":I
    :goto_1
    const/4 v5, 0x5

    #@c
    if-ge v2, v5, :cond_1

    #@e
    .line 90
    aget-object v5, p1, v0

    #@10
    aget-object v4, v5, v2

    #@12
    .line 91
    .local v4, "original":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/String;

    #@18
    .line 92
    .local v3, "nonDuplicate":Ljava/lang/String;
    if-nez v3, :cond_0

    #@1a
    .line 93
    invoke-virtual {v1, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 89
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 95
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
    .line 88
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
    .line 86
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "locale"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
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
    .locals 20
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v14

    #@4
    .line 64
    .local v14, "start":J
    const-class v16, Ljava/lang/String;

    #@6
    const/16 v17, 0x2

    #@8
    move/from16 v0, v17

    #@a
    new-array v0, v0, [I

    #@c
    move-object/from16 v17, v0

    #@e
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-get0()[Ljava/lang/String;

    #@11
    move-result-object v18

    #@12
    move-object/from16 v0, v18

    #@14
    array-length v0, v0

    #@15
    move/from16 v18, v0

    #@17
    const/16 v19, 0x0

    #@19
    aput v18, v17, v19

    #@1b
    const/16 v18, 0x5

    #@1d
    const/16 v19, 0x1

    #@1f
    aput v18, v17, v19

    #@21
    invoke-static/range {v16 .. v17}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    check-cast v7, [[Ljava/lang/String;

    #@27
    .line 65
    .local v7, "result":[[Ljava/lang/String;
    const/4 v6, 0x0

    #@28
    .local v6, "i":I
    :goto_0
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-get0()[Ljava/lang/String;

    #@2b
    move-result-object v16

    #@2c
    move-object/from16 v0, v16

    #@2e
    array-length v0, v0

    #@2f
    move/from16 v16, v0

    #@31
    move/from16 v0, v16

    #@33
    if-ge v6, v0, :cond_0

    #@35
    .line 66
    aget-object v16, v7, v6

    #@37
    invoke-static {}, Llibcore/icu/TimeZoneNames;->-get0()[Ljava/lang/String;

    #@3a
    move-result-object v17

    #@3b
    aget-object v17, v17, v6

    #@3d
    const/16 v18, 0x0

    #@3f
    aput-object v17, v16, v18

    #@41
    .line 65
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@47
    move-result-wide v12

    #@48
    .line 70
    .local v12, "nativeStart":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@4b
    move-result-object v16

    #@4c
    move-object/from16 v0, v16

    #@4e
    invoke-static {v0, v7}, Llibcore/icu/TimeZoneNames;->-wrap0(Ljava/lang/String;[[Ljava/lang/String;)V

    #@51
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@54
    move-result-wide v10

    #@55
    .line 73
    .local v10, "nativeEnd":J
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v7}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    #@5a
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5d
    move-result-wide v4

    #@5e
    .line 78
    .local v4, "end":J
    sub-long v8, v10, v12

    #@60
    .line 79
    .local v8, "nativeDuration":J
    sub-long v2, v4, v14

    #@62
    .line 80
    .local v2, "duration":J
    new-instance v16, Ljava/lang/StringBuilder;

    #@64
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v17, "Loaded time zone names for \""

    #@6a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v16

    #@6e
    move-object/from16 v0, v16

    #@70
    move-object/from16 v1, p1

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v16

    #@76
    const-string/jumbo v17, "\" in "

    #@79
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v16

    #@7d
    move-object/from16 v0, v16

    #@7f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@82
    move-result-object v16

    #@83
    const-string/jumbo v17, "ms"

    #@86
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v16

    #@8a
    .line 81
    const-string/jumbo v17, " ("

    #@8d
    .line 80
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v16

    #@91
    move-object/from16 v0, v16

    #@93
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@96
    move-result-object v16

    #@97
    .line 81
    const-string/jumbo v17, "ms in ICU)"

    #@9a
    .line 80
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v16

    #@9e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v16

    #@a2
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    #@a5
    .line 82
    return-object v7
.end method
