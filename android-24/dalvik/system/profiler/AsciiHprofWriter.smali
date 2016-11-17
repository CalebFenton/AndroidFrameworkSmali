.class public final Ldalvik/system/profiler/AsciiHprofWriter;
.super Ljava/lang/Object;
.source "AsciiHprofWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/AsciiHprofWriter$1;
    }
.end annotation


# static fields
.field private static final SAMPLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ldalvik/system/profiler/HprofData;

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Ldalvik/system/profiler/AsciiHprofWriter$1;

    #@2
    invoke-direct {v0}, Ldalvik/system/profiler/AsciiHprofWriter$1;-><init>()V

    #@5
    .line 93
    sput-object v0, Ldalvik/system/profiler/AsciiHprofWriter;->SAMPLE_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "data"    # Ldalvik/system/profiler/HprofData;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@5
    .line 46
    new-instance v0, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    iput-object v0, p0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@c
    .line 44
    return-void
.end method

.method private write()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/profiler/HprofData;->getThreadHistory()Ljava/util/List;

    #@9
    move-result-object v17

    #@a
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v7

    #@e
    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v17

    #@12
    if-eqz v17, :cond_0

    #@14
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@1a
    .line 51
    .local v5, "e":Ldalvik/system/profiler/HprofData$ThreadEvent;
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@1e
    move-object/from16 v17, v0

    #@20
    move-object/from16 v0, v17

    #@22
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@25
    goto :goto_0

    #@26
    .line 55
    .end local v5    # "e":Ldalvik/system/profiler/HprofData$ThreadEvent;
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@2c
    move-object/from16 v17, v0

    #@2e
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/profiler/HprofData;->getSamples()Ljava/util/Set;

    #@31
    move-result-object v17

    #@32
    move-object/from16 v0, v17

    #@34
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@37
    .line 56
    .local v12, "samples":Ljava/util/List;, "Ljava/util/List<Ldalvik/system/profiler/HprofData$Sample;>;"
    sget-object v17, Ldalvik/system/profiler/AsciiHprofWriter;->SAMPLE_COMPARATOR:Ljava/util/Comparator;

    #@39
    move-object/from16 v0, v17

    #@3b
    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3e
    .line 57
    const/16 v16, 0x0

    #@40
    .line 58
    .local v16, "total":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v11

    #@44
    .local v11, "sample$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v17

    #@48
    if-eqz v17, :cond_2

    #@4a
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v10

    #@4e
    check-cast v10, Ldalvik/system/profiler/HprofData$Sample;

    #@50
    .line 59
    .local v10, "sample":Ldalvik/system/profiler/HprofData$Sample;
    iget-object v13, v10, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@52
    .line 60
    .local v13, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    iget v4, v10, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@54
    .line 61
    .local v4, "count":I
    add-int v16, v16, v4

    #@56
    .line 62
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@5a
    move-object/from16 v17, v0

    #@5c
    const-string/jumbo v18, "TRACE %d: (thread=%d)\n"

    #@5f
    const/16 v19, 0x2

    #@61
    move/from16 v0, v19

    #@63
    new-array v0, v0, [Ljava/lang/Object;

    #@65
    move-object/from16 v19, v0

    #@67
    .line 63
    iget v0, v13, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@69
    move/from16 v20, v0

    #@6b
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v20

    #@6f
    const/16 v21, 0x0

    #@71
    aput-object v20, v19, v21

    #@73
    .line 64
    iget v0, v13, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@75
    move/from16 v20, v0

    #@77
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v20

    #@7b
    const/16 v21, 0x1

    #@7d
    aput-object v20, v19, v21

    #@7f
    .line 62
    invoke-virtual/range {v17 .. v19}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@82
    .line 65
    iget-object v0, v13, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@84
    move-object/from16 v18, v0

    #@86
    const/16 v17, 0x0

    #@88
    move-object/from16 v0, v18

    #@8a
    array-length v0, v0

    #@8b
    move/from16 v19, v0

    #@8d
    :goto_1
    move/from16 v0, v17

    #@8f
    move/from16 v1, v19

    #@91
    if-ge v0, v1, :cond_1

    #@93
    aget-object v6, v18, v17

    #@95
    .line 66
    .local v6, "e":Ljava/lang/StackTraceElement;
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@99
    move-object/from16 v20, v0

    #@9b
    const-string/jumbo v21, "\t%s\n"

    #@9e
    const/16 v22, 0x1

    #@a0
    move/from16 v0, v22

    #@a2
    new-array v0, v0, [Ljava/lang/Object;

    #@a4
    move-object/from16 v22, v0

    #@a6
    const/16 v23, 0x0

    #@a8
    aput-object v6, v22, v23

    #@aa
    invoke-virtual/range {v20 .. v22}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@ad
    .line 65
    add-int/lit8 v17, v17, 0x1

    #@af
    goto :goto_1

    #@b0
    .line 69
    .end local v4    # "count":I
    .end local v6    # "e":Ljava/lang/StackTraceElement;
    .end local v10    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    .end local v13    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_2
    new-instance v8, Ljava/util/Date;

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@b6
    move-object/from16 v17, v0

    #@b8
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/profiler/HprofData;->getStartMillis()J

    #@bb
    move-result-wide v18

    #@bc
    move-wide/from16 v0, v18

    #@be
    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@c1
    .line 71
    .local v8, "now":Ljava/util/Date;
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@c5
    move-object/from16 v17, v0

    #@c7
    const-string/jumbo v18, "CPU SAMPLES BEGIN (total = %d) %ta %tb %td %tT %tY\n"

    #@ca
    const/16 v19, 0x6

    #@cc
    move/from16 v0, v19

    #@ce
    new-array v0, v0, [Ljava/lang/Object;

    #@d0
    move-object/from16 v19, v0

    #@d2
    .line 72
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d5
    move-result-object v20

    #@d6
    const/16 v21, 0x0

    #@d8
    aput-object v20, v19, v21

    #@da
    const/16 v20, 0x1

    #@dc
    aput-object v8, v19, v20

    #@de
    const/16 v20, 0x2

    #@e0
    aput-object v8, v19, v20

    #@e2
    const/16 v20, 0x3

    #@e4
    aput-object v8, v19, v20

    #@e6
    const/16 v20, 0x4

    #@e8
    aput-object v8, v19, v20

    #@ea
    const/16 v20, 0x5

    #@ec
    aput-object v8, v19, v20

    #@ee
    .line 71
    invoke-virtual/range {v17 .. v19}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@f1
    .line 73
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@f5
    move-object/from16 v17, v0

    #@f7
    const-string/jumbo v18, "rank   self  accum   count trace method\n"

    #@fa
    const/16 v19, 0x0

    #@fc
    move/from16 v0, v19

    #@fe
    new-array v0, v0, [Ljava/lang/Object;

    #@100
    move-object/from16 v19, v0

    #@102
    invoke-virtual/range {v17 .. v19}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@105
    .line 74
    const/4 v9, 0x0

    #@106
    .line 75
    .local v9, "rank":I
    const-wide/16 v2, 0x0

    #@108
    .line 76
    .local v2, "accum":D
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10b
    move-result-object v11

    #@10c
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@10f
    move-result v17

    #@110
    if-eqz v17, :cond_3

    #@112
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@115
    move-result-object v10

    #@116
    check-cast v10, Ldalvik/system/profiler/HprofData$Sample;

    #@118
    .line 77
    .restart local v10    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    add-int/lit8 v9, v9, 0x1

    #@11a
    .line 78
    iget-object v13, v10, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@11c
    .line 79
    .restart local v13    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    iget v4, v10, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@11e
    .line 80
    .restart local v4    # "count":I
    int-to-double v0, v4

    #@11f
    move-wide/from16 v18, v0

    #@121
    move/from16 v0, v16

    #@123
    int-to-double v0, v0

    #@124
    move-wide/from16 v20, v0

    #@126
    div-double v14, v18, v20

    #@128
    .line 81
    .local v14, "self":D
    add-double/2addr v2, v14

    #@129
    .line 84
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@12d
    move-object/from16 v17, v0

    #@12f
    const-string/jumbo v18, "% 4d% 6.2f%%% 6.2f%% % 7d % 5d %s.%s\n"

    #@132
    const/16 v19, 0x7

    #@134
    move/from16 v0, v19

    #@136
    new-array v0, v0, [Ljava/lang/Object;

    #@138
    move-object/from16 v19, v0

    #@13a
    .line 85
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13d
    move-result-object v20

    #@13e
    const/16 v21, 0x0

    #@140
    aput-object v20, v19, v21

    #@142
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    #@144
    mul-double v20, v20, v14

    #@146
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@149
    move-result-object v20

    #@14a
    const/16 v21, 0x1

    #@14c
    aput-object v20, v19, v21

    #@14e
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    #@150
    mul-double v20, v20, v2

    #@152
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@155
    move-result-object v20

    #@156
    const/16 v21, 0x2

    #@158
    aput-object v20, v19, v21

    #@15a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15d
    move-result-object v20

    #@15e
    const/16 v21, 0x3

    #@160
    aput-object v20, v19, v21

    #@162
    iget v0, v13, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@164
    move/from16 v20, v0

    #@166
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@169
    move-result-object v20

    #@16a
    const/16 v21, 0x4

    #@16c
    aput-object v20, v19, v21

    #@16e
    .line 86
    iget-object v0, v13, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@170
    move-object/from16 v20, v0

    #@172
    const/16 v21, 0x0

    #@174
    aget-object v20, v20, v21

    #@176
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@179
    move-result-object v20

    #@17a
    const/16 v21, 0x5

    #@17c
    aput-object v20, v19, v21

    #@17e
    .line 87
    iget-object v0, v13, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@180
    move-object/from16 v20, v0

    #@182
    const/16 v21, 0x0

    #@184
    aget-object v20, v20, v21

    #@186
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@189
    move-result-object v20

    #@18a
    const/16 v21, 0x6

    #@18c
    aput-object v20, v19, v21

    #@18e
    .line 84
    invoke-virtual/range {v17 .. v19}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@191
    goto/16 :goto_2

    #@193
    .line 89
    .end local v4    # "count":I
    .end local v10    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    .end local v13    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    .end local v14    # "self":D
    :cond_3
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@197
    move-object/from16 v17, v0

    #@199
    const-string/jumbo v18, "CPU SAMPLES END\n"

    #@19c
    const/16 v19, 0x0

    #@19e
    move/from16 v0, v19

    #@1a0
    new-array v0, v0, [Ljava/lang/Object;

    #@1a2
    move-object/from16 v19, v0

    #@1a4
    invoke-virtual/range {v17 .. v19}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1a7
    .line 90
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Ldalvik/system/profiler/AsciiHprofWriter;->out:Ljava/io/PrintWriter;

    #@1ab
    move-object/from16 v17, v0

    #@1ad
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    #@1b0
    .line 49
    return-void
.end method

.method public static write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # Ldalvik/system/profiler/HprofData;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    new-instance v0, Ldalvik/system/profiler/AsciiHprofWriter;

    #@2
    invoke-direct {v0, p0, p1}, Ldalvik/system/profiler/AsciiHprofWriter;-><init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V

    #@5
    invoke-direct {v0}, Ldalvik/system/profiler/AsciiHprofWriter;->write()V

    #@8
    .line 40
    return-void
.end method
