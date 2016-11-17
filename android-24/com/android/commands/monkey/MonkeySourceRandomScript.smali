.class public Lcom/android/commands/monkey/MonkeySourceRandomScript;
.super Ljava/lang/Object;
.source "MonkeySourceRandomScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# instance fields
.field private mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mRandom:Ljava/util/Random;

.field private mRandomizeScript:Z

.field private mScriptCount:I

.field private mScriptSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/commands/monkey/MonkeySourceScript;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mVerbose:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .locals 15
    .param p1, "setupFileName"    # Ljava/lang/String;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "random"    # Ljava/util/Random;
    .param p7, "profileWaitTime"    # J
    .param p9, "deviceSleepTime"    # J
    .param p11, "randomizeScript"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p2, "scriptFileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v2, 0x0

    #@4
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    #@6
    .line 30
    const/4 v2, 0x0

    #@7
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@9
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@10
    .line 36
    const/4 v2, 0x0

    #@11
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@13
    .line 41
    const/4 v2, 0x0

    #@14
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    #@16
    .line 43
    const/4 v2, 0x0

    #@17
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    #@19
    .line 57
    if-eqz p1, :cond_0

    #@1b
    .line 58
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    #@1d
    move-object/from16 v3, p6

    #@1f
    move-object/from16 v4, p1

    #@21
    move-wide/from16 v5, p3

    #@23
    move/from16 v7, p5

    #@25
    move-wide/from16 v8, p7

    #@27
    move-wide/from16 v10, p9

    #@29
    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    #@2c
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@2e
    .line 60
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@30
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@32
    .line 63
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v12

    #@36
    .local v12, "fileName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_1

    #@3c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Ljava/lang/String;

    #@42
    .line 64
    .local v4, "fileName":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@44
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    #@46
    move-object/from16 v3, p6

    #@48
    move-wide/from16 v5, p3

    #@4a
    move/from16 v7, p5

    #@4c
    move-wide/from16 v8, p7

    #@4e
    move-wide/from16 v10, p9

    #@50
    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    #@53
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 68
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p6

    #@59
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    #@5b
    .line 69
    move/from16 v0, p11

    #@5d
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    #@5f
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .locals 14
    .param p2, "throttle"    # J
    .param p4, "randomizeThrottle"    # Z
    .param p5, "random"    # Ljava/util/Random;
    .param p6, "profileWaitTime"    # J
    .param p8, "deviceSleepTime"    # J
    .param p10, "randomizeScript"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p1, "scriptFileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object v3, p1

    #@3
    move-wide/from16 v4, p2

    #@5
    move/from16 v6, p4

    #@7
    move-object/from16 v7, p5

    #@9
    move-wide/from16 v8, p6

    #@b
    move-wide/from16 v10, p8

    #@d
    move/from16 v12, p10

    #@f
    invoke-direct/range {v1 .. v12}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    #@12
    .line 82
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 96
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 97
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 98
    .local v1, "numSources":I
    if-ne v1, v3, :cond_2

    #@e
    .line 99
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    #@17
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@19
    .line 110
    .end local v1    # "numSources":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@1b
    if-eqz v2, :cond_4

    #@1d
    .line 111
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@1f
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceScript;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    #@22
    move-result-object v0

    #@23
    .line 112
    .local v0, "nextEvent":Lcom/android/commands/monkey/MonkeyEvent;
    if-nez v0, :cond_1

    #@25
    .line 113
    iput-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@27
    .line 115
    :cond_1
    return-object v0

    #@28
    .line 100
    .end local v0    # "nextEvent":Lcom/android/commands/monkey/MonkeyEvent;
    .restart local v1    # "numSources":I
    :cond_2
    if-le v1, v3, :cond_0

    #@2a
    .line 101
    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    #@2c
    if-eqz v2, :cond_3

    #@2e
    .line 102
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@30
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    #@32
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    #@3c
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@3e
    goto :goto_0

    #@3f
    .line 104
    :cond_3
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@41
    iget v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    #@43
    rem-int/2addr v3, v1

    #@44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    #@4a
    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@4c
    .line 105
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    #@4e
    add-int/lit8 v2, v2, 0x1

    #@50
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    #@52
    goto :goto_0

    #@53
    .line 117
    .end local v1    # "numSources":I
    :cond_4
    return-object v4
.end method

.method public setVerbose(I)V
    .locals 3
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 126
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    #@2
    .line 128
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 129
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@8
    invoke-virtual {v2, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    #@b
    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "source$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/commands/monkey/MonkeySourceScript;

    #@1d
    .line 133
    .local v0, "source":Lcom/android/commands/monkey/MonkeySourceScript;
    invoke-virtual {v0, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    #@20
    goto :goto_0

    #@21
    .line 125
    .end local v0    # "source":Lcom/android/commands/monkey/MonkeySourceScript;
    :cond_1
    return-void
.end method

.method public validate()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 145
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    #@7
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "source$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_3

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/commands/monkey/MonkeySourceScript;

    #@1f
    .line 150
    .local v0, "source":Lcom/android/commands/monkey/MonkeySourceScript;
    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_1

    #@25
    .line 151
    return v3

    #@26
    .line 146
    .end local v0    # "source":Lcom/android/commands/monkey/MonkeySourceScript;
    .end local v1    # "source$iterator":Ljava/util/Iterator;
    :cond_2
    return v3

    #@27
    .line 155
    .restart local v1    # "source$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v2, 0x1

    #@28
    return v2
.end method
