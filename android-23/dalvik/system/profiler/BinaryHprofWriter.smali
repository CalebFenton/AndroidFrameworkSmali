.class public final Ldalvik/system/profiler/BinaryHprofWriter;
.super Ljava/lang/Object;
.source "BinaryHprofWriter.java"


# static fields
.field private static synthetic -dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I


# instance fields
.field private final classNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ldalvik/system/profiler/HprofData;

.field private nextClassId:I

.field private nextStackFrameId:I

.field private nextStringId:I

.field private final out:Ljava/io/DataOutputStream;

.field private final stackFrameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stringToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getdalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ldalvik/system/profiler/BinaryHprofWriter;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ldalvik/system/profiler/BinaryHprofWriter;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ldalvik/system/profiler/HprofData$ThreadEventType;->values()[Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@10
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@19
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Ldalvik/system/profiler/BinaryHprofWriter;->-dalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "data"    # Ldalvik/system/profiler/HprofData;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    #@6
    .line 34
    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    #@8
    .line 35
    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    #@a
    .line 36
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    #@11
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    #@18
    .line 39
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 38
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    #@1f
    .line 52
    iput-object p1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@21
    .line 53
    new-instance v0, Ljava/io/DataOutputStream;

    #@23
    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@26
    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@28
    .line 51
    return-void
.end method

.method private write()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    :try_start_0
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@2
    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getStartMillis()J

    #@5
    move-result-wide v6

    #@6
    invoke-direct {p0, v6, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeHeader(J)V

    #@9
    .line 60
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@b
    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getFlags()I

    #@e
    move-result v6

    #@f
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@11
    invoke-virtual {v7}, Ldalvik/system/profiler/HprofData;->getDepth()I

    #@14
    move-result v7

    #@15
    invoke-direct {p0, v6, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeControlSettings(II)V

    #@18
    .line 62
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@1a
    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getThreadHistory()Ljava/util/List;

    #@1d
    move-result-object v6

    #@1e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_0

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    #@2e
    .line 63
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 74
    .end local v0    # "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    .end local v1    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@33
    .line 75
    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@35
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    #@38
    .line 74
    throw v6

    #@39
    .line 66
    .restart local v1    # "event$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    #@3b
    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getSamples()Ljava/util/Set;

    #@3e
    move-result-object v4

    #@3f
    .line 67
    .local v4, "samples":Ljava/util/Set;, "Ljava/util/Set<Ldalvik/system/profiler/HprofData$Sample;>;"
    const/4 v5, 0x0

    #@40
    .line 68
    .local v5, "total":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v3

    #@44
    .local v3, "sample$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_1

    #@4a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Ldalvik/system/profiler/HprofData$Sample;

    #@50
    .line 69
    .local v2, "sample":Ldalvik/system/profiler/HprofData$Sample;
    iget v6, v2, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@52
    add-int/2addr v5, v6

    #@53
    .line 70
    iget-object v6, v2, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@55
    invoke-direct {p0, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V

    #@58
    goto :goto_1

    #@59
    .line 72
    .end local v2    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    :cond_1
    invoke-direct {p0, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeCpuSamples(ILjava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 75
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@5e
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    #@61
    .line 56
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
    .line 48
    new-instance v0, Ldalvik/system/profiler/BinaryHprofWriter;

    #@2
    invoke-direct {v0, p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;-><init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V

    #@5
    invoke-direct {v0}, Ldalvik/system/profiler/BinaryHprofWriter;->write()V

    #@8
    .line 47
    return-void
.end method

.method private writeControlSettings(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x7fff

    #@2
    .line 87
    if-le p2, v3, :cond_0

    #@4
    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "depth too large for binary hprof: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 89
    const-string/jumbo v2, " > "

    #@19
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 91
    :cond_0
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2b
    .line 93
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2d
    iget v1, v1, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@2f
    .line 92
    const/4 v2, 0x0

    #@30
    .line 91
    invoke-direct {p0, v0, v2, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@33
    .line 94
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@35
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@38
    .line 95
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@3a
    int-to-short v1, p2

    #@3b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@3e
    .line 86
    return-void
.end method

.method private writeCpuSamples(ILjava/util/Set;)V
    .locals 6
    .param p1, "totalSamples"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "samples":Ljava/util/Set;, "Ljava/util/Set<Ldalvik/system/profiler/HprofData$Sample;>;"
    const/4 v5, 0x0

    #@1
    .line 179
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@4
    move-result v2

    #@5
    .line 180
    .local v2, "samplesCount":I
    if-nez v2, :cond_0

    #@7
    .line 181
    return-void

    #@8
    .line 183
    :cond_0
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@a
    mul-int/lit8 v4, v2, 0x8

    #@c
    add-int/lit8 v4, v4, 0x8

    #@e
    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@11
    .line 184
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@13
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@16
    .line 185
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@18
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1b
    .line 186
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "sample$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ldalvik/system/profiler/HprofData$Sample;

    #@2b
    .line 187
    .local v0, "sample":Ldalvik/system/profiler/HprofData$Sample;
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@2d
    iget v4, v0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@2f
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@32
    .line 188
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@34
    iget-object v4, v0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@36
    iget v4, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@38
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 178
    .end local v0    # "sample":Ldalvik/system/profiler/HprofData$Sample;
    :cond_1
    return-void
.end method

.method private writeHeader(J)V
    .locals 3
    .param p1, "dumpTimeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    sget-object v2, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "1.0.2"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@1b
    .line 81
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@21
    .line 82
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@23
    const/4 v1, 0x4

    #@24
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@27
    .line 83
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@29
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@2c
    .line 79
    return-void
.end method

.method private writeId(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@5
    .line 144
    return-void
.end method

.method private writeLoadClass(Ljava/lang/String;)I
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 210
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    #@3
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/lang/Integer;

    #@9
    .line 211
    .local v2, "identifier":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@b
    .line 212
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 214
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    #@12
    add-int/lit8 v3, v1, 0x1

    #@14
    iput v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    #@16
    .line 215
    .local v1, "id":I
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 217
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    #@22
    move-result v0

    #@23
    .line 218
    .local v0, "classNameId":I
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@25
    .line 220
    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@27
    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@29
    .line 218
    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@2c
    .line 221
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@2e
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@31
    .line 222
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@34
    .line 223
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@36
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@39
    .line 224
    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@3c
    .line 226
    return v1
.end method

.method private writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V
    .locals 3
    .param p1, "hprofTag"    # Ldalvik/system/profiler/BinaryHprof$Tag;
    .param p2, "timeDeltaInMicroseconds"    # I
    .param p3, "recordLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-virtual {p1, p3}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 136
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 137
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1

    #@c
    .line 139
    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@e
    iget-byte v2, p1, Ldalvik/system/profiler/BinaryHprof$Tag;->tag:B

    #@10
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@13
    .line 140
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@15
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@18
    .line 141
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@1a
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1d
    .line 134
    return-void
.end method

.method private writeStackFrame(Ljava/lang/StackTraceElement;)I
    .locals 8
    .param p1, "stackFrame"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 230
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    #@3
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/lang/Integer;

    #@9
    .line 231
    .local v2, "identifier":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@b
    .line 232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v5

    #@f
    return v5

    #@10
    .line 235
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    #@12
    add-int/lit8 v5, v1, 0x1

    #@14
    iput v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    #@16
    .line 236
    .local v1, "id":I
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v6

    #@1c
    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 238
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeLoadClass(Ljava/lang/String;)I

    #@26
    move-result v0

    #@27
    .line 239
    .local v0, "classId":I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    #@2e
    move-result v3

    #@2f
    .line 240
    .local v3, "methodNameId":I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    #@36
    move-result v4

    #@37
    .line 241
    .local v4, "sourceId":I
    sget-object v5, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@39
    .line 243
    sget-object v6, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@3b
    iget v6, v6, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@3d
    .line 241
    invoke-direct {p0, v5, v7, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@40
    .line 244
    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@43
    .line 245
    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@46
    .line 246
    invoke-direct {p0, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@49
    .line 247
    invoke-direct {p0, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@4c
    .line 248
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@4e
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@51
    .line 249
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@53
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@56
    move-result v6

    #@57
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@5a
    .line 251
    return v1
.end method

.method private writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V
    .locals 7
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 193
    iget-object v5, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@3
    array-length v0, v5

    #@4
    .line 194
    .local v0, "frames":I
    new-array v3, v0, [I

    #@6
    .line 195
    .local v3, "stackFrameIds":[I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 196
    iget-object v5, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@b
    aget-object v5, v5, v1

    #@d
    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackFrame(Ljava/lang/StackTraceElement;)I

    #@10
    move-result v5

    #@11
    aput v5, v3, v1

    #@13
    .line 195
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 198
    :cond_0
    sget-object v5, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@18
    .line 200
    mul-int/lit8 v6, v0, 0x4

    #@1a
    add-int/lit8 v6, v6, 0xc

    #@1c
    .line 198
    invoke-direct {p0, v5, v4, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@1f
    .line 201
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@21
    iget v6, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@23
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@26
    .line 202
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@28
    iget v6, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@2a
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2d
    .line 203
    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@2f
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@32
    .line 204
    array-length v5, v3

    #@33
    :goto_1
    if-ge v4, v5, :cond_1

    #@35
    aget v2, v3, v4

    #@37
    .line 205
    .local v2, "stackFrameId":I
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@3a
    .line 204
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 192
    .end local v2    # "stackFrameId":I
    :cond_1
    return-void
.end method

.method private writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 6
    .param p1, "e"    # Ldalvik/system/profiler/HprofData$ThreadEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 111
    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    #@3
    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    #@6
    move-result v2

    #@7
    .line 112
    .local v2, "threadNameId":I
    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    #@9
    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    .line 113
    .local v0, "groupNameId":I
    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    #@f
    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    .line 114
    .local v1, "parentGroupNameId":I
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@15
    .line 116
    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@17
    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@19
    .line 114
    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@1c
    .line 117
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@1e
    iget v4, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@20
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@23
    .line 118
    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    #@25
    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@28
    .line 119
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@2a
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2d
    .line 120
    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@30
    .line 121
    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@33
    .line 122
    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    #@36
    .line 110
    return-void
.end method

.method private writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 3
    .param p1, "e"    # Ldalvik/system/profiler/HprofData$ThreadEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2
    .line 128
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@4
    iget v1, v1, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@6
    .line 127
    const/4 v2, 0x0

    #@7
    .line 126
    invoke-direct {p0, v0, v2, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@a
    .line 129
    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@c
    iget v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@11
    .line 125
    return-void
.end method

.method private writeString(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 156
    if-nez p1, :cond_0

    #@3
    .line 157
    return v5

    #@4
    .line 159
    :cond_0
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    #@6
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/Integer;

    #@c
    .line 160
    .local v2, "identifier":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    #@e
    .line 161
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v3

    #@12
    return v3

    #@13
    .line 164
    :cond_1
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    #@15
    add-int/lit8 v3, v1, 0x1

    #@17
    iput v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    #@19
    .line 165
    .local v1, "id":I
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v4

    #@1f
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 167
    const-string/jumbo v3, "UTF-8"

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@28
    move-result-object v0

    #@29
    .line 168
    .local v0, "bytes":[B
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2b
    .line 170
    array-length v4, v0

    #@2c
    add-int/lit8 v4, v4, 0x4

    #@2e
    .line 168
    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    #@31
    .line 171
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@33
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@36
    .line 172
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #@38
    array-length v4, v0

    #@39
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    #@3c
    .line 174
    return v1
.end method

.method private writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 2
    .param p1, "e"    # Ldalvik/system/profiler/HprofData$ThreadEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-static {}, Ldalvik/system/profiler/BinaryHprofWriter;->-getdalvik_system_profiler_HprofData$ThreadEventTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@6
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@13
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 101
    :pswitch_0
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    #@1e
    .line 102
    return-void

    #@1f
    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    #@22
    .line 105
    return-void

    #@23
    .line 99
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
