.class public Lcom/android/internal/os/CpuScalingPolicyReader;
.super Ljava/lang/Object;
.source "CpuScalingPolicyReader.java"


# static fields
.field private static final blacklist CPUFREQ_DIR:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq"

.field private static final blacklist FILE_NAME_CPUINFO_CUR_FREQ:Ljava/lang/String; = "cpuinfo_cur_freq"

.field private static final blacklist FILE_NAME_RELATED_CPUS:Ljava/lang/String; = "related_cpus"

.field private static final blacklist FILE_NAME_SCALING_AVAILABLE_FREQUENCIES:Ljava/lang/String; = "scaling_available_frequencies"

.field private static final blacklist FILE_NAME_SCALING_BOOST_FREQUENCIES:Ljava/lang/String; = "scaling_boost_frequencies"

.field private static final blacklist POLICY_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "CpuScalingPolicyReader"


# instance fields
.field private final blacklist mCpuFreqDir:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-string/jumbo v0, "policy(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/CpuScalingPolicyReader;->POLICY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    const-string v0, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {p0, v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "cpuFreqDir"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/os/CpuScalingPolicyReader;->mCpuFreqDir:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static blacklist readIntsFromFile(Ljava/io/File;)[I
    .registers 11
    .param p0, "file"    # Ljava/io/File;

    .line 122
    const-string v0, "CpuScalingPolicyReader"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 123
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 126
    :cond_b
    new-instance v1, Landroid/util/IntArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 128
    .local v1, "intArray":Landroid/util/IntArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_14
    invoke-static {p0, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "contents":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "strings":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 131
    array-length v5, v4

    :goto_26
    if-ge v3, v5, :cond_5d

    aget-object v6, v4, v3

    .line 132
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isBlank()Z

    move-result v7
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_62

    if-eqz v7, :cond_31

    .line 133
    goto :goto_5a

    .line 136
    :cond_31
    :try_start_31
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/IntArray;->add(I)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_62

    .line 140
    goto :goto_5a

    .line 137
    :catch_39
    move-exception v7

    .line 138
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_3a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected file format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 142
    :cond_5d
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_61} :catch_62

    return-object v0

    .line 143
    .end local v2    # "contents":Ljava/lang/String;
    .end local v4    # "strings":[Ljava/lang/String;
    :catch_62
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method


# virtual methods
.method public blacklist read()Lcom/android/internal/os/CpuScalingPolicies;
    .registers 16

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .local v0, "cpusByPolicy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 73
    .local v1, "freqsByPolicy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/os/CpuScalingPolicyReader;->mCpuFreqDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "cpuFreqDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 75
    .local v3, "policyDirs":[Ljava/io/File;
    const/4 v4, 0x0

    if-eqz v3, :cond_8f

    .line 76
    array-length v5, v3

    move v6, v4

    :goto_1a
    if-ge v6, v5, :cond_8f

    aget-object v7, v3, v6

    .line 77
    .local v7, "policyDir":Ljava/io/File;
    sget-object v8, Lcom/android/internal/os/CpuScalingPolicyReader;->POLICY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 78
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 79
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "related_cpus"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v9

    .line 81
    .local v9, "relatedCpus":[I
    array-length v10, v9

    if-nez v10, :cond_3e

    .line 82
    goto :goto_8c

    .line 85
    :cond_3e
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "scaling_available_frequencies"

    invoke-direct {v10, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v10

    .line 87
    .local v10, "availableFreqs":[I
    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "scaling_boost_frequencies"

    invoke-direct {v11, v7, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v11

    .line 90
    .local v11, "boostFreqs":[I
    array-length v12, v11

    if-nez v12, :cond_5b

    .line 91
    move-object v12, v10

    .local v12, "freqs":[I
    goto :goto_67

    .line 93
    .end local v12    # "freqs":[I
    :cond_5b
    array-length v12, v10

    array-length v13, v11

    add-int/2addr v12, v13

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 95
    .restart local v12    # "freqs":[I
    array-length v13, v10

    array-length v14, v11

    invoke-static {v11, v4, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :goto_67
    array-length v13, v12

    if-nez v13, :cond_7d

    .line 99
    new-instance v13, Ljava/io/File;

    const-string v14, "cpuinfo_cur_freq"

    invoke-direct {v13, v7, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v12

    .line 100
    array-length v13, v12

    if-nez v13, :cond_7d

    .line 101
    filled-new-array {v4}, [I

    move-result-object v13

    move-object v12, v13

    .line 104
    :cond_7d
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 105
    .local v13, "policy":I
    invoke-virtual {v0, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {v1, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .end local v7    # "policyDir":Ljava/io/File;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "relatedCpus":[I
    .end local v10    # "availableFreqs":[I
    .end local v11    # "boostFreqs":[I
    .end local v12    # "freqs":[I
    .end local v13    # "policy":I
    :cond_8c
    :goto_8c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 111
    :cond_8f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_a3

    .line 113
    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    filled-new-array {v4}, [I

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    :cond_a3
    new-instance v4, Lcom/android/internal/os/CpuScalingPolicies;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/os/CpuScalingPolicies;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v4
.end method
