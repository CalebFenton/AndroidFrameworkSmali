.class public final Ldalvik/system/profiler/BinaryHprofReader;
.super Ljava/lang/Object;
.source "BinaryHprofReader.java"


# static fields
.field private static synthetic -dalvik_system_profiler_BinaryHprof$TagSwitchesValues:[I

.field private static final TRACE:Z


# instance fields
.field private final hprofData:Ldalvik/system/profiler/HprofData;

.field private final idToClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackFrame:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackTrace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final idToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/profiler/HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private strict:Z

.field private version:Ljava/lang/String;


# direct methods
.method private static synthetic -getdalvik_system_profiler_BinaryHprof$TagSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ldalvik/system/profiler/BinaryHprofReader;->-dalvik_system_profiler_BinaryHprof$TagSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ldalvik/system/profiler/BinaryHprofReader;->-dalvik_system_profiler_BinaryHprof$TagSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ldalvik/system/profiler/BinaryHprof$Tag;->values()[Ldalvik/system/profiler/BinaryHprof$Tag;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->ALLOC_SITES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@10
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@19
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@22
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2b
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@34
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP_END:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@3d
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP_SEGMENT:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@46
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_SUMMARY:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@4f
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@59
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@63
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@6d
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@77
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@81
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->UNLOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@8b
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xe

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    #@93
    :goto_d
    sput-object v0, Ldalvik/system/profiler/BinaryHprofReader;->-dalvik_system_profiler_BinaryHprof$TagSwitchesValues:[I

    #@95
    return-object v0

    #@96
    :catch_0
    move-exception v1

    #@97
    goto :goto_d

    #@98
    :catch_1
    move-exception v1

    #@99
    goto :goto_c

    #@9a
    :catch_2
    move-exception v1

    #@9b
    goto :goto_b

    #@9c
    :catch_3
    move-exception v1

    #@9d
    goto :goto_a

    #@9e
    :catch_4
    move-exception v1

    #@9f
    goto :goto_9

    #@a0
    :catch_5
    move-exception v1

    #@a1
    goto :goto_8

    #@a2
    :catch_6
    move-exception v1

    #@a3
    goto :goto_7

    #@a4
    :catch_7
    move-exception v1

    #@a5
    goto :goto_6

    #@a6
    :catch_8
    move-exception v1

    #@a7
    goto :goto_5

    #@a8
    :catch_9
    move-exception v1

    #@a9
    goto :goto_4

    #@aa
    :catch_a
    move-exception v1

    #@ab
    goto :goto_3

    #@ac
    :catch_b
    move-exception v1

    #@ad
    goto/16 :goto_2

    #@af
    :catch_c
    move-exception v1

    #@b0
    goto/16 :goto_1

    #@b2
    :catch_d
    move-exception v1

    #@b3
    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    #@6
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    .line 58
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    #@d
    .line 61
    new-instance v0, Ldalvik/system/profiler/HprofData;

    #@f
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    #@11
    invoke-direct {v0, v1}, Ldalvik/system/profiler/HprofData;-><init>(Ljava/util/Map;)V

    #@14
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@16
    .line 63
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    #@1d
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@1f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@22
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    #@24
    .line 66
    new-instance v0, Ljava/util/HashMap;

    #@26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@29
    .line 65
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    #@2b
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@2d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@30
    .line 67
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    #@32
    .line 75
    new-instance v0, Ljava/io/DataInputStream;

    #@34
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@37
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@39
    .line 74
    return-void
.end method

.method private checkRead()V
    .locals 2

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "data access before read()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 92
    :cond_0
    return-void
.end method

.method private parseControlSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v1

    #@6
    .line 239
    .local v1, "flags":I
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    #@b
    move-result v0

    #@c
    .line 244
    .local v0, "depth":S
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@e
    invoke-virtual {v2, v1}, Ldalvik/system/profiler/HprofData;->setFlags(I)V

    #@11
    .line 245
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@13
    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->setDepth(I)V

    #@16
    .line 237
    return-void
.end method

.method private parseCpuSamples(I)V
    .locals 13
    .param p1, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 430
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@6
    move-result v8

    #@7
    .line 431
    .local v8, "totalSamples":I
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@c
    move-result v4

    #@d
    .line 436
    .local v4, "samplesCount":I
    mul-int/lit8 v9, v4, 0x8

    #@f
    add-int/lit8 v2, v9, 0x8

    #@11
    .line 437
    .local v2, "expectedLength":I
    if-eq p1, v2, :cond_0

    #@13
    .line 438
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    #@15
    new-instance v10, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v11, "Expected CPU samples record of size "

    #@1d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v10

    #@21
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v10

    #@25
    .line 440
    const-string/jumbo v11, " based on number of samples but header "

    #@28
    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v10

    #@2c
    .line 441
    const-string/jumbo v11, "specified a length of  "

    #@2f
    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v10

    #@33
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v10

    #@37
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v10

    #@3b
    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v9

    #@3f
    .line 443
    :cond_0
    const/4 v7, 0x0

    #@40
    .line 444
    .local v7, "total":I
    const/4 v3, 0x0

    #@41
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_5

    #@43
    .line 445
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@45
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@48
    move-result v0

    #@49
    .line 446
    .local v0, "count":I
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@4b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@4e
    move-result v6

    #@4f
    .line 451
    .local v6, "stackTraceId":I
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    #@51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v10

    #@55
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, Ldalvik/system/profiler/HprofData$StackTrace;

    #@5b
    .line 452
    .local v5, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    if-nez v5, :cond_1

    #@5d
    .line 453
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    #@5f
    new-instance v10, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v11, "Unknown stack trace id "

    #@67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v10

    #@6f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v10

    #@73
    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@76
    throw v9

    #@77
    .line 455
    :cond_1
    if-nez v0, :cond_2

    #@79
    .line 456
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    #@7b
    new-instance v10, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v11, "Zero sample count for stack trace "

    #@83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@92
    throw v9

    #@93
    .line 459
    :cond_2
    iget-object v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    #@95
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v1

    #@99
    check-cast v1, [I

    #@9b
    .line 460
    .local v1, "countCell":[I
    iget-boolean v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    #@9d
    if-eqz v9, :cond_3

    #@9f
    .line 461
    aget v9, v1, v12

    #@a1
    if-eqz v9, :cond_4

    #@a3
    .line 462
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    #@a5
    new-instance v10, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v11, "Setting sample count of stack trace "

    #@ad
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    .line 463
    const-string/jumbo v11, " to "

    #@b8
    .line 462
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v10

    #@bc
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v10

    #@c0
    .line 464
    const-string/jumbo v11, " found it was already initialized to "

    #@c3
    .line 462
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v10

    #@c7
    .line 465
    aget v11, v1, v12

    #@c9
    .line 462
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v10

    #@cd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v10

    #@d1
    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v9

    #@d5
    .line 470
    :cond_3
    aget v9, v1, v12

    #@d7
    add-int/2addr v0, v9

    #@d8
    .line 472
    :cond_4
    aput v0, v1, v12

    #@da
    .line 473
    add-int/2addr v7, v0

    #@db
    .line 444
    add-int/lit8 v3, v3, 0x1

    #@dd
    goto/16 :goto_0

    #@df
    .line 475
    .end local v0    # "count":I
    .end local v1    # "countCell":[I
    .end local v5    # "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    .end local v6    # "stackTraceId":I
    :cond_5
    iget-boolean v9, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    #@e1
    if-eqz v9, :cond_6

    #@e3
    if-eq v8, v7, :cond_6

    #@e5
    .line 476
    new-instance v9, Ldalvik/system/profiler/MalformedHprofException;

    #@e7
    new-instance v10, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v11, "Expected a total of "

    #@ef
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v10

    #@f3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v10

    #@f7
    .line 477
    const-string/jumbo v11, " samples but saw "

    #@fa
    .line 476
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v10

    #@fe
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@101
    move-result-object v10

    #@102
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v10

    #@106
    invoke-direct {v9, v10}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@109
    throw v9

    #@10a
    .line 429
    :cond_6
    return-void
.end method

.method private parseEndThread()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v1

    #@6
    .line 348
    .local v1, "threadId":I
    invoke-static {v1}, Ldalvik/system/profiler/HprofData$ThreadEvent;->end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@9
    move-result-object v0

    #@a
    .line 349
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@c
    invoke-virtual {v2, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    #@f
    .line 343
    return-void
.end method

.method private parseHeader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseVersion()V

    #@3
    .line 121
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseIdSize()V

    #@6
    .line 122
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseTime()V

    #@9
    .line 116
    return-void
.end method

.method private parseIdSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    .line 141
    .local v0, "idSize":I
    const/4 v1, 0x4

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 142
    new-instance v1, Ldalvik/system/profiler/MalformedHprofException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unsupported identifier size: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 136
    :cond_0
    return-void
.end method

.method private parseLoadClass()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    .line 277
    .local v0, "classId":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    #@9
    move-result v2

    #@a
    .line 280
    .local v2, "classObjectId":I
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    #@f
    move-result v4

    #@10
    .line 281
    .local v4, "stackTraceSerialNumber":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 288
    .local v1, "className":Ljava/lang/String;
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v6

    #@1a
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/String;

    #@20
    .line 289
    .local v3, "old":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@22
    .line 290
    new-instance v5, Ldalvik/system/profiler/MalformedHprofException;

    #@24
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v7, "Duplicate class id: "

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-direct {v5, v6}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v5

    #@3c
    .line 275
    :cond_0
    return-void
.end method

.method private parseRecord()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 165
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    #@6
    move-result v4

    #@7
    .line 166
    .local v4, "tagOrEOF":I
    const/4 v6, -0x1

    #@8
    if-ne v4, v6, :cond_0

    #@a
    .line 167
    const/4 v6, 0x0

    #@b
    return v6

    #@c
    .line 169
    :cond_0
    int-to-byte v3, v4

    #@d
    .line 170
    .local v3, "tag":B
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@f
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    #@12
    move-result v5

    #@13
    .line 171
    .local v5, "timeDeltaInMicroseconds":I
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@15
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v2

    #@19
    .line 172
    .local v2, "recordLength":I
    invoke-static {v3}, Ldalvik/system/profiler/BinaryHprof$Tag;->get(B)Ldalvik/system/profiler/BinaryHprof$Tag;

    #@1c
    move-result-object v1

    #@1d
    .line 176
    .local v1, "hprofTag":Ldalvik/system/profiler/BinaryHprof$Tag;
    if-nez v1, :cond_1

    #@1f
    .line 177
    int-to-long v6, v2

    #@20
    invoke-direct {p0, v1, v6, v7}, Ldalvik/system/profiler/BinaryHprofReader;->skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V

    #@23
    .line 178
    return v8

    #@24
    .line 180
    :cond_1
    invoke-virtual {v1, v2}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 181
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@2a
    .line 182
    new-instance v6, Ldalvik/system/profiler/MalformedHprofException;

    #@2c
    invoke-direct {v6, v0}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v6

    #@30
    .line 184
    :cond_2
    invoke-static {}, Ldalvik/system/profiler/BinaryHprofReader;->-getdalvik_system_profiler_BinaryHprof$TagSwitchesValues()[I

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v1}, Ldalvik/system/profiler/BinaryHprof$Tag;->ordinal()I

    #@37
    move-result v7

    #@38
    aget v6, v6, v7

    #@3a
    packed-switch v6, :pswitch_data_0

    #@3d
    .line 221
    :pswitch_0
    int-to-long v6, v2

    #@3e
    invoke-direct {p0, v1, v6, v7}, Ldalvik/system/profiler/BinaryHprofReader;->skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V

    #@41
    .line 222
    return v8

    #@42
    .line 186
    :pswitch_1
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseControlSettings()V

    #@45
    .line 187
    return v8

    #@46
    .line 190
    :pswitch_2
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseStringInUtf8(I)V

    #@49
    .line 191
    return v8

    #@4a
    .line 194
    :pswitch_3
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseStartThread()V

    #@4d
    .line 195
    return v8

    #@4e
    .line 197
    :pswitch_4
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseEndThread()V

    #@51
    .line 198
    return v8

    #@52
    .line 201
    :pswitch_5
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseLoadClass()V

    #@55
    .line 202
    return v8

    #@56
    .line 204
    :pswitch_6
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseStackFrame()V

    #@59
    .line 205
    return v8

    #@5a
    .line 207
    :pswitch_7
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseStackTrace(I)V

    #@5d
    .line 208
    return v8

    #@5e
    .line 211
    :pswitch_8
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofReader;->parseCpuSamples(I)V

    #@61
    .line 212
    return v8

    #@62
    .line 184
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseRecords()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    :cond_0
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseRecord()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 154
    return-void
.end method

.method private parseStackFrame()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    #@3
    move-result v7

    #@4
    .line 354
    .local v7, "stackFrameId":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 355
    .local v3, "methodName":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 356
    .local v4, "methodSignature":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 357
    .local v1, "file":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readClass()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 358
    .local v0, "className":Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@16
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@19
    move-result v2

    #@1a
    .line 367
    .local v2, "line":I
    new-instance v6, Ljava/lang/StackTraceElement;

    #@1c
    invoke-direct {v6, v0, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@1f
    .line 368
    .local v6, "stackFrame":Ljava/lang/StackTraceElement;
    iget-object v8, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    #@21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v9

    #@25
    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Ljava/lang/StackTraceElement;

    #@2b
    .line 369
    .local v5, "old":Ljava/lang/StackTraceElement;
    if-eqz v5, :cond_0

    #@2d
    .line 370
    new-instance v8, Ldalvik/system/profiler/MalformedHprofException;

    #@2f
    new-instance v9, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v10, "Duplicate stack frame id: "

    #@37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v9

    #@43
    invoke-direct {v8, v9}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@46
    throw v8

    #@47
    .line 352
    :cond_0
    return-void
.end method

.method private parseStackTrace(I)V
    .locals 14
    .param p1, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    .line 375
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    #@6
    move-result v9

    #@7
    .line 376
    .local v9, "stackTraceId":I
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@9
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    #@c
    move-result v10

    #@d
    .line 377
    .local v10, "threadId":I
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    #@12
    move-result v2

    #@13
    .line 383
    .local v2, "frames":I
    mul-int/lit8 v11, v2, 0x4

    #@15
    add-int/lit8 v1, v11, 0xc

    #@17
    .line 384
    .local v1, "expectedLength":I
    if-eq p1, v1, :cond_0

    #@19
    .line 385
    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    #@1b
    new-instance v12, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v13, "Expected stack trace record of size "

    #@23
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v12

    #@27
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v12

    #@2b
    .line 387
    const-string/jumbo v13, " based on number of frames but header "

    #@2e
    .line 385
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v12

    #@32
    .line 388
    const-string/jumbo v13, "specified a length of  "

    #@35
    .line 385
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v12

    #@39
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v12

    #@3d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@44
    throw v11

    #@45
    .line 390
    :cond_0
    new-array v7, v2, [Ljava/lang/StackTraceElement;

    #@47
    .line 391
    .local v7, "stackFrames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    #@48
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@4a
    .line 392
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    #@4d
    move-result v6

    #@4e
    .line 393
    .local v6, "stackFrameId":I
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    #@50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v12

    #@54
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    move-result-object v5

    #@58
    check-cast v5, Ljava/lang/StackTraceElement;

    #@5a
    .line 398
    .local v5, "stackFrame":Ljava/lang/StackTraceElement;
    if-nez v5, :cond_1

    #@5c
    .line 399
    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    #@5e
    new-instance v12, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v13, "Unknown stack frame id "

    #@66
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v12

    #@6e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v12

    #@72
    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@75
    throw v11

    #@76
    .line 401
    :cond_1
    aput-object v5, v7, v3

    #@78
    .line 391
    add-int/lit8 v3, v3, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 405
    .end local v5    # "stackFrame":Ljava/lang/StackTraceElement;
    .end local v6    # "stackFrameId":I
    :cond_2
    new-instance v8, Ldalvik/system/profiler/HprofData$StackTrace;

    #@7d
    invoke-direct {v8, v9, v10, v7}, Ldalvik/system/profiler/HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    #@80
    .line 406
    .local v8, "stackTrace":Ldalvik/system/profiler/HprofData$StackTrace;
    iget-boolean v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    #@82
    if-eqz v11, :cond_4

    #@84
    .line 407
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@86
    new-array v12, v13, [I

    #@88
    invoke-virtual {v11, v8, v12}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    #@8b
    .line 422
    :cond_3
    :goto_1
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    #@8d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v12

    #@91
    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object v4

    #@95
    check-cast v4, Ldalvik/system/profiler/HprofData$StackTrace;

    #@97
    .line 423
    .local v4, "old":Ldalvik/system/profiler/HprofData$StackTrace;
    if-eqz v4, :cond_5

    #@99
    .line 424
    new-instance v11, Ldalvik/system/profiler/MalformedHprofException;

    #@9b
    new-instance v12, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v13, "Duplicate stack trace id: "

    #@a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v12

    #@a7
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v12

    #@ab
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v12

    #@af
    invoke-direct {v11, v12}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v11

    #@b3
    .line 416
    .end local v4    # "old":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_4
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->stackTraces:Ljava/util/Map;

    #@b5
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    move-result-object v0

    #@b9
    check-cast v0, [I

    #@bb
    .line 417
    .local v0, "countCell":[I
    if-nez v0, :cond_3

    #@bd
    .line 418
    iget-object v11, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@bf
    new-array v12, v13, [I

    #@c1
    invoke-virtual {v11, v8, v12}, Ldalvik/system/profiler/HprofData;->addStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;[I)V

    #@c4
    goto :goto_1

    #@c5
    .line 374
    .end local v0    # "countCell":[I
    .restart local v4    # "old":Ldalvik/system/profiler/HprofData$StackTrace;
    :cond_5
    return-void
.end method

.method private parseStartThread()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v5

    #@6
    .line 321
    .local v5, "threadId":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    #@9
    move-result v2

    #@a
    .line 325
    .local v2, "objectId":I
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    #@f
    move-result v4

    #@10
    .line 326
    .local v4, "stackTraceSerialNumber":I
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 327
    .local v6, "threadName":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 328
    .local v1, "groupName":Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 338
    .local v3, "parentGroupName":Ljava/lang/String;
    invoke-static {v2, v5, v6, v1, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@1f
    move-result-object v0

    #@20
    .line 340
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@22
    invoke-virtual {v7, v0}, Ldalvik/system/profiler/HprofData;->addThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    #@25
    .line 319
    return-void
.end method

.method private parseStringInUtf8(I)V
    .locals 7
    .param p1, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v3

    #@6
    .line 250
    .local v3, "stringId":I
    add-int/lit8 v4, p1, -0x4

    #@8
    new-array v0, v4, [B

    #@a
    .line 251
    .local v0, "bytes":[B
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@c
    invoke-static {v4, v0}, Ldalvik/system/profiler/BinaryHprofReader;->readFully(Ljava/io/InputStream;[B)V

    #@f
    .line 252
    new-instance v2, Ljava/lang/String;

    #@11
    const-string/jumbo v4, "UTF-8"

    #@14
    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@17
    .line 256
    .local v2, "string":Ljava/lang/String;
    iget-object v4, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    #@19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;

    #@23
    .line 257
    .local v1, "old":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@25
    .line 258
    new-instance v4, Ldalvik/system/profiler/MalformedHprofException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Duplicate string id: "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-direct {v4, v5}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v4

    #@3f
    .line 248
    :cond_0
    return-void
.end method

.method private parseTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    #@5
    move-result-wide v0

    #@6
    .line 151
    .local v0, "time":J
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@8
    invoke-virtual {v2, v0, v1}, Ldalvik/system/profiler/HprofData;->setStartMillis(J)V

    #@b
    .line 146
    return-void
.end method

.method private parseVersion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-static {v1}, Ldalvik/system/profiler/BinaryHprof;->readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 127
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .line 128
    new-instance v1, Ldalvik/system/profiler/MalformedHprofException;

    #@a
    const-string/jumbo v2, "Could not find HPROF version"

    #@d
    invoke-direct {v1, v2}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 133
    :cond_0
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    #@13
    .line 125
    return-void
.end method

.method private readClass()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    #@3
    move-result v0

    #@4
    .line 312
    .local v0, "id":I
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToClassName:Ljava/util/Map;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    .line 313
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_0

    #@12
    .line 314
    new-instance v2, Ldalvik/system/profiler/MalformedHprofException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Unknown class id "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 316
    :cond_0
    return-object v1
.end method

.method private static readFully(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    const/4 v2, 0x0

    #@1
    .line 264
    .local v2, "offset":I
    array-length v0, p1

    #@2
    .line 265
    .local v0, "byteCount":I
    :goto_0
    if-lez v0, :cond_1

    #@4
    .line 266
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    #@7
    move-result v1

    #@8
    .line 267
    .local v1, "bytesRead":I
    if-gez v1, :cond_0

    #@a
    .line 268
    new-instance v3, Ljava/io/EOFException;

    #@c
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@f
    throw v3

    #@10
    .line 270
    :cond_0
    add-int/2addr v2, v1

    #@11
    .line 271
    sub-int/2addr v0, v1

    #@12
    goto :goto_0

    #@13
    .line 262
    .end local v1    # "bytesRead":I
    :cond_1
    return-void
.end method

.method private readId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 299
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->readId()I

    #@4
    move-result v0

    #@5
    .line 300
    .local v0, "id":I
    if-nez v0, :cond_0

    #@7
    .line 301
    return-object v2

    #@8
    .line 303
    :cond_0
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->idToString:Ljava/util/Map;

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 304
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_1

    #@16
    .line 305
    new-instance v2, Ldalvik/system/profiler/MalformedHprofException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Unknown string id "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ldalvik/system/profiler/MalformedHprofException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 307
    :cond_1
    return-object v1
.end method

.method private skipRecord(Ldalvik/system/profiler/BinaryHprof$Tag;J)V
    .locals 6
    .param p1, "hprofTag"    # Ldalvik/system/profiler/BinaryHprof$Tag;
    .param p2, "recordLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    iget-object v2, p0, Ldalvik/system/profiler/BinaryHprofReader;->in:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v2, p2, p3}, Ljava/io/DataInputStream;->skip(J)J

    #@5
    move-result-wide v0

    #@6
    .line 231
    .local v0, "skipped":J
    cmp-long v2, v0, p2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 232
    new-instance v2, Ljava/io/EOFException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Expected to skip "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 233
    const-string/jumbo v4, " bytes but only skipped "

    #@1f
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 233
    const-string/jumbo v4, " bytes"

    #@2a
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/profiler/HprofData;
    .locals 1

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->checkRead()V

    #@3
    .line 105
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->hprofData:Ldalvik/system/profiler/HprofData;

    #@5
    return-object v0
.end method

.method public getStrict()Z
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    #@2
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->checkRead()V

    #@3
    .line 100
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public read()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseHeader()V

    #@3
    .line 113
    invoke-direct {p0}, Ldalvik/system/profiler/BinaryHprofReader;->parseRecords()V

    #@6
    .line 111
    return-void
.end method

.method public setStrict(Z)V
    .locals 2
    .param p1, "strict"    # Z

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofReader;->version:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "cannot set strict after read()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 86
    :cond_0
    iput-boolean p1, p0, Ldalvik/system/profiler/BinaryHprofReader;->strict:Z

    #@f
    .line 82
    return-void
.end method
