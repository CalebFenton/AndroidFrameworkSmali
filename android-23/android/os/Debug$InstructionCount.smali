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
    .line 1779
    sget v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    .line 1778
    sput v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@6
    .line 1777
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1784
    sget v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@9
    .line 1783
    return-void
.end method


# virtual methods
.method public collect()Z
    .locals 2

    #@0
    .prologue
    .line 1809
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    #@3
    .line 1810
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@5
    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 1814
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 1811
    :catch_0
    move-exception v0

    #@b
    .line 1812
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public globalMethodInvocations()I
    .locals 3

    #@0
    .prologue
    .line 1836
    const/4 v0, 0x0

    #@1
    .line 1838
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 1839
    invoke-static {v1}, Ldalvik/bytecode/OpcodeInfo;->isInvoke(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1840
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@e
    aget v2, v2, v1

    #@10
    add-int/2addr v0, v2

    #@11
    .line 1838
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1844
    :cond_1
    return v0
.end method

.method public globalTotal()I
    .locals 3

    #@0
    .prologue
    .line 1822
    const/4 v0, 0x0

    #@1
    .line 1824
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 1825
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    #@8
    aget v2, v2, v1

    #@a
    add-int/2addr v0, v2

    #@b
    .line 1824
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 1828
    :cond_0
    return v0
.end method

.method public resetAndStart()Z
    .locals 2

    #@0
    .prologue
    .line 1795
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    #@3
    .line 1796
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1800
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 1797
    :catch_0
    move-exception v0

    #@9
    .line 1798
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    #@a
    return v1
.end method
