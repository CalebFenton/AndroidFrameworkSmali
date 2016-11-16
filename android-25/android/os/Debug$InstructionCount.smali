.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NUM_INSTR:I


# instance fields
.field private mCounts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1899
    sget v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    .line 1898
    sput v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@6
    .line 1897
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1904
    sget v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@9
    .line 1903
    return-void
.end method


# virtual methods
.method public collect()Z
    .locals 2

    #@0
    .prologue
    .line 1929
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    #@3
    .line 1930
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@5
    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 1934
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 1931
    :catch_0
    move-exception v0

    #@b
    .line 1932
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public globalMethodInvocations()I
    .locals 3

    #@0
    .prologue
    .line 1956
    const/4 v0, 0x0

    #@1
    .line 1958
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 1959
    invoke-static {v1}, Ldalvik/bytecode/OpcodeInfo;->isInvoke(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1960
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@e
    aget v2, v2, v1

    #@10
    add-int/2addr v0, v2

    #@11
    .line 1958
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1964
    :cond_1
    return v0
.end method

.method public globalTotal()I
    .locals 3

    #@0
    .prologue
    .line 1942
    const/4 v0, 0x0

    #@1
    .line 1944
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 1945
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@8
    aget v2, v2, v1

    #@a
    add-int/2addr v0, v2

    #@b
    .line 1944
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 1948
    :cond_0
    return v0
.end method

.method public resetAndStart()Z
    .locals 2

    #@0
    .prologue
    .line 1915
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    #@3
    .line 1916
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1920
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 1917
    :catch_0
    move-exception v0

    #@9
    .line 1918
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    #@a
    return v1
.end method
