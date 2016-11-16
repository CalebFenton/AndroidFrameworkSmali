.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxLevelSteps"    # I

    #@0
    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 730
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    #@7
    .line 735
    new-array v0, p1, [J

    #@9
    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@b
    .line 734
    return-void
.end method

.method public constructor <init>(I[J)V
    .locals 3
    .param p1, "numSteps"    # I
    .param p2, "steps"    # [J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 730
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    #@8
    .line 739
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@a
    .line 740
    new-array v0, p1, [J

    #@c
    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@e
    .line 741
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@10
    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@13
    .line 738
    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .locals 7
    .param p1, "val"    # J
    .param p3, "topOffset"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 764
    const/4 v1, 0x0

    #@1
    .line 765
    .local v1, "hasData":Z
    :cond_0
    :goto_0
    if-ltz p3, :cond_3

    #@3
    .line 766
    shr-long v2, p1, p3

    #@5
    const-wide/16 v4, 0xf

    #@7
    and-long/2addr v2, v4

    #@8
    long-to-int v0, v2

    #@9
    .line 767
    .local v0, "digit":I
    add-int/lit8 p3, p3, -0x4

    #@b
    .line 768
    if-nez v1, :cond_1

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 771
    :cond_1
    const/4 v1, 0x1

    #@10
    .line 772
    if-ltz v0, :cond_2

    #@12
    const/16 v2, 0x9

    #@14
    if-gt v0, v2, :cond_2

    #@16
    .line 773
    add-int/lit8 v2, v0, 0x30

    #@18
    int-to-char v2, v2

    #@19
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    goto :goto_0

    #@1d
    .line 775
    :cond_2
    add-int/lit8 v2, v0, 0x61

    #@1f
    add-int/lit8 v2, v2, -0xa

    #@21
    int-to-char v2, v2

    #@22
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    goto :goto_0

    #@26
    .line 763
    .end local v0    # "digit":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 14
    .param p1, "numStepLevels"    # I
    .param p2, "modeBits"    # J
    .param p4, "elapsedRealtime"    # J

    #@0
    .prologue
    .line 977
    iget v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@2
    .line 978
    .local v5, "stepCount":I
    iget-wide v6, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    #@4
    .line 979
    .local v6, "lastStepTime":J
    const-wide/16 v12, 0x0

    #@6
    cmp-long v9, v6, v12

    #@8
    if-ltz v9, :cond_2

    #@a
    if-lez p1, :cond_2

    #@c
    .line 980
    iget-object v8, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@e
    .line 981
    .local v8, "steps":[J
    sub-long v2, p4, v6

    #@10
    .line 982
    .local v2, "duration":J
    const/4 v4, 0x0

    #@11
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    #@13
    .line 983
    array-length v9, v8

    #@14
    add-int/lit8 v9, v9, -0x1

    #@16
    const/4 v12, 0x0

    #@17
    const/4 v13, 0x1

    #@18
    invoke-static {v8, v12, v8, v13, v9}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1b
    .line 984
    sub-int v9, p1, v4

    #@1d
    int-to-long v12, v9

    #@1e
    div-long v10, v2, v12

    #@20
    .line 985
    .local v10, "thisDuration":J
    sub-long/2addr v2, v10

    #@21
    .line 986
    const-wide v12, 0xffffffffffL

    #@26
    cmp-long v9, v10, v12

    #@28
    if-lez v9, :cond_0

    #@2a
    .line 987
    const-wide v10, 0xffffffffffL

    #@2f
    .line 989
    :cond_0
    or-long v12, v10, p2

    #@31
    const/4 v9, 0x0

    #@32
    aput-wide v12, v8, v9

    #@34
    .line 982
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 991
    .end local v10    # "thisDuration":J
    :cond_1
    add-int/2addr v5, p1

    #@38
    .line 992
    array-length v9, v8

    #@39
    if-le v5, v9, :cond_2

    #@3b
    .line 993
    array-length v5, v8

    #@3c
    .line 996
    .end local v2    # "duration":J
    .end local v4    # "i":I
    .end local v8    # "steps":[J
    :cond_2
    iput v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@3e
    .line 997
    move-wide/from16 v0, p4

    #@40
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    #@42
    .line 976
    return-void
.end method

.method public clearTime()V
    .locals 2

    #@0
    .prologue
    .line 895
    const-wide/16 v0, -0x1

    #@2
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    #@4
    .line 894
    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .locals 15
    .param p1, "modesOfInterest"    # J
    .param p3, "modeValues"    # J
    .param p5, "outNumOfInterest"    # [I

    #@0
    .prologue
    .line 941
    iget-object v7, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2
    .line 942
    .local v7, "steps":[J
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@4
    .line 943
    .local v0, "count":I
    if-gtz v0, :cond_0

    #@6
    .line 944
    const-wide/16 v10, -0x1

    #@8
    return-wide v10

    #@9
    .line 946
    :cond_0
    const-wide/16 v8, 0x0

    #@b
    .line 947
    .local v8, "total":J
    const/4 v6, 0x0

    #@c
    .line 948
    .local v6, "numOfInterest":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@f
    .line 949
    aget-wide v10, v7, v1

    #@11
    const-wide/high16 v12, 0xff000000000000L

    #@13
    and-long/2addr v10, v12

    #@14
    .line 950
    const/16 v12, 0x30

    #@16
    .line 949
    shr-long v2, v10, v12

    #@18
    .line 951
    .local v2, "initMode":J
    aget-wide v10, v7, v1

    #@1a
    const-wide/high16 v12, -0x100000000000000L

    #@1c
    and-long/2addr v10, v12

    #@1d
    .line 952
    const/16 v12, 0x38

    #@1f
    .line 951
    shr-long v4, v10, v12

    #@21
    .line 954
    .local v4, "modMode":J
    and-long v10, v4, p1

    #@23
    const-wide/16 v12, 0x0

    #@25
    cmp-long v10, v10, v12

    #@27
    if-nez v10, :cond_1

    #@29
    .line 956
    and-long v10, v2, p1

    #@2b
    cmp-long v10, v10, p3

    #@2d
    if-nez v10, :cond_1

    #@2f
    .line 958
    add-int/lit8 v6, v6, 0x1

    #@31
    .line 959
    aget-wide v10, v7, v1

    #@33
    const-wide v12, 0xffffffffffL

    #@38
    and-long/2addr v10, v12

    #@39
    add-long/2addr v8, v10

    #@3a
    .line 948
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 963
    .end local v2    # "initMode":J
    .end local v4    # "modMode":J
    :cond_2
    if-gtz v6, :cond_3

    #@3f
    .line 964
    const-wide/16 v10, -0x1

    #@41
    return-wide v10

    #@42
    .line 967
    :cond_3
    if-eqz p5, :cond_4

    #@44
    .line 968
    const/4 v10, 0x0

    #@45
    aput v6, p5, v10

    #@47
    .line 973
    :cond_4
    int-to-long v10, v6

    #@48
    div-long v10, v8, v10

    #@4a
    const-wide/16 v12, 0x64

    #@4c
    mul-long/2addr v10, v12

    #@4d
    return-wide v10
.end method

.method public computeTimePerLevel()J
    .locals 10

    #@0
    .prologue
    .line 899
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2
    .line 900
    .local v2, "steps":[J
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@4
    .line 903
    .local v1, "numSteps":I
    if-gtz v1, :cond_0

    #@6
    .line 904
    const-wide/16 v6, -0x1

    #@8
    return-wide v6

    #@9
    .line 906
    :cond_0
    const-wide/16 v4, 0x0

    #@b
    .line 907
    .local v4, "total":J
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@e
    .line 908
    aget-wide v6, v2, v0

    #@10
    const-wide v8, 0xffffffffffL

    #@15
    and-long/2addr v6, v8

    #@16
    add-long/2addr v4, v6

    #@17
    .line 907
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 910
    :cond_1
    int-to-long v6, v1

    #@1b
    div-long v6, v4, v6

    #@1d
    return-wide v6
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 820
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 821
    .local v2, "N":I
    const/4 v6, 0x0

    #@5
    .line 823
    .local v6, "i":I
    const-wide/16 v10, 0x0

    #@7
    .line 824
    .local v10, "out":J
    :goto_0
    if-ge v6, v2, :cond_0

    #@9
    move-object/from16 v0, p2

    #@b
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v3

    #@f
    .local v3, "c":C
    const/16 v7, 0x2d

    #@11
    if-eq v3, v7, :cond_0

    #@13
    .line 825
    add-int/lit8 v6, v6, 0x1

    #@15
    .line 826
    sparse-switch v3, :sswitch_data_0

    #@18
    goto :goto_0

    #@19
    .line 846
    :sswitch_0
    const-wide/high16 v12, 0x200000000000000L

    #@1b
    or-long/2addr v10, v12

    #@1c
    .line 847
    goto :goto_0

    #@1d
    .line 827
    :sswitch_1
    const-wide/16 v12, 0x0

    #@1f
    or-long/2addr v10, v12

    #@20
    .line 828
    goto :goto_0

    #@21
    .line 829
    :sswitch_2
    const-wide/high16 v12, 0x1000000000000L

    #@23
    or-long/2addr v10, v12

    #@24
    .line 830
    goto :goto_0

    #@25
    .line 831
    :sswitch_3
    const-wide/high16 v12, 0x2000000000000L

    #@27
    or-long/2addr v10, v12

    #@28
    .line 832
    goto :goto_0

    #@29
    .line 833
    :sswitch_4
    const-wide/high16 v12, 0x3000000000000L

    #@2b
    or-long/2addr v10, v12

    #@2c
    .line 835
    goto :goto_0

    #@2d
    .line 836
    :sswitch_5
    const-wide/high16 v12, 0x4000000000000L

    #@2f
    or-long/2addr v10, v12

    #@30
    .line 838
    goto :goto_0

    #@31
    .line 839
    :sswitch_6
    const-wide/high16 v12, 0x8000000000000L

    #@33
    or-long/2addr v10, v12

    #@34
    .line 841
    goto :goto_0

    #@35
    .line 842
    :sswitch_7
    const-wide/16 v12, 0x0

    #@37
    or-long/2addr v10, v12

    #@38
    .line 843
    goto :goto_0

    #@39
    .line 844
    :sswitch_8
    const-wide/high16 v12, 0x100000000000000L

    #@3b
    or-long/2addr v10, v12

    #@3c
    .line 845
    goto :goto_0

    #@3d
    .line 848
    :sswitch_9
    const-wide/high16 v12, 0x300000000000000L    # 3.13151306251402E-294

    #@3f
    or-long/2addr v10, v12

    #@40
    .line 850
    goto :goto_0

    #@41
    .line 851
    :sswitch_a
    const-wide/high16 v12, 0x400000000000000L

    #@43
    or-long/2addr v10, v12

    #@44
    .line 853
    goto :goto_0

    #@45
    .line 854
    :sswitch_b
    const-wide/high16 v12, 0x800000000000000L

    #@47
    or-long/2addr v10, v12

    #@48
    .line 856
    goto :goto_0

    #@49
    .line 859
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@4b
    .line 860
    const-wide/16 v8, 0x0

    #@4d
    .line 861
    .local v8, "level":J
    :cond_1
    :goto_1
    if-ge v6, v2, :cond_4

    #@4f
    move-object/from16 v0, p2

    #@51
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@54
    move-result v3

    #@55
    .restart local v3    # "c":C
    const/16 v7, 0x2d

    #@57
    if-eq v3, v7, :cond_4

    #@59
    .line 862
    add-int/lit8 v6, v6, 0x1

    #@5b
    .line 863
    const/4 v7, 0x4

    #@5c
    shl-long/2addr v8, v7

    #@5d
    .line 864
    const/16 v7, 0x30

    #@5f
    if-lt v3, v7, :cond_2

    #@61
    const/16 v7, 0x39

    #@63
    if-gt v3, v7, :cond_2

    #@65
    .line 865
    add-int/lit8 v7, v3, -0x30

    #@67
    int-to-long v12, v7

    #@68
    add-long/2addr v8, v12

    #@69
    .line 864
    goto :goto_1

    #@6a
    .line 866
    :cond_2
    const/16 v7, 0x61

    #@6c
    if-lt v3, v7, :cond_3

    #@6e
    const/16 v7, 0x66

    #@70
    if-gt v3, v7, :cond_3

    #@72
    .line 867
    add-int/lit8 v7, v3, -0x61

    #@74
    add-int/lit8 v7, v7, 0xa

    #@76
    int-to-long v12, v7

    #@77
    add-long/2addr v8, v12

    #@78
    .line 866
    goto :goto_1

    #@79
    .line 868
    :cond_3
    const/16 v7, 0x41

    #@7b
    if-lt v3, v7, :cond_1

    #@7d
    const/16 v7, 0x46

    #@7f
    if-gt v3, v7, :cond_1

    #@81
    .line 869
    add-int/lit8 v7, v3, -0x41

    #@83
    add-int/lit8 v7, v7, 0xa

    #@85
    int-to-long v12, v7

    #@86
    add-long/2addr v8, v12

    #@87
    goto :goto_1

    #@88
    .line 872
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@8a
    .line 873
    const/16 v7, 0x28

    #@8c
    shl-long v12, v8, v7

    #@8e
    const-wide v14, 0xff0000000000L

    #@93
    and-long/2addr v12, v14

    #@94
    or-long/2addr v10, v12

    #@95
    .line 874
    const-wide/16 v4, 0x0

    #@97
    .line 875
    .local v4, "duration":J
    :cond_5
    :goto_2
    if-ge v6, v2, :cond_8

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@9e
    move-result v3

    #@9f
    .restart local v3    # "c":C
    const/16 v7, 0x2d

    #@a1
    if-eq v3, v7, :cond_8

    #@a3
    .line 876
    add-int/lit8 v6, v6, 0x1

    #@a5
    .line 877
    const/4 v7, 0x4

    #@a6
    shl-long/2addr v4, v7

    #@a7
    .line 878
    const/16 v7, 0x30

    #@a9
    if-lt v3, v7, :cond_6

    #@ab
    const/16 v7, 0x39

    #@ad
    if-gt v3, v7, :cond_6

    #@af
    .line 879
    add-int/lit8 v7, v3, -0x30

    #@b1
    int-to-long v12, v7

    #@b2
    add-long/2addr v4, v12

    #@b3
    .line 878
    goto :goto_2

    #@b4
    .line 880
    :cond_6
    const/16 v7, 0x61

    #@b6
    if-lt v3, v7, :cond_7

    #@b8
    const/16 v7, 0x66

    #@ba
    if-gt v3, v7, :cond_7

    #@bc
    .line 881
    add-int/lit8 v7, v3, -0x61

    #@be
    add-int/lit8 v7, v7, 0xa

    #@c0
    int-to-long v12, v7

    #@c1
    add-long/2addr v4, v12

    #@c2
    .line 880
    goto :goto_2

    #@c3
    .line 882
    :cond_7
    const/16 v7, 0x41

    #@c5
    if-lt v3, v7, :cond_5

    #@c7
    const/16 v7, 0x46

    #@c9
    if-gt v3, v7, :cond_5

    #@cb
    .line 883
    add-int/lit8 v7, v3, -0x41

    #@cd
    add-int/lit8 v7, v7, 0xa

    #@cf
    int-to-long v12, v7

    #@d0
    add-long/2addr v4, v12

    #@d1
    goto :goto_2

    #@d2
    .line 886
    .end local v3    # "c":C
    :cond_8
    move-object/from16 v0, p0

    #@d4
    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@d6
    const-wide v12, 0xffffffffffL

    #@db
    and-long/2addr v12, v4

    #@dc
    or-long/2addr v12, v10

    #@dd
    aput-wide v12, v7, p1

    #@df
    .line 819
    return-void

    #@e0
    .line 826
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x46 -> :sswitch_7
        0x49 -> :sswitch_b
        0x4f -> :sswitch_8
        0x50 -> :sswitch_a
        0x5a -> :sswitch_9
        0x64 -> :sswitch_3
        0x66 -> :sswitch_1
        0x69 -> :sswitch_6
        0x6f -> :sswitch_2
        0x70 -> :sswitch_5
        0x7a -> :sswitch_4
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v10, 0x2d

    #@2
    .line 781
    iget-object v7, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@4
    aget-wide v4, v7, p1

    #@6
    .line 782
    .local v4, "item":J
    const-wide v8, 0xffffffffffL

    #@b
    and-long v0, v4, v8

    #@d
    .line 783
    .local v0, "duration":J
    const-wide v8, 0xff0000000000L

    #@12
    and-long/2addr v8, v4

    #@13
    .line 784
    const/16 v7, 0x28

    #@15
    .line 783
    shr-long/2addr v8, v7

    #@16
    long-to-int v3, v8

    #@17
    .line 785
    .local v3, "level":I
    const-wide/high16 v8, 0xff000000000000L

    #@19
    and-long/2addr v8, v4

    #@1a
    .line 786
    const/16 v7, 0x30

    #@1c
    .line 785
    shr-long/2addr v8, v7

    #@1d
    long-to-int v2, v8

    #@1e
    .line 787
    .local v2, "initMode":I
    const-wide/high16 v8, -0x100000000000000L

    #@20
    and-long/2addr v8, v4

    #@21
    .line 788
    const/16 v7, 0x38

    #@23
    .line 787
    shr-long/2addr v8, v7

    #@24
    long-to-int v6, v8

    #@25
    .line 789
    .local v6, "modMode":I
    and-int/lit8 v7, v2, 0x3

    #@27
    add-int/lit8 v7, v7, 0x1

    #@29
    packed-switch v7, :pswitch_data_0

    #@2c
    .line 795
    :goto_0
    and-int/lit8 v7, v2, 0x4

    #@2e
    if-eqz v7, :cond_0

    #@30
    .line 796
    const/16 v7, 0x70

    #@32
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 798
    :cond_0
    and-int/lit8 v7, v2, 0x8

    #@37
    if-eqz v7, :cond_1

    #@39
    .line 799
    const/16 v7, 0x69

    #@3b
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    .line 801
    :cond_1
    and-int/lit8 v7, v6, 0x3

    #@40
    add-int/lit8 v7, v7, 0x1

    #@42
    packed-switch v7, :pswitch_data_1

    #@45
    .line 807
    :goto_1
    and-int/lit8 v7, v6, 0x4

    #@47
    if-eqz v7, :cond_2

    #@49
    .line 808
    const/16 v7, 0x50

    #@4b
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 810
    :cond_2
    and-int/lit8 v7, v6, 0x8

    #@50
    if-eqz v7, :cond_3

    #@52
    .line 811
    const/16 v7, 0x49

    #@54
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    .line 813
    :cond_3
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 814
    int-to-long v8, v3

    #@5b
    const/4 v7, 0x4

    #@5c
    invoke-direct {p0, v8, v9, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    #@5f
    .line 815
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    .line 816
    const/16 v7, 0x24

    #@64
    invoke-direct {p0, v0, v1, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    #@67
    .line 780
    return-void

    #@68
    .line 790
    :pswitch_0
    const/16 v7, 0x66

    #@6a
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    goto :goto_0

    #@6e
    .line 791
    :pswitch_1
    const/16 v7, 0x6f

    #@70
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@73
    goto :goto_0

    #@74
    .line 792
    :pswitch_2
    const/16 v7, 0x64

    #@76
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    goto :goto_0

    #@7a
    .line 793
    :pswitch_3
    const/16 v7, 0x7a

    #@7c
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7f
    goto :goto_0

    #@80
    .line 802
    :pswitch_4
    const/16 v7, 0x46

    #@82
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@85
    goto :goto_1

    #@86
    .line 803
    :pswitch_5
    const/16 v7, 0x4f

    #@88
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_1

    #@8c
    .line 804
    :pswitch_6
    const/16 v7, 0x44

    #@8e
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    goto :goto_1

    #@92
    .line 805
    :pswitch_7
    const/16 v7, 0x5a

    #@94
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@97
    goto :goto_1

    #@98
    .line 789
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@a4
    .line 801
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    const-wide v2, 0xffffffffffL

    #@9
    and-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method public getInitModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    const-wide/high16 v2, 0xff000000000000L

    #@6
    and-long/2addr v0, v2

    #@7
    .line 755
    const/16 v2, 0x30

    #@9
    .line 754
    shr-long/2addr v0, v2

    #@a
    long-to-int v0, v0

    #@b
    return v0
.end method

.method public getLevelAt(I)I
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 749
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    const-wide v2, 0xff0000000000L

    #@9
    and-long/2addr v0, v2

    #@a
    .line 750
    const/16 v2, 0x28

    #@c
    .line 749
    shr-long/2addr v0, v2

    #@d
    long-to-int v0, v0

    #@e
    return v0
.end method

.method public getModModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    const-wide/high16 v2, -0x100000000000000L

    #@6
    and-long/2addr v0, v2

    #@7
    .line 760
    const/16 v2, 0x38

    #@9
    .line 759
    shr-long/2addr v0, v2

    #@a
    long-to-int v0, v0

    #@b
    return v0
.end method

.method public init()V
    .locals 2

    #@0
    .prologue
    .line 890
    const-wide/16 v0, -0x1

    #@2
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    #@4
    .line 891
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@7
    .line 889
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1002
    .local v0, "N":I
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@6
    array-length v2, v2

    #@7
    if-le v0, v2, :cond_0

    #@9
    .line 1003
    new-instance v2, Landroid/os/ParcelFormatException;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "more step durations than available: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 1005
    :cond_0
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@25
    .line 1006
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@28
    .line 1007
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v4

    #@2e
    aput-wide v4, v2, v1

    #@30
    .line 1006
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1000
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1012
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@2
    .line 1013
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1014
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@8
    .line 1015
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@a
    aget-wide v2, v2, v1

    #@c
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 1014
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1011
    :cond_0
    return-void
.end method
