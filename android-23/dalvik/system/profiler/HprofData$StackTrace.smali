.class public final Ldalvik/system/profiler/HprofData$StackTrace;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StackTrace"
.end annotation


# instance fields
.field stackFrames:[Ljava/lang/StackTraceElement;

.field public final stackTraceId:I

.field threadId:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 145
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@6
    .line 144
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/StackTraceElement;)V
    .locals 2
    .param p1, "stackTraceId"    # I
    .param p2, "threadId"    # I
    .param p3, "stackFrames"    # [Ljava/lang/StackTraceElement;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    if-nez p3, :cond_0

    #@5
    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "stackFrames == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 152
    :cond_0
    iput p1, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@10
    .line 153
    iput p2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@12
    .line 154
    iput-object p3, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@14
    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 173
    instance-of v2, p1, Ldalvik/system/profiler/HprofData$StackTrace;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 174
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 176
    check-cast v0, Ldalvik/system/profiler/HprofData$StackTrace;

    #@9
    .line 177
    .local v0, "s":Ldalvik/system/profiler/HprofData$StackTrace;
    iget v2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@b
    iget v3, v0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@11
    iget-object v2, v0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@13
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :cond_1
    return v1
.end method

.method public getStackFrames()[Ljava/lang/StackTraceElement;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@2
    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    #@0
    .prologue
    .line 158
    iget v0, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 167
    iget v1, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 168
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@8
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@b
    move-result v2

    #@c
    add-int v0, v1, v2

    #@e
    .line 169
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    const/4 v2, 0x0

    #@3
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 182
    .local v0, "frames":Ljava/lang/StringBuilder;
    iget-object v3, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@a
    array-length v3, v3

    #@b
    if-lez v3, :cond_0

    #@d
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 184
    iget-object v3, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    #@12
    array-length v4, v3

    #@13
    :goto_0
    if-ge v2, v4, :cond_1

    #@15
    aget-object v1, v3, v2

    #@17
    .line 185
    .local v1, "stackFrame":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "\t at "

    #@1a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    .line 187
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 184
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 190
    .end local v1    # "stackFrame":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v2, "<empty>"

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 192
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "StackTrace[stackTraceId="

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    iget v3, p0, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 193
    const-string/jumbo v3, ", threadId="

    #@41
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 193
    iget v3, p0, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    #@47
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 194
    const-string/jumbo v3, ", frames="

    #@4e
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    .line 194
    const-string/jumbo v3, "]"

    #@59
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    return-object v2
.end method
