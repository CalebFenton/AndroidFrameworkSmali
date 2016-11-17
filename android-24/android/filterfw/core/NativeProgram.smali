.class public Landroid/filterfw/core/NativeProgram;
.super Landroid/filterfw/core/Program;
.source "NativeProgram.java"


# instance fields
.field private mHasGetValueFunction:Z

.field private mHasInitFunction:Z

.field private mHasResetFunction:Z

.field private mHasSetValueFunction:Z

.field private mHasTeardownFunction:Z

.field private mTornDown:Z

.field private nativeProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "nativeLibName"    # Ljava/lang/String;
    .param p2, "nativeFunctionPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 36
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    #@4
    .line 29
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    #@6
    .line 30
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    #@8
    .line 31
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    #@a
    .line 32
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    #@c
    .line 33
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    #@e
    .line 34
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    #@10
    .line 38
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->allocate()Z

    #@13
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v8, "lib"

    #@1b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    const-string/jumbo v8, ".so"

    #@26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 42
    .local v0, "fullLibName":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeProgram;->openNativeLibrary(Ljava/lang/String;)Z

    #@31
    move-result v7

    #@32
    if-nez v7, :cond_0

    #@34
    .line 43
    new-instance v7, Ljava/lang/RuntimeException;

    #@36
    new-instance v8, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v9, "Could not find native library named \'"

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    const-string/jumbo v9, "\' "

    #@49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    .line 44
    const-string/jumbo v9, "required for native program!"

    #@50
    .line 43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v7

    #@5c
    .line 48
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    const-string/jumbo v8, "_process"

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    .line 49
    .local v3, "processFuncName":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/filterfw/core/NativeProgram;->bindProcessFunction(Ljava/lang/String;)Z

    #@73
    move-result v7

    #@74
    if-nez v7, :cond_1

    #@76
    .line 50
    new-instance v7, Ljava/lang/RuntimeException;

    #@78
    new-instance v8, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v9, "Could not find native program function name "

    #@80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    .line 51
    const-string/jumbo v9, " in library "

    #@8b
    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    .line 51
    const-string/jumbo v9, "! "

    #@96
    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v8

    #@9a
    .line 52
    const-string/jumbo v9, "This function is required!"

    #@9d
    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v8

    #@a1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v8

    #@a5
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v7

    #@a9
    .line 55
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v7

    #@b2
    const-string/jumbo v8, "_init"

    #@b5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    .line 56
    .local v2, "initFuncName":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeProgram;->bindInitFunction(Ljava/lang/String;)Z

    #@c0
    move-result v7

    #@c1
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    #@c3
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v7

    #@cc
    const-string/jumbo v8, "_teardown"

    #@cf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v6

    #@d7
    .line 59
    .local v6, "teardownFuncName":Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/filterfw/core/NativeProgram;->bindTeardownFunction(Ljava/lang/String;)Z

    #@da
    move-result v7

    #@db
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    #@dd
    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v7

    #@e6
    const-string/jumbo v8, "_setvalue"

    #@e9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v7

    #@ed
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v5

    #@f1
    .line 62
    .local v5, "setValueFuncName":Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/filterfw/core/NativeProgram;->bindSetValueFunction(Ljava/lang/String;)Z

    #@f4
    move-result v7

    #@f5
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    #@f7
    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v7

    #@100
    const-string/jumbo v8, "_getvalue"

    #@103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v7

    #@107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v1

    #@10b
    .line 65
    .local v1, "getValueFuncName":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeProgram;->bindGetValueFunction(Ljava/lang/String;)Z

    #@10e
    move-result v7

    #@10f
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    #@111
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    const-string/jumbo v8, "_reset"

    #@11d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v7

    #@121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v4

    #@125
    .line 68
    .local v4, "resetFuncName":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/filterfw/core/NativeProgram;->bindResetFunction(Ljava/lang/String;)Z

    #@128
    move-result v7

    #@129
    iput-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    #@12b
    .line 71
    iget-boolean v7, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    #@12d
    if-eqz v7, :cond_2

    #@12f
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeInit()Z

    #@132
    move-result v7

    #@133
    if-eqz v7, :cond_3

    #@135
    .line 36
    :cond_2
    return-void

    #@136
    .line 72
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    #@138
    const-string/jumbo v8, "Could not initialize NativeProgram!"

    #@13b
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13e
    throw v7
.end method

.method private native allocate()Z
.end method

.method private native bindGetValueFunction(Ljava/lang/String;)Z
.end method

