.class public Lcom/android/server/pm/InstructionSets;
.super Ljava/lang/Object;
.source "InstructionSets.java"


# static fields
.field private static final PREFERRED_INSTRUCTION_SET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 36
    sput-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    #@b
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAllDexCodeInstructionSets()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 94
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@2
    array-length v3, v3

    #@3
    new-array v2, v3, [Ljava/lang/String;

    #@5
    .line 95
    .local v2, "supportedInstructionSets":[Ljava/lang/String;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 96
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@b
    aget-object v0, v3, v1

    #@d
    .line 97
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v2, v1

    #@13
    .line 95
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 99
    .end local v0    # "abi":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    return-object v3
.end method

.method public static getAllInstructionSets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@2
    .line 104
    .local v1, "allAbis":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@4
    array-length v4, v1

    #@5
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 106
    .local v2, "allInstructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@9
    array-length v5, v1

    #@a
    :goto_0
    if-ge v4, v5, :cond_1

    #@c
    aget-object v0, v1, v4

    #@e
    .line 107
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 108
    .local v3, "instructionSet":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v6

    #@16
    if-nez v6, :cond_0

    #@18
    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 106
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 113
    .end local v0    # "abi":Ljava/lang/String;
    .end local v3    # "instructionSet":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 39
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 40
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 41
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    .line 42
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@f
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    aput-object v1, v0, v2

    #@15
    .line 43
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@17
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    aput-object v1, v0, v3

    #@1d
    .line 41
    return-object v0

    #@1e
    .line 45
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    #@20
    .line 46
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@22
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    aput-object v1, v0, v2

    #@28
    .line 45
    return-object v0

    #@29
    .line 50
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    #@2b
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    aput-object v1, v0, v2

    #@31
    return-object v0
.end method

.method public static getAppDexInstructionSets(Lcom/android/server/pm/PackageSetting;)[Ljava/lang/String;
    .locals 4
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 54
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 55
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 56
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    .line 57
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@f
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    aput-object v1, v0, v2

    #@15
    .line 58
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@17
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    aput-object v1, v0, v3

    #@1d
    .line 56
    return-object v0

    #@1e
    .line 60
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    #@20
    .line 61
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@22
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    aput-object v1, v0, v2

    #@28
    .line 60
    return-object v0

    #@29
    .line 65
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    #@2b
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    aput-object v1, v0, v2

    #@31
    return-object v0
.end method

.method public static getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sharedLibraryIsa"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "ro.dalvik.vm.isa."

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 79
    .local v0, "dexCodeIsa":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .end local p0    # "sharedLibraryIsa":Ljava/lang/String;
    :goto_0
    return-object p0

    #@1f
    .restart local p0    # "sharedLibraryIsa":Ljava/lang/String;
    :cond_0
    move-object p0, v0

    #@20
    goto :goto_0
.end method

.method public static getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "instructionSets"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid/util/ArraySet;

    #@2
    array-length v2, p0

    #@3
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@6
    .line 84
    .local v0, "dexCodeInstructionSets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@7
    array-length v3, p0

    #@8
    :goto_0
    if-ge v2, v3, :cond_0

    #@a
    aget-object v1, p0, v2

    #@c
    .line 85
    .local v1, "instructionSet":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@13
    .line 84
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 87
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@19
    move-result v2

    #@1a
    new-array v2, v2, [Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, [Ljava/lang/String;

    #@22
    return-object v2
.end method

.method public static getPreferredInstructionSet()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    sget-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 118
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 121
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@b
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
