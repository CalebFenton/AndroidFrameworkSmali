.class public final Lcom/android/internal/app/procstats/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field public static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field static final STATE_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 48
    const/16 v0, 0xe

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    .line 49
    const-string/jumbo v1, "Persist"

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "Top    "

    #@11
    aput-object v1, v0, v4

    #@13
    const-string/jumbo v1, "ImpFg  "

    #@16
    aput-object v1, v0, v5

    #@18
    const-string/jumbo v1, "ImpBg  "

    #@1b
    aput-object v1, v0, v6

    #@1d
    .line 50
    const-string/jumbo v1, "Backup "

    #@20
    aput-object v1, v0, v7

    #@22
    const-string/jumbo v1, "HeavyWt"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "Service"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "ServRst"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 51
    const-string/jumbo v1, "Receivr"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    const-string/jumbo v1, "Home   "

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 52
    const-string/jumbo v1, "LastAct"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    const-string/jumbo v1, "CchAct "

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    const-string/jumbo v1, "CchCAct"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    const-string/jumbo v1, "CchEmty"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 48
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    #@60
    .line 55
    new-array v0, v5, [Ljava/lang/String;

    #@62
    .line 56
    const-string/jumbo v1, "off"

    #@65
    aput-object v1, v0, v3

    #@67
    const-string/jumbo v1, "on"

    #@6a
    aput-object v1, v0, v4

    #@6c
    .line 55
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@6e
    .line 59
    new-array v0, v7, [Ljava/lang/String;

    #@70
    .line 60
    const-string/jumbo v1, "norm"

    #@73
    aput-object v1, v0, v3

    #@75
    const-string/jumbo v1, "mod"

    #@78
    aput-object v1, v0, v4

    #@7a
    const-string/jumbo v1, "low"

    #@7d
    aput-object v1, v0, v5

    #@7f
    const-string/jumbo v1, "crit"

    #@82
    aput-object v1, v0, v6

    #@84
    .line 59
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    #@86
    .line 63
    const/16 v0, 0xe

    #@88
    new-array v0, v0, [Ljava/lang/String;

    #@8a
    .line 64
    const-string/jumbo v1, "pers"

    #@8d
    aput-object v1, v0, v3

    #@8f
    const-string/jumbo v1, "top"

    #@92
    aput-object v1, v0, v4

    #@94
    const-string/jumbo v1, "impfg"

    #@97
    aput-object v1, v0, v5

    #@99
    const-string/jumbo v1, "impbg"

    #@9c
    aput-object v1, v0, v6

    #@9e
    const-string/jumbo v1, "backup"

    #@a1
    aput-object v1, v0, v7

    #@a3
    const-string/jumbo v1, "heavy"

    #@a6
    const/4 v2, 0x5

    #@a7
    aput-object v1, v0, v2

    #@a9
    .line 65
    const-string/jumbo v1, "service"

    #@ac
    const/4 v2, 0x6

    #@ad
    aput-object v1, v0, v2

    #@af
    const-string/jumbo v1, "service-rs"

    #@b2
    const/4 v2, 0x7

    #@b3
    aput-object v1, v0, v2

    #@b5
    const-string/jumbo v1, "receiver"

    #@b8
    const/16 v2, 0x8

    #@ba
    aput-object v1, v0, v2

    #@bc
    const-string/jumbo v1, "home"

    #@bf
    const/16 v2, 0x9

    #@c1
    aput-object v1, v0, v2

    #@c3
    const-string/jumbo v1, "lastact"

    #@c6
    const/16 v2, 0xa

    #@c8
    aput-object v1, v0, v2

    #@ca
    .line 66
    const-string/jumbo v1, "cch-activity"

    #@cd
    const/16 v2, 0xb

    #@cf
    aput-object v1, v0, v2

    #@d1
    const-string/jumbo v1, "cch-aclient"

    #@d4
    const/16 v2, 0xc

    #@d6
    aput-object v1, v0, v2

    #@d8
    const-string/jumbo v1, "cch-empty"

    #@db
    const/16 v2, 0xd

    #@dd
    aput-object v1, v0, v2

    #@df
    .line 63
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@e1
    .line 69
    new-array v0, v5, [Ljava/lang/String;

    #@e3
    .line 70
    const-string/jumbo v1, "0"

    #@e6
    aput-object v1, v0, v3

    #@e8
    const-string/jumbo v1, "1"

    #@eb
    aput-object v1, v0, v4

    #@ed
    .line 69
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    #@ef
    .line 73
    new-array v0, v7, [Ljava/lang/String;

    #@f1
    .line 74
    const-string/jumbo v1, "n"

    #@f4
    aput-object v1, v0, v3

    #@f6
    const-string/jumbo v1, "m"

    #@f9
    aput-object v1, v0, v4

    #@fb
    const-string/jumbo v1, "l"

    #@fe
    aput-object v1, v0, v5

    #@100
    const-string/jumbo v1, "c"

    #@103
    aput-object v1, v0, v6

    #@105
    .line 73
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    #@107
    .line 77
    const/16 v0, 0xe

    #@109
    new-array v0, v0, [Ljava/lang/String;

    #@10b
    .line 78
    const-string/jumbo v1, "p"

    #@10e
    aput-object v1, v0, v3

    #@110
    const-string/jumbo v1, "t"

    #@113
    aput-object v1, v0, v4

    #@115
    const-string/jumbo v1, "f"

    #@118
    aput-object v1, v0, v5

    #@11a
    const-string/jumbo v1, "b"

    #@11d
    aput-object v1, v0, v6

    #@11f
    const-string/jumbo v1, "u"

    #@122
    aput-object v1, v0, v7

    #@124
    const-string/jumbo v1, "w"

    #@127
    const/4 v2, 0x5

    #@128
    aput-object v1, v0, v2

    #@12a
    .line 79
    const-string/jumbo v1, "s"

    #@12d
    const/4 v2, 0x6

    #@12e
    aput-object v1, v0, v2

    #@130
    const-string/jumbo v1, "x"

    #@133
    const/4 v2, 0x7

    #@134
    aput-object v1, v0, v2

    #@136
    const-string/jumbo v1, "r"

    #@139
    const/16 v2, 0x8

    #@13b
    aput-object v1, v0, v2

    #@13d
    const-string/jumbo v1, "h"

    #@140
    const/16 v2, 0x9

    #@142
    aput-object v1, v0, v2

    #@144
    const-string/jumbo v1, "l"

    #@147
    const/16 v2, 0xa

    #@149
    aput-object v1, v0, v2

    #@14b
    const-string/jumbo v1, "a"

    #@14e
    const/16 v2, 0xb

    #@150
    aput-object v1, v0, v2

    #@152
    const-string/jumbo v1, "c"

    #@155
    const/16 v2, 0xc

    #@157
    aput-object v1, v0, v2

    #@159
    const-string/jumbo v1, "e"

    #@15c
    const/16 v2, 0xd

    #@15e
    aput-object v1, v0, v2

    #@160
    .line 77
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    #@162
    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "itemName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 358
    .local v0, "ITEMLEN":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    .line 359
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_0

    #@10
    .line 360
    const-string/jumbo v2, ""

    #@13
    return-object v2

    #@14
    .line 361
    :cond_0
    if-lt v0, v1, :cond_1

    #@16
    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v2

    #@1a
    const/16 v3, 0x2e

    #@1c
    if-ne v2, v3, :cond_1

    #@1e
    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 367
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    :cond_1
    return-object p1
.end method

.method public static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    #@0
    .prologue
    .line 241
    const/4 v1, 0x0

    #@1
    .local v1, "iscreen":I
    :goto_0
    const/16 v3, 0x8

    #@3
    if-ge v1, v3, :cond_3

    #@5
    .line 242
    const/4 v0, 0x0

    #@6
    .local v0, "imem":I
    :goto_1
    const/4 v3, 0x4

    #@7
    if-ge v0, v3, :cond_2

    #@9
    .line 243
    add-int v2, v0, v1

    #@b
    .line 244
    .local v2, "state":I
    aget-wide v4, p2, v2

    #@d
    .line 245
    .local v4, "time":J
    if-ne p3, v2, :cond_0

    #@f
    .line 246
    sub-long v6, p6, p4

    #@11
    add-long/2addr v4, v6

    #@12
    .line 248
    :cond_0
    const-wide/16 v6, 0x0

    #@14
    cmp-long v3, v4, v6

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 249
    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@1b
    .line 242
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 241
    .end local v2    # "state":I
    .end local v4    # "time":J
    :cond_2
    add-int/lit8 v1, v1, 0x4

    #@20
    goto :goto_0

    #@21
    .line 240
    .end local v0    # "imem":I
    :cond_3
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    const-string/jumbo v1, "process"

    #@3
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 324
    const-string/jumbo v1, "\t"

    #@9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 325
    const-string/jumbo v1, "uid"

    #@f
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 326
    const-string/jumbo v1, "\t"

    #@15
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 327
    const-string/jumbo v1, "vers"

    #@1b
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 328
    const-string/jumbo v4, "\t"

    #@21
    if-eqz p2, :cond_0

    #@23
    move-object v3, p3

    #@24
    .line 329
    :goto_0
    if-eqz p4, :cond_1

    #@26
    move-object/from16 v2, p5

    #@28
    .line 330
    :goto_1
    if-eqz p6, :cond_2

    #@2a
    move-object/from16 v1, p7

    #@2c
    .line 328
    :goto_2
    invoke-static {p0, v4, v3, v2, v1}, Lcom/android/internal/app/procstats/DumpUtils;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    #@2f
    .line 331
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@32
    .line 332
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v1

    #@36
    add-int/lit8 v10, v1, -0x1

    #@38
    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_3

    #@3a
    .line 333
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    #@40
    .line 334
    .local v0, "proc":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    .line 335
    const-string/jumbo v1, "\t"

    #@4a
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 336
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    #@50
    move-result v1

    #@51
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@54
    .line 337
    const-string/jumbo v1, "\t"

    #@57
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 338
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    #@5d
    move-result v1

    #@5e
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@61
    move-object v1, p0

    #@62
    move v2, p2

    #@63
    move-object v3, p3

    #@64
    move/from16 v4, p4

    #@66
    move-object/from16 v5, p5

    #@68
    move/from16 v6, p6

    #@6a
    move-object/from16 v7, p7

    #@6c
    move-wide/from16 v8, p8

    #@6e
    .line 339
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V

    #@71
    .line 341
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@74
    .line 332
    add-int/lit8 v10, v10, -0x1

    #@76
    goto :goto_3

    #@77
    .line 328
    .end local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v10    # "i":I
    :cond_0
    const/4 v1, 0x0

    #@78
    move-object v3, v1

    #@79
    goto :goto_0

    #@7a
    .line 329
    :cond_1
    const/4 v1, 0x0

    #@7b
    move-object v2, v1

    #@7c
    goto :goto_1

    #@7d
    .line 330
    :cond_2
    const/4 v1, 0x0

    #@7e
    goto :goto_2

    #@7f
    .line 322
    .restart local v10    # "i":I
    :cond_3
    return-void
.end method

.method public static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v10, v1, -0x1

    #@6
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_0

    #@8
    .line 315
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    #@e
    .local v0, "proc":Lcom/android/internal/app/procstats/ProcessState;
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-object v3, p3

    #@11
    move-object/from16 v4, p4

    #@13
    move-object/from16 v5, p5

    #@15
    move-wide/from16 v6, p6

    #@17
    move-wide/from16 v8, p8

    #@19
    .line 316
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V

    #@1c
    .line 314
    add-int/lit8 v10, v10, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 313
    .end local v0    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_0
    return-void
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    #@0
    .prologue
    .line 201
    const-wide/16 v8, 0x0

    #@2
    .line 202
    .local v8, "totalTime":J
    const/4 v3, -0x1

    #@3
    .line 203
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    #@4
    .local v1, "iscreen":I
    :goto_0
    const/16 v10, 0x8

    #@6
    if-ge v1, v10, :cond_6

    #@8
    .line 204
    const/4 v2, -0x1

    #@9
    .line 205
    .local v2, "printedMem":I
    const/4 v0, 0x0

    #@a
    .local v0, "imem":I
    :goto_1
    const/4 v10, 0x4

    #@b
    if-ge v0, v10, :cond_5

    #@d
    .line 206
    add-int v5, v0, v1

    #@f
    .line 207
    .local v5, "state":I
    aget-wide v6, p2, v5

    #@11
    .line 208
    .local v6, "time":J
    const-string/jumbo v4, ""

    #@14
    .line 209
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_0

    #@16
    .line 210
    sub-long v10, p6, p4

    #@18
    add-long/2addr v6, v10

    #@19
    .line 211
    if-eqz p0, :cond_0

    #@1b
    .line 212
    const-string/jumbo v4, " (running)"

    #@1e
    .line 215
    :cond_0
    const-wide/16 v10, 0x0

    #@20
    cmp-long v10, v6, v10

    #@22
    if-eqz v10, :cond_2

    #@24
    .line 216
    if-eqz p0, :cond_1

    #@26
    .line 217
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 218
    if-eq v3, v1, :cond_3

    #@2b
    move v10, v1

    #@2c
    :goto_2
    invoke-static {p0, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@2f
    .line 220
    move v3, v1

    #@30
    .line 221
    if-eq v2, v0, :cond_4

    #@32
    move v10, v0

    #@33
    :goto_3
    const/4 v11, 0x0

    #@34
    invoke-static {p0, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@37
    .line 222
    move v2, v0

    #@38
    .line 223
    const-string/jumbo v10, ": "

    #@3b
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 224
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@41
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 226
    :cond_1
    add-long/2addr v8, v6

    #@45
    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 219
    :cond_3
    const/4 v10, -0x1

    #@49
    goto :goto_2

    #@4a
    .line 221
    :cond_4
    const/4 v10, -0x1

    #@4b
    goto :goto_3

    #@4c
    .line 203
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_5
    add-int/lit8 v1, v1, 0x4

    #@4e
    goto :goto_0

    #@4f
    .line 230
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_6
    const-wide/16 v10, 0x0

    #@51
    cmp-long v10, v8, v10

    #@53
    if-eqz v10, :cond_7

    #@55
    if-eqz p0, :cond_7

    #@57
    .line 231
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 232
    const-string/jumbo v10, "    TOTAL: "

    #@5d
    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 233
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@63
    .line 234
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@66
    .line 236
    :cond_7
    return-wide v8
.end method

.method private static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 257
    if-eqz p2, :cond_5

    #@3
    array-length v2, p2

    #@4
    .line 258
    .local v2, "NS":I
    :goto_0
    if-eqz p3, :cond_6

    #@6
    array-length v0, p3

    #@7
    .line 259
    .local v0, "NM":I
    :goto_1
    if-eqz p4, :cond_7

    #@9
    array-length v1, p4

    #@a
    .line 260
    .local v1, "NP":I
    :goto_2
    const/4 v5, 0x0

    #@b
    .local v5, "is":I
    :goto_3
    if-ge v5, v2, :cond_a

    #@d
    .line 261
    const/4 v3, 0x0

    #@e
    .local v3, "im":I
    :goto_4
    if-ge v3, v0, :cond_9

    #@10
    .line 262
    const/4 v4, 0x0

    #@11
    .local v4, "ip":I
    :goto_5
    if-ge v4, v1, :cond_8

    #@13
    .line 263
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 264
    const/4 v6, 0x0

    #@17
    .line 265
    .local v6, "printed":Z
    if-eqz p2, :cond_0

    #@19
    array-length v7, p2

    #@1a
    if-le v7, v9, :cond_0

    #@1c
    .line 266
    aget v7, p2, v5

    #@1e
    invoke-static {p0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    #@21
    .line 267
    const/4 v6, 0x1

    #@22
    .line 269
    :cond_0
    if-eqz p3, :cond_2

    #@24
    array-length v7, p3

    #@25
    if-le v7, v9, :cond_2

    #@27
    .line 270
    if-eqz v6, :cond_1

    #@29
    .line 271
    const-string/jumbo v7, "-"

    #@2c
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 273
    :cond_1
    aget v7, p3, v3

    #@31
    invoke-static {p0, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    #@34
    .line 274
    const/4 v6, 0x1

    #@35
    .line 276
    :cond_2
    if-eqz p4, :cond_4

    #@37
    array-length v7, p4

    #@38
    if-le v7, v9, :cond_4

    #@3a
    .line 277
    if-eqz v6, :cond_3

    #@3c
    .line 278
    const-string/jumbo v7, "-"

    #@3f
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 280
    :cond_3
    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    #@44
    aget v8, p4, v4

    #@46
    aget-object v7, v7, v8

    #@48
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 262
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_5

    #@4e
    .line 257
    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_5
    const/4 v2, 0x1

    #@4f
    .restart local v2    # "NS":I
    goto :goto_0

    #@50
    .line 258
    :cond_6
    const/4 v0, 0x1

    #@51
    .restart local v0    # "NM":I
    goto :goto_1

    #@52
    .line 259
    :cond_7
    const/4 v1, 0x1

    #@53
    .restart local v1    # "NP":I
    goto :goto_2

    #@54
    .line 261
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_4

    #@57
    .line 260
    .end local v4    # "ip":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_3

    #@5a
    .line 256
    .end local v3    # "im":I
    :cond_a
    return-void
.end method

.method public static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    #@0
    .prologue
    .line 181
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@6
    move-result p1

    #@7
    .line 182
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@d
    .line 180
    return-void
.end method

.method public static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 193
    const/16 v0, 0x2c

    #@2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 194
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTag(Ljava/io/PrintWriter;I)V

    #@8
    .line 195
    const/16 v0, 0x3a

    #@a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@d
    .line 196
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    #@10
    .line 192
    return-void
.end method

.method public static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    #@0
    .prologue
    .line 346
    div-int v0, p2, p3

    #@2
    .line 347
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@4
    array-length v1, p1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 348
    aget-object v1, p1, v0

    #@9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 352
    :goto_0
    mul-int v1, v0, p3

    #@e
    sub-int v1, p2, v1

    #@10
    return v1

    #@11
    .line 350
    :cond_0
    const/16 v1, 0x3f

    #@13
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    goto :goto_0
.end method

.method public static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    #@0
    .prologue
    .line 124
    packed-switch p1, :pswitch_data_0

    #@3
    .line 146
    const-string/jumbo v0, "????"

    #@6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 147
    if-eqz p2, :cond_0

    #@b
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 123
    :cond_0
    :goto_0
    return-void

    #@f
    .line 126
    :pswitch_0
    const-string/jumbo v0, "    "

    #@12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 127
    if-eqz p2, :cond_0

    #@17
    const/16 v0, 0x20

    #@19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@1c
    goto :goto_0

    #@1d
    .line 130
    :pswitch_1
    const-string/jumbo v0, "Norm"

    #@20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 131
    if-eqz p2, :cond_0

    #@25
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@28
    goto :goto_0

    #@29
    .line 134
    :pswitch_2
    const-string/jumbo v0, "Mod "

    #@2c
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 135
    if-eqz p2, :cond_0

    #@31
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@34
    goto :goto_0

    #@35
    .line 138
    :pswitch_3
    const-string/jumbo v0, "Low "

    #@38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 139
    if-eqz p2, :cond_0

    #@3d
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@40
    goto :goto_0

    #@41
    .line 142
    :pswitch_4
    const-string/jumbo v0, "Crit"

    #@44
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    .line 143
    if-eqz p2, :cond_0

    #@49
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    #@4c
    goto :goto_0

    #@4d
    .line 124
    nop

    #@4e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 153
    if-ltz p1, :cond_0

    #@2
    .line 154
    const/4 v0, 0x3

    #@3
    if-gt p1, v0, :cond_1

    #@5
    .line 155
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    #@7
    aget-object v0, v0, p1

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 152
    :cond_0
    :goto_0
    return-void

    #@d
    .line 157
    :cond_1
    const-string/jumbo v0, "???"

    #@10
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    goto :goto_0
.end method

.method public static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 163
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@4
    mul-double/2addr p1, v0

    #@5
    .line 164
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@7
    cmpg-double v0, p1, v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 165
    const-string/jumbo v0, "%.2f"

    #@e
    new-array v1, v2, [Ljava/lang/Object;

    #@10
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@13
    move-result-object v2

    #@14
    aput-object v2, v1, v3

    #@16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 171
    :goto_0
    const-string/jumbo v0, "%"

    #@20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 162
    return-void

    #@24
    .line 166
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    #@26
    cmpg-double v0, p1, v0

    #@28
    if-gez v0, :cond_1

    #@2a
    .line 167
    const-string/jumbo v0, "%.1f"

    #@2d
    new-array v1, v2, [Ljava/lang/Object;

    #@2f
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v1, v3

    #@35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 169
    :cond_1
    const-string/jumbo v0, "%.0f"

    #@40
    new-array v1, v2, [Ljava/lang/Object;

    #@42
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@45
    move-result-object v2

    #@46
    aput-object v2, v1, v3

    #@48
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    goto :goto_0
.end method

.method public static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    #@0
    .prologue
    .line 175
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    #@2
    const/16 v1, 0x38

    #@4
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@7
    move-result p1

    #@8
    .line 176
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    #@a
    const/16 v1, 0xe

    #@c
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@f
    move-result p1

    #@10
    .line 177
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    #@12
    const/4 v1, 0x1

    #@13
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    #@16
    .line 174
    return-void
.end method

.method public static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 186
    const/16 v0, 0x2c

    #@2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 187
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    #@8
    .line 188
    const/16 v0, 0x3a

    #@a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@d
    .line 189
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    #@10
    .line 185
    return-void
.end method

.method public static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    #@3
    .line 102
    :pswitch_0
    const-string/jumbo v0, "????/"

    #@6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 90
    :goto_0
    return-void

    #@a
    .line 93
    :pswitch_1
    const-string/jumbo v0, "     "

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    goto :goto_0

    #@11
    .line 96
    :pswitch_2
    const-string/jumbo v0, "SOff/"

    #@14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    goto :goto_0

    #@18
    .line 99
    :pswitch_3
    const-string/jumbo v0, "SOn /"

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    goto :goto_0

    #@1f
    .line 91
    nop

    #@20
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    #@3
    .line 118
    :pswitch_0
    const-string/jumbo v0, "???"

    #@6
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 107
    :goto_0
    :pswitch_1
    return-void

    #@a
    .line 112
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@c
    const/4 v1, 0x0

    #@d
    aget-object v0, v0, v1

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    goto :goto_0

    #@13
    .line 115
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    #@15
    const/4 v1, 0x1

    #@16
    aget-object v0, v0, v1

    #@18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    goto :goto_0

    #@1c
    .line 108
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
