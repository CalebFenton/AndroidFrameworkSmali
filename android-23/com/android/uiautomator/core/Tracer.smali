.class public Lcom/android/uiautomator/core/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/Tracer$Mode;,
        Lcom/android/uiautomator/core/Tracer$TracerSink;,
        Lcom/android/uiautomator/core/Tracer$FileSink;,
        Lcom/android/uiautomator/core/Tracer$LogcatSink;
    }
.end annotation


# static fields
.field private static synthetic -com_android_uiautomator_core_Tracer$ModeSwitchesValues:[I = null

.field private static final CALLER_LOCATION:I = 0x6

.field private static final METHOD_TO_TRACE_LOCATION:I = 0x5

.field private static final MIN_STACK_TRACE_LENGTH:I = 0x7

.field private static final UIAUTOMATOR_PACKAGE:Ljava/lang/String; = "com.android.uiautomator.core"

.field private static final UNKNOWN_METHOD_STRING:Ljava/lang/String; = "(unknown method)"

.field private static mInstance:Lcom/android/uiautomator/core/Tracer;


# instance fields
.field private mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

.field private mOutputFile:Ljava/io/File;

.field private mSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/uiautomator/core/Tracer$TracerSink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_android_uiautomator_core_Tracer$ModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->-com_android_uiautomator_core_Tracer$ModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->-com_android_uiautomator_core_Tracer$ModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/uiautomator/core/Tracer$Mode;->values()[Lcom/android/uiautomator/core/Tracer$Mode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    #@10
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    #@19
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->LOGCAT:Lcom/android/uiautomator/core/Tracer$Mode;

    #@22
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    #@2b
    invoke-virtual {v1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/uiautomator/core/Tracer;->-com_android_uiautomator_core_Tracer$ModeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 97
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    #@3
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    sget-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    #@5
    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    #@7
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@e
    .line 38
    return-void
.end method

.method private closeSinks()V
    .locals 3

    #@0
    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "sink$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/uiautomator/core/Tracer$TracerSink;

    #@12
    .line 151
    .local v0, "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    invoke-interface {v0}, Lcom/android/uiautomator/core/Tracer$TracerSink;->close()V

    #@15
    goto :goto_0

    #@16
    .line 153
    .end local v0    # "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    :cond_0
    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@18
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1b
    .line 149
    return-void
.end method

.method private doTrace([Ljava/lang/Object;)V
    .locals 5
    .param p1, "arguments"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    #@2
    sget-object v2, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 168
    return-void

    #@7
    .line 171
    :cond_0
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getCaller()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 172
    .local v0, "caller":Ljava/lang/String;
    if-nez v0, :cond_1

    #@d
    .line 173
    return-void

    #@e
    .line 176
    :cond_1
    const-string/jumbo v1, "%s (%s)"

    #@11
    const/4 v2, 0x2

    #@12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v0, v2, v3

    #@17
    const-string/jumbo v3, ", "

    #@1a
    invoke-static {v3, p1}, Lcom/android/uiautomator/core/Tracer;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    const/4 v4, 0x1

    #@1f
    aput-object v3, v2, v4

    #@21
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/Tracer;->log(Ljava/lang/String;)V

    #@28
    .line 166
    return-void
.end method

.method private static getCaller()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x0

    #@2
    .line 259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@9
    move-result-object v4

    #@a
    .line 260
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    #@b
    const/4 v6, 0x7

    #@c
    if-ge v5, v6, :cond_0

    #@e
    .line 261
    const-string/jumbo v5, "(unknown method)"

    #@11
    return-object v5

    #@12
    .line 264
    :cond_0
    aget-object v0, v4, v8

    #@14
    .line 265
    .local v0, "caller":Ljava/lang/StackTraceElement;
    const/4 v5, 0x6

    #@15
    aget-object v2, v4, v5

    #@17
    .line 267
    .local v2, "previousCaller":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    const-string/jumbo v6, "com.android.uiautomator.core"

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 268
    const/4 v5, 0x0

    #@25
    return-object v5

    #@26
    .line 271
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    const/16 v6, 0x2e

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@2f
    move-result v1

    #@30
    .line 272
    .local v1, "indexOfDot":I
    if-gez v1, :cond_2

    #@32
    .line 273
    const/4 v1, 0x0

    #@33
    .line 276
    :cond_2
    add-int/lit8 v5, v1, 0x1

    #@35
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3c
    move-result v6

    #@3d
    if-lt v5, v6, :cond_3

    #@3f
    .line 277
    const-string/jumbo v5, "(unknown method)"

    #@42
    return-object v5

    #@43
    .line 280
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    add-int/lit8 v6, v1, 0x1

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 281
    .local v3, "shortClassName":Ljava/lang/String;
    const-string/jumbo v5, "%s.%s from %s() at %s:%d"

    #@50
    new-array v6, v8, [Ljava/lang/Object;

    #@52
    aput-object v3, v6, v7

    #@54
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    const/4 v8, 0x1

    #@59
    aput-object v7, v6, v8

    #@5b
    .line 282
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    const/4 v8, 0x2

    #@60
    aput-object v7, v6, v8

    #@62
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    const/4 v8, 0x3

    #@67
    aput-object v7, v6, v8

    #@69
    .line 283
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@6c
    move-result v7

    #@6d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v7

    #@71
    const/4 v8, 0x4

    #@72
    aput-object v7, v6, v8

    #@74
    .line 281
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    return-object v5
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Tracer;
    .locals 1

    #@0
    .prologue
    .line 106
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    new-instance v0, Lcom/android/uiautomator/core/Tracer;

    #@6
    invoke-direct {v0}, Lcom/android/uiautomator/core/Tracer;-><init>()V

    #@9
    sput-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    #@b
    .line 109
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    #@d
    return-object v0
.end method

.method private static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 214
    array-length v2, p1

    #@2
    if-nez v2, :cond_0

    #@4
    .line 215
    const-string/jumbo v2, ""

    #@7
    return-object v2

    #@8
    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    aget-object v2, p1, v3

    #@c
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@14
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@15
    if-ge v1, v2, :cond_1

    #@17
    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 220
    aget-object v2, p1, v1

    #@1c
    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 218
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "sink$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/uiautomator/core/Tracer$TracerSink;

    #@12
    .line 181
    .local v0, "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    invoke-interface {v0, p1}, Lcom/android/uiautomator/core/Tracer$TracerSink;->log(Ljava/lang/String;)V

    #@15
    goto :goto_0

    #@16
    .line 179
    .end local v0    # "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    :cond_0
    return-void
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 239
    instance-of v0, p0, [Ljava/lang/Object;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 240
    check-cast p0, [Ljava/lang/Object;

    #@10
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 242
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "[...]"

    #@18
    return-object v0

    #@19
    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public static varargs trace([Ljava/lang/Object;)V
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 210
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/Tracer;->doTrace([Ljava/lang/Object;)V

    #@7
    .line 209
    return-void
.end method


# virtual methods
.method public isTracingEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    #@2
    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setOutputFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    #@7
    .line 162
    return-void
.end method

.method public setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/uiautomator/core/Tracer$Mode;

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/uiautomator/core/Tracer;->closeSinks()V

    #@3
    .line 120
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    #@5
    .line 122
    :try_start_0
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->-getcom_android_uiautomator_core_Tracer$ModeSwitchesValues()[I

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    #@c
    move-result v2

    #@d
    aget v1, v1, v2

    #@f
    packed-switch v1, :pswitch_data_0

    #@12
    .line 118
    :goto_0
    return-void

    #@13
    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    #@15
    if-nez v1, :cond_0

    #@17
    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v2, "Please provide a filename before attempting write trace to a file"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 144
    :catch_0
    move-exception v0

    #@21
    .line 145
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "Tracer"

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Could not open log file: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0

    #@40
    .line 128
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@42
    new-instance v2, Lcom/android/uiautomator/core/Tracer$FileSink;

    #@44
    iget-object v3, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    #@46
    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$FileSink;-><init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V

    #@49
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@4f
    new-instance v2, Lcom/android/uiautomator/core/Tracer$LogcatSink;

    #@51
    const/4 v3, 0x0

    #@52
    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$LogcatSink;)V

    #@55
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@58
    goto :goto_0

    #@59
    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@5b
    new-instance v2, Lcom/android/uiautomator/core/Tracer$LogcatSink;

    #@5d
    const/4 v3, 0x0

    #@5e
    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$LogcatSink;)V

    #@61
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    .line 135
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    #@66
    if-nez v1, :cond_1

    #@68
    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6a
    const-string/jumbo v2, "Please provide a filename before attempting write trace to a file"

    #@6d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v1

    #@71
    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    #@73
    new-instance v2, Lcom/android/uiautomator/core/Tracer$FileSink;

    #@75
    iget-object v3, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    #@77
    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$FileSink;-><init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V

    #@7a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@7d
    goto :goto_0

    #@7e
    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
