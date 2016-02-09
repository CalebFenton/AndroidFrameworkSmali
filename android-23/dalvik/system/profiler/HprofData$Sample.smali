.class public final Ldalvik/system/profiler/HprofData$Sample;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sample"
.end annotation


# instance fields
.field public final count:I

.field public final stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/HprofData$StackTrace;I)V
    .locals 3
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 208
    if-nez p1, :cond_0

    #@5
    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "stackTrace == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 211
    :cond_0
    if-gez p2, :cond_1

    #@10
    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "count < 0:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 214
    :cond_1
    iput-object p1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@2c
    .line 215
    iput p2, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@2e
    .line 207
    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/profiler/HprofData$StackTrace;ILdalvik/system/profiler/HprofData$Sample;)V
    .locals 0
    .param p1, "stackTrace"    # Ldalvik/system/profiler/HprofData$StackTrace;
    .param p2, "count"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ldalvik/system/profiler/HprofData$Sample;-><init>(Ldalvik/system/profiler/HprofData$StackTrace;I)V

    #@3
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
    .line 226
    instance-of v2, p1, Ldalvik/system/profiler/HprofData$Sample;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 227
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 229
    check-cast v0, Ldalvik/system/profiler/HprofData$Sample;

    #@9
    .line 230
    .local v0, "s":Ldalvik/system/profiler/HprofData$Sample;
    iget v2, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@b
    iget v3, v0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@11
    iget-object v2, v0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@13
    invoke-virtual {v1, v2}, Ldalvik/system/profiler/HprofData$StackTrace;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 220
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@2
    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$StackTrace;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 221
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 222
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Sample[count="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