.method private native bindInitFunction(Ljava/lang/String;)Z
.end method

.method private native bindProcessFunction(Ljava/lang/String;)Z
.end method

.method private native bindResetFunction(Ljava/lang/String;)Z
.end method

.method private native bindSetValueFunction(Ljava/lang/String;)Z
.end method

.method private native bindTeardownFunction(Ljava/lang/String;)Z
.end method

.method private native callNativeGetValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native callNativeInit()Z
.end method

.method private native callNativeProcess([Landroid/filterfw/core/NativeFrame;Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native callNativeReset()Z
.end method

.method private native callNativeSetValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native callNativeTeardown()Z
.end method

.method private native deallocate()Z
.end method

.method private native nativeInit()Z
.end method

.method private native openNativeLibrary(Ljava/lang/String;)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/filterfw/core/NativeProgram;->tearDown()V

    #@3
    .line 93
    return-void
.end method

.method public getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "NativeProgram already torn down!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 144
    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    #@13
    const-string/jumbo v1, "Attempting to get native variable, but native code does not define native getvalue function!"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 148
    :cond_1
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->callNativeGetValue(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 6
    .param p1, "inputs"    # [Landroid/filterfw/core/Frame;
    .param p2, "output"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 99
    iget-boolean v3, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 100
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "NativeProgram already torn down!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 102
    :cond_0
    array-length v3, p1

    #@e
    new-array v1, v3, [Landroid/filterfw/core/NativeFrame;

    #@10
    .line 103
    .local v1, "nativeInputs":[Landroid/filterfw/core/NativeFrame;
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    array-length v3, p1

    #@12
    if-ge v0, v3, :cond_3

    #@14
    .line 104
    aget-object v3, p1, v0

    #@16
    if-eqz v3, :cond_1

    #@18
    aget-object v3, p1, v0

    #@1a
    instance-of v3, v3, Landroid/filterfw/core/NativeFrame;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 105
    :cond_1
    aget-object v3, p1, v0

    #@20
    check-cast v3, Landroid/filterfw/core/NativeFrame;

    #@22
    aput-object v3, v1, v0

    #@24
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 107
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "NativeProgram got non-native frame as input "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v5, "!"

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3

    #@48
    .line 112
    :cond_3
    const/4 v2, 0x0

    #@49
    .line 113
    .local v2, "nativeOutput":Landroid/filterfw/core/NativeFrame;
    if-eqz p2, :cond_4

    #@4b
    instance-of v3, p2, Landroid/filterfw/core/NativeFrame;

    #@4d
    if-eqz v3, :cond_5

    #@4f
    :cond_4
    move-object v2, p2

    #@50
    .line 114
    check-cast v2, Landroid/filterfw/core/NativeFrame;

    #@52
    .line 120
    .local v2, "nativeOutput":Landroid/filterfw/core/NativeFrame;
    invoke-direct {p0, v1, v2}, Landroid/filterfw/core/NativeProgram;->callNativeProcess([Landroid/filterfw/core/NativeFrame;Landroid/filterfw/core/NativeFrame;)Z

    #@55
    move-result v3

    #@56
    if-nez v3, :cond_6

    #@58
    .line 121
    new-instance v3, Ljava/lang/RuntimeException;

    #@5a
    const-string/jumbo v4, "Calling native process() caused error!"

    #@5d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@60
    throw v3

    #@61
    .line 116
    .local v2, "nativeOutput":Landroid/filterfw/core/NativeFrame;
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    #@63
    const-string/jumbo v4, "NativeProgram got non-native output frame!"

    #@66
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@69
    throw v3

    #@6a
    .line 98
    .local v2, "nativeOutput":Landroid/filterfw/core/NativeFrame;
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeReset()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 86
    :cond_0
    return-void

    #@b
    .line 88
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "Could not reset NativeProgram!"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "NativeProgram already torn down!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 130
    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    #@13
    const-string/jumbo v1, "Attempting to set native variable, but native code does not define native setvalue function!"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 134
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, p1, v0}, Landroid/filterfw/core/NativeProgram;->callNativeSetValue(Ljava/lang/String;Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Error setting native value for variable \'"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "\'!"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 126
    :cond_2
    return-void
.end method

.method public tearDown()V
    .locals 2

    #@0
    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 78
    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeTeardown()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 81
    :cond_1
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->deallocate()Z

    #@12
    .line 82
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    #@15
    .line 76
    return-void

    #@16
    .line 79
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v1, "Could not tear down NativeProgram!"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method
