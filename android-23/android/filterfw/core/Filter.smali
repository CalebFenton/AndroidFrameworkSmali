.class public abstract Landroid/filterfw/core/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field static final STATUS_ERROR:I = 0x6

.field static final STATUS_FINISHED:I = 0x5

.field static final STATUS_PREINIT:I = 0x0

.field static final STATUS_PREPARED:I = 0x2

.field static final STATUS_PROCESSING:I = 0x3

.field static final STATUS_RELEASED:I = 0x7

.field static final STATUS_SLEEPING:I = 0x4

.field static final STATUS_UNPREPARED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Filter"


# instance fields
.field private mCurrentTimestamp:J

.field private mFramesToRelease:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mFramesToSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mInputCount:I

.field private mInputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOpen:Z

.field private mLogVerbose:Z

.field private mName:Ljava/lang/String;

.field private mOutputCount:I

.field private mOutputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepDelay:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 54
    iput v0, p0, Landroid/filterfw/core/Filter;->mInputCount:I

    #@7
    .line 55
    iput v0, p0, Landroid/filterfw/core/Filter;->mOutputCount:I

    #@9
    .line 63
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@b
    .line 64
    iput-boolean v1, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    #@d
    .line 73
    iput-object p1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    #@f
    .line 74
    new-instance v0, Ljava/util/HashSet;

    #@11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@14
    iput-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    #@16
    .line 75
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToSet:Ljava/util/HashMap;

    #@1d
    .line 76
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@1f
    .line 78
    const-string/jumbo v0, "Filter"

    #@22
    const/4 v1, 0x2

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@26
    move-result v0

    #@27
    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@29
    .line 72
    return-void
.end method

.method private final addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 10
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 560
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    .line 562
    .local v2, "filterClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@7
    move-result-object v7

    #@8
    const/4 v6, 0x0

    #@9
    array-length v8, v7

    #@a
    :goto_0
    if-ge v6, v8, :cond_3

    #@c
    aget-object v1, v7, v6

    #@e
    .line 563
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v9, Landroid/filterfw/core/GenerateFinalPort;

    #@10
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@13
    move-result-object v0

    #@14
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    #@16
    move-object v3, v0

    #@17
    .line 564
    check-cast v3, Landroid/filterfw/core/GenerateFinalPort;

    #@19
    .line 565
    .local v3, "generator":Landroid/filterfw/core/GenerateFinalPort;
    invoke-interface {v3}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    #@1c
    move-result-object v9

    #@1d
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_1

    #@23
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 566
    .local v5, "name":Ljava/lang/String;
    :goto_1
    invoke-interface {v3}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    #@2a
    move-result v4

    #@2b
    .line 567
    .local v4, "hasDefault":Z
    const/4 v9, 0x1

    #@2c
    invoke-virtual {p0, v5, v1, v4, v9}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    #@2f
    .line 568
    invoke-virtual {p1, v5}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@32
    move-result v9

    #@33
    if-eqz v9, :cond_2

    #@35
    .line 569
    invoke-virtual {p1, v5}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v9

    #@39
    invoke-direct {p0, v5, v9}, Landroid/filterfw/core/Filter;->setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3c
    .line 570
    invoke-virtual {p1, v5}, Landroid/filterfw/core/KeyValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 562
    .end local v3    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    .end local v4    # "hasDefault":Z
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@41
    goto :goto_0

    #@42
    .line 565
    .restart local v3    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    :cond_1
    invoke-interface {v3}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .restart local v5    # "name":Ljava/lang/String;
    goto :goto_1

    #@47
    .line 571
    .restart local v4    # "hasDefault":Z
    :cond_2
    invoke-interface {v3}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    #@4a
    move-result v9

    #@4b
    if-nez v9, :cond_0

    #@4d
    .line 572
    new-instance v6, Ljava/lang/RuntimeException;

    #@4f
    new-instance v7, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v8, "No value specified for final input port \'"

    #@57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    .line 573
    const-string/jumbo v8, "\' of filter "

    #@62
    .line 572
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    .line 573
    const-string/jumbo v8, "!"

    #@6d
    .line 572
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@78
    throw v6

    #@79
    .line 559
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    .end local v4    # "hasDefault":Z
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final addAnnotatedPorts()V
    .locals 13

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 580
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    .line 582
    .local v2, "filterClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@8
    move-result-object v9

    #@9
    array-length v10, v9

    #@a
    move v8, v7

    #@b
    :goto_0
    if-ge v8, v10, :cond_3

    #@d
    aget-object v1, v9, v8

    #@f
    .line 583
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v6, Landroid/filterfw/core/GenerateFieldPort;

    #@11
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@14
    move-result-object v0

    #@15
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_1

    #@17
    move-object v3, v0

    #@18
    .line 584
    check-cast v3, Landroid/filterfw/core/GenerateFieldPort;

    #@1a
    .line 585
    .local v3, "generator":Landroid/filterfw/core/GenerateFieldPort;
    invoke-direct {p0, v3, v1}, Landroid/filterfw/core/Filter;->addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V

    #@1d
    .line 582
    .end local v3    # "generator":Landroid/filterfw/core/GenerateFieldPort;
    :cond_0
    :goto_1
    add-int/lit8 v6, v8, 0x1

    #@1f
    move v8, v6

    #@20
    goto :goto_0

    #@21
    .line 586
    :cond_1
    const-class v6, Landroid/filterfw/core/GenerateProgramPort;

    #@23
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_2

    #@29
    move-object v4, v0

    #@2a
    .line 587
    check-cast v4, Landroid/filterfw/core/GenerateProgramPort;

    #@2c
    .line 588
    .local v4, "generator":Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v4, v1}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    #@2f
    goto :goto_1

    #@30
    .line 589
    .end local v4    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    :cond_2
    const-class v6, Landroid/filterfw/core/GenerateProgramPorts;

    #@32
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_0

    #@38
    move-object v5, v0

    #@39
    .line 590
    check-cast v5, Landroid/filterfw/core/GenerateProgramPorts;

    #@3b
    .line 591
    .local v5, "generators":Landroid/filterfw/core/GenerateProgramPorts;
    invoke-interface {v5}, Landroid/filterfw/core/GenerateProgramPorts;->value()[Landroid/filterfw/core/GenerateProgramPort;

    #@3e
    move-result-object v11

    #@3f
    array-length v12, v11

    #@40
    move v6, v7

    #@41
    :goto_2
    if-ge v6, v12, :cond_0

    #@43
    aget-object v4, v11, v6

    #@45
    .line 592
    .restart local v4    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v4, v1}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    #@48
    .line 591
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 579
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    .end local v5    # "generators":Landroid/filterfw/core/GenerateProgramPorts;
    :cond_3
    return-void
.end method

.method private final addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "generator"    # Landroid/filterfw/core/GenerateFieldPort;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 599
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 600
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->hasDefault()Z

    #@11
    move-result v0

    #@12
    .line 601
    .local v0, "hasDefault":Z
    const/4 v2, 0x0

    #@13
    invoke-virtual {p0, v1, p2, v0, v2}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    #@16
    .line 598
    return-void

    #@17
    .line 599
    .end local v0    # "hasDefault":Z
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private final addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V
    .locals 6
    .param p1, "generator"    # Landroid/filterfw/core/GenerateProgramPort;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 605
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->name()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 606
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    move-object v2, v1

    #@f
    .line 608
    .local v2, "varName":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->type()Ljava/lang/Class;

    #@12
    move-result-object v4

    #@13
    .line 609
    .local v4, "varType":Ljava/lang/Class;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->hasDefault()Z

    #@16
    move-result v5

    #@17
    .local v5, "hasDefault":Z
    move-object v0, p0

    #@18
    move-object v3, p2

    #@19
    .line 610
    invoke-virtual/range {v0 .. v5}, Landroid/filterfw/core/Filter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V

    #@1c
    .line 604
    return-void

    #@1d
    .line 607
    .end local v2    # "varName":Ljava/lang/String;
    .end local v4    # "varType":Ljava/lang/Class;
    .end local v5    # "hasDefault":Z
    :cond_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .restart local v2    # "varName":Ljava/lang/String;
    goto :goto_0
.end method

.method private final closePorts()V
    .locals 7

    #@0
    .prologue
    .line 684
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    const-string/jumbo v4, "Filter"

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "Closing all ports on "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    const-string/jumbo v6, "!"

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 685
    :cond_0
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@27
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2a
    move-result-object v4

    #@2b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "inputPort$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@3b
    .line 686
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->close()V

    #@3e
    goto :goto_0

    #@3f
    .line 688
    .end local v0    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@41
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@44
    move-result-object v4

    #@45
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v3

    #@49
    .local v3, "outputPort$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_2

    #@4f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v2

    #@53
    check-cast v2, Landroid/filterfw/core/OutputPort;

    #@55
    .line 689
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->close()V

    #@58
    goto :goto_1

    #@59
    .line 683
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method

.method private final filterMustClose()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 694
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "inputPort$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@17
    .line 695
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->filterMustClose()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 696
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@1f
    if-eqz v4, :cond_1

    #@21
    const-string/jumbo v4, "Filter"

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Filter "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    const-string/jumbo v6, " must close due to port "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 697
    :cond_1
    return v7

    #@47
    .line 700
    .end local v0    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_2
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@49
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v3

    #@51
    .local v3, "outputPort$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_5

    #@57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v2

    #@5b
    check-cast v2, Landroid/filterfw/core/OutputPort;

    #@5d
    .line 701
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->filterMustClose()Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_3

    #@63
    .line 702
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@65
    if-eqz v4, :cond_4

    #@67
    const-string/jumbo v4, "Filter"

    #@6a
    new-instance v5, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v6, "Filter "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    const-string/jumbo v6, " must close due to port "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 703
    :cond_4
    return v7

    #@8d
    .line 706
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_5
    const/4 v4, 0x0

    #@8e
    return v4
.end method

.method private final initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 548
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    iput-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@7
    .line 549
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@e
    .line 550
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    #@11
    .line 547
    return-void
.end method

.method private final initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 0
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 554
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->addAnnotatedPorts()V

    #@3
    .line 555
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->setupPorts()V

    #@6
    .line 556
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V

    #@9
    .line 553
    return-void
.end method

.method private final inputConditionsMet()Z
    .locals 5

    #@0
    .prologue
    .line 664
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "port$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@16
    .line 665
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isReady()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 666
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@1e
    if-eqz v2, :cond_1

    #@20
    const-string/jumbo v2, "Filter"

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Input condition not met: "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, "!"

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 667
    :cond_1
    const/4 v2, 0x0

    #@42
    return v2

    #@43
    .line 670
    .end local v0    # "port":Landroid/filterfw/core/FilterPort;
    :cond_2
    const/4 v2, 0x1

    #@44
    return v2
.end method

.method public static final isAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filterName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v0

    #@9
    .line 89
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    .line 95
    .local v3, "filterClass":Ljava/lang/Class;
    :try_start_1
    const-class v4, Landroid/filterfw/core/Filter;

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    #@12
    .line 99
    const/4 v4, 0x1

    #@13
    return v4

    #@14
    .line 90
    .end local v3    # "filterClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    #@15
    .line 91
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return v5

    #@16
    .line 96
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "filterClass":Ljava/lang/Class;
    :catch_1
    move-exception v1

    #@17
    .line 97
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method private final outputConditionsMet()Z
    .locals 5

    #@0
    .prologue
    .line 674
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "port$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/core/OutputPort;

    #@16
    .line 675
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isReady()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 676
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@1e
    if-eqz v2, :cond_1

    #@20
    const-string/jumbo v2, "Filter"

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Output condition not met: "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, "!"

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 677
    :cond_1
    const/4 v2, 0x0

    #@42
    return v2

    #@43
    .line 680
    .end local v0    # "port":Landroid/filterfw/core/FilterPort;
    :cond_2
    const/4 v2, 0x1

    #@44
    return v2
.end method

.method private final releasePulledFrames(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 657
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "frame$iterator":Ljava/util/Iterator;
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
    check-cast v0, Landroid/filterfw/core/Frame;

    #@12
    .line 658
    .local v0, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@19
    goto :goto_0

    #@1a
    .line 660
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    #@1c
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    #@1f
    .line 656
    return-void
.end method

.method private final setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 620
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "Filter"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Setting immediate value "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " for port "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "!"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 621
    :cond_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@33
    move-result-object v0

    #@34
    .line 622
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    #@37
    .line 623
    const/4 v1, 0x0

    #@38
    invoke-static {p2, v1}, Landroid/filterfw/core/SimpleFrame;->wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    #@3f
    .line 619
    return-void
.end method

.method private final setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V
    .locals 4
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 615
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/String;

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p0, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@21
    goto :goto_0

    #@22
    .line 613
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private final transferInputFrames(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 627
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "inputPort$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@16
    .line 628
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    #@19
    goto :goto_0

    #@1a
    .line 626
    .end local v0    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_0
    return-void
.end method

.method private final wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .locals 7
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 633
    const/4 v5, 0x1

    #@2
    invoke-static {p2, v5}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    #@5
    move-result-object v1

    #@6
    .line 634
    .local v1, "inputFormat":Landroid/filterfw/core/MutableFrameFormat;
    if-nez p2, :cond_0

    #@8
    .line 637
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    #@f
    move-result-object v3

    #@10
    .line 638
    .local v3, "portFormat":Landroid/filterfw/core/FrameFormat;
    if-nez v3, :cond_2

    #@12
    const/4 v2, 0x0

    #@13
    .line 639
    :goto_0
    invoke-virtual {v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    #@16
    .line 643
    .end local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    :cond_0
    instance-of v5, p2, Ljava/lang/Number;

    #@18
    if-nez v5, :cond_1

    #@1a
    .line 644
    instance-of v5, p2, Ljava/lang/Boolean;

    #@1c
    if-eqz v5, :cond_3

    #@1e
    .line 643
    :cond_1
    const/4 v4, 0x0

    #@1f
    .line 649
    :goto_1
    if-eqz v4, :cond_4

    #@21
    .line 650
    new-instance v0, Landroid/filterfw/core/SerializedFrame;

    #@23
    invoke-direct {v0, v1, v6}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@26
    .line 652
    .local v0, "frame":Landroid/filterfw/core/Frame;
    :goto_2
    invoke-virtual {v0, p2}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    #@29
    .line 653
    return-object v0

    #@2a
    .line 638
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .restart local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    :cond_2
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    .local v2, "portClass":Ljava/lang/Class;
    goto :goto_0

    #@2f
    .line 645
    .end local v2    # "portClass":Ljava/lang/Class;
    .end local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    :cond_3
    instance-of v5, p2, Ljava/lang/String;

    #@31
    if-nez v5, :cond_1

    #@33
    .line 646
    instance-of v4, p2, Ljava/io/Serializable;

    #@35
    .local v4, "shouldSerialize":Z
    goto :goto_1

    #@36
    .line 651
    .end local v4    # "shouldSerialize":Z
    :cond_4
    new-instance v0, Landroid/filterfw/core/SimpleFrame;

    #@38
    invoke-direct {v0, v1, v6}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@3b
    .restart local v0    # "frame":Landroid/filterfw/core/Frame;
    goto :goto_2
.end method


# virtual methods
.method protected addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "hasDefault"    # Z
    .param p4, "isFinal"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 359
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@4
    .line 362
    if-eqz p4, :cond_1

    #@6
    .line 363
    new-instance v0, Landroid/filterfw/core/FinalPort;

    #@8
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/filterfw/core/FinalPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    #@b
    .line 367
    .local v0, "fieldPort":Landroid/filterfw/core/InputPort;
    :goto_0
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    const-string/jumbo v2, "Filter"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Filter "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " adding "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 368
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2, v5}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@3b
    move-result-object v1

    #@3c
    .line 370
    .local v1, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    #@3f
    .line 373
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@41
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 357
    return-void

    #@45
    .line 364
    .end local v0    # "fieldPort":Landroid/filterfw/core/InputPort;
    .end local v1    # "format":Landroid/filterfw/core/MutableFrameFormat;
    :cond_1
    new-instance v0, Landroid/filterfw/core/FieldPort;

    #@47
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    #@4a
    .restart local v0    # "fieldPort":Landroid/filterfw/core/InputPort;
    goto :goto_0
.end method

.method protected addInputPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@4
    .line 301
    return-void
.end method

.method protected addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formatMask"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 314
    new-instance v0, Landroid/filterfw/core/StreamPort;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@5
    .line 315
    .local v0, "port":Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, "Filter"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Filter "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " adding "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 316
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@30
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 317
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    #@36
    .line 313
    return-void
.end method

.method protected addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "outputName"    # Ljava/lang/String;
    .param p2, "inputName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    new-instance v0, Landroid/filterfw/core/OutputPort;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@5
    .line 349
    .local v0, "port":Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, "Filter"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Filter "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " adding "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 350
    :cond_0
    invoke-virtual {p0, p2}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Landroid/filterfw/core/OutputPort;->setBasePort(Landroid/filterfw/core/InputPort;)V

    #@35
    .line 351
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@37
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 347
    return-void
.end method

.method protected addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 330
    new-instance v0, Landroid/filterfw/core/OutputPort;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    #@5
    .line 331
    .local v0, "port":Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, "Filter"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Filter "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " adding "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 332
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    #@31
    .line 333
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@33
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 329
    return-void
.end method

.method protected addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "varType"    # Ljava/lang/Class;
    .param p5, "hasDefault"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 382
    invoke-virtual {p3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@4
    .line 385
    new-instance v0, Landroid/filterfw/core/ProgramPort;

    #@6
    move-object v1, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    move-object v4, p3

    #@a
    move v5, p5

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/filterfw/core/ProgramPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    #@e
    .line 388
    .local v0, "programPort":Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    const-string/jumbo v1, "Filter"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Filter "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, " adding "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 389
    :cond_0
    invoke-static {p4, v7}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@3a
    move-result-object v6

    #@3b
    .line 391
    .local v6, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v6}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    #@3e
    .line 394
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@40
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 380
    return-void
.end method

.method final declared-synchronized canProcess()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 499
    :try_start_0
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    const-string/jumbo v1, "Filter"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Checking if can process: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " ("

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget v3, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, ")."

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 500
    :cond_0
    iget v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@36
    const/4 v2, 0x3

    #@37
    if-gt v1, v2, :cond_2

    #@39
    .line 501
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->inputConditionsMet()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_1

    #@3f
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->outputConditionsMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result v0

    #@43
    :cond_1
    monitor-exit p0

    #@44
    return v0

    #@45
    :cond_2
    monitor-exit p0

    #@46
    .line 503
    return v0

    #@47
    :catchall_0
    move-exception v0

    #@48
    monitor-exit p0

    #@49
    throw v0
.end method

.method final clearInputs()V
    .locals 3

    #@0
    .prologue
    .line 517
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "inputPort$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@16
    .line 518
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->clear()V

    #@19
    goto :goto_0

    #@1a
    .line 516
    .end local v0    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_0
    return-void
.end method

.method final clearOutputs()V
    .locals 3

    #@0
    .prologue
    .line 523
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "outputPort$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/core/OutputPort;

    #@16
    .line 524
    .local v0, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->clear()V

    #@19
    goto :goto_0

    #@1a
    .line 522
    .end local v0    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_0
    return-void
.end method

.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 188
    return-void
.end method

.method protected closeOutputPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    #@7
    .line 397
    return-void
.end method

.method protected delayNextProcess(I)V
    .locals 1
    .param p1, "millisecs"    # I

    #@0
    .prologue
    .line 164
    iput p1, p0, Landroid/filterfw/core/Filter;->mSleepDelay:I

    #@2
    .line 165
    const/4 v0, 0x4

    #@3
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@5
    .line 163
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 268
    return-void
.end method

.method public getFilterClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@3
    move-result-object v0

    #@4
    .line 176
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public final getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;
    .locals 4
    .param p1, "portName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Attempting to access input port \'"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 225
    const-string/jumbo v3, "\' of "

    #@19
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 225
    const-string/jumbo v3, " before Filter has been initialized!"

    #@24
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 227
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@38
    .line 228
    .local v0, "result":Landroid/filterfw/core/InputPort;
    if-nez v0, :cond_1

    #@3a
    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Unknown input port \'"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, "\' on filter "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 230
    const-string/jumbo v3, "!"

    #@5a
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    .line 232
    :cond_1
    return-object v0
.end method

.method final getInputPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getNumberOfConnectedInputs()I
    .locals 4

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    .line 196
    .local v0, "c":I
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "inputPort$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/filterfw/core/InputPort;

    #@17
    .line 197
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->isConnected()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 198
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 201
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1
    return v0
.end method

.method public final getNumberOfConnectedOutputs()I
    .locals 4

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    .line 206
    .local v0, "c":I
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "outputPort$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/filterfw/core/OutputPort;

    #@17
    .line 207
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 208
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 211
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_1
    return v0
.end method

.method public final getNumberOfInputs()I
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public final getNumberOfOutputs()I
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;
    .locals 4
    .param p1, "portName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 237
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Attempting to access output port \'"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 238
    const-string/jumbo v3, "\' of "

    #@19
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 238
    const-string/jumbo v3, " before Filter has been initialized!"

    #@24
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 240
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/filterfw/core/OutputPort;

    #@38
    .line 241
    .local v0, "result":Landroid/filterfw/core/OutputPort;
    if-nez v0, :cond_1

    #@3a
    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Unknown output port \'"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, "\' on filter "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 243
    const-string/jumbo v3, "!"

    #@5a
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    .line 245
    :cond_1
    return-object v0
.end method

.method final getOutputPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getSleepDelay()I
    .locals 1

    #@0
    .prologue
    .line 185
    const/16 v0, 0xfa

    #@2
    return v0
.end method

.method final declared-synchronized getStatus()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 436
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/core/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    #@2
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@5
    .line 130
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    #@8
    .line 128
    return-void
.end method

.method protected initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "program"    # Landroid/filterfw/core/Program;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 284
    if-eqz p1, :cond_1

    #@2
    .line 285
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    #@4
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "inputPort$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/filterfw/core/InputPort;

    #@18
    .line 286
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getTarget()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    if-ne v2, p1, :cond_0

    #@1e
    .line 287
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    #@21
    goto :goto_0

    #@22
    .line 283
    .end local v0    # "inputPort":Landroid/filterfw/core/InputPort;
    .end local v1    # "inputPort$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final varargs initWithAssignmentList([Ljava/lang/Object;)V
    .locals 1
    .param p1, "keyValues"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 123
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    #@2
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@5
    .line 124
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    #@8
    .line 125
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    #@b
    .line 122
    return-void
.end method

.method public final initWithAssignmentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "assignments"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    :try_start_0
    new-instance v2, Landroid/filterfw/io/TextGraphReader;

    #@2
    invoke-direct {v2}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    #@5
    invoke-virtual {v2, p1}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;

    #@8
    move-result-object v1

    #@9
    .line 116
    .local v1, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 113
    return-void

    #@d
    .line 117
    .end local v1    # "valueMap":Landroid/filterfw/core/KeyValueMap;
    :catch_0
    move-exception v0

    #@e
    .line 118
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-virtual {v0}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
.end method

.method public final initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .param p1, "valueMap"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    #@3
    .line 107
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V

    #@6
    .line 110
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@9
    .line 102
    return-void
.end method

.method public isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    #@2
    return v0
.end method

.method final notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 529
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 530
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/Filter;->fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V

    #@d
    .line 528
    :cond_1
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 179
    return-void
.end method

.method final openOutputs()V
    .locals 5

    #@0
    .prologue
    .line 508
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "Filter"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Opening all output ports on "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, "!"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 509
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    #@27
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "outputPort$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_2

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/filterfw/core/OutputPort;

    #@3b
    .line 510
    .local v0, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_1

    #@41
    .line 511
    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->open()V

    #@44
    goto :goto_0

    #@45
    .line 507
    .end local v0    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method

.method protected parametersUpdated(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    .local p1, "updated":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method final declared-synchronized performClose(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 481
    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 482
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v0, "Filter"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Closing "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 483
    :cond_0
    const/4 v0, 0x0

    #@24
    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    #@26
    .line 484
    const/4 v0, 0x2

    #@27
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@29
    .line 485
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->close(Landroid/filterfw/core/FilterContext;)V

    #@2c
    .line 486
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->closePorts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_1
    monitor-exit p0

    #@30
    .line 480
    return-void

    #@31
    :catchall_0
    move-exception v0

    #@32
    monitor-exit p0

    #@33
    throw v0
.end method

.method final declared-synchronized performOpen(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v1, 0x1

    #@3
    monitor-enter p0

    #@4
    .line 444
    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    #@6
    if-nez v0, :cond_5

    #@8
    .line 445
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 446
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    const-string/jumbo v0, "Filter"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Preparing "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->prepare(Landroid/filterfw/core/FilterContext;)V

    #@2d
    .line 448
    const/4 v0, 0x2

    #@2e
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@30
    .line 450
    :cond_1
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@32
    if-ne v0, v3, :cond_3

    #@34
    .line 451
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@36
    if-eqz v0, :cond_2

    #@38
    const-string/jumbo v0, "Filter"

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Opening "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 452
    :cond_2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->open(Landroid/filterfw/core/FilterContext;)V

    #@55
    .line 453
    const/4 v0, 0x3

    #@56
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@58
    .line 455
    :cond_3
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@5a
    if-eq v0, v4, :cond_4

    #@5c
    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "Filter "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    const-string/jumbo v2, " was brought into invalid state during "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 457
    const-string/jumbo v2, "opening (state: "

    #@78
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 457
    iget v2, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@7e
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    .line 457
    const-string/jumbo v2, ")!"

    #@85
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@90
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    :catchall_0
    move-exception v0

    #@92
    monitor-exit p0

    #@93
    throw v0

    #@94
    .line 459
    :cond_4
    const/4 v0, 0x1

    #@95
    :try_start_1
    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@97
    :cond_5
    monitor-exit p0

    #@98
    .line 443
    return-void
.end method

.method final declared-synchronized performProcess(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 464
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@3
    const/4 v1, 0x7

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 465
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Filter "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " is already torn down!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :catchall_0
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0

    #@2a
    .line 467
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->transferInputFrames(Landroid/filterfw/core/FilterContext;)V

    #@2d
    .line 468
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@2f
    const/4 v1, 0x3

    #@30
    if-ge v0, v1, :cond_1

    #@32
    .line 469
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performOpen(Landroid/filterfw/core/FilterContext;)V

    #@35
    .line 471
    :cond_1
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@37
    if-eqz v0, :cond_2

    #@39
    const-string/jumbo v0, "Filter"

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v2, "Processing "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 472
    :cond_2
    const-wide/16 v0, -0x1

    #@55
    iput-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    #@57
    .line 473
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->process(Landroid/filterfw/core/FilterContext;)V

    #@5a
    .line 474
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->releasePulledFrames(Landroid/filterfw/core/FilterContext;)V

    #@5d
    .line 475
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->filterMustClose()Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_3

    #@63
    .line 476
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    :cond_3
    monitor-exit p0

    #@67
    .line 463
    return-void
.end method

.method final declared-synchronized performTearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    monitor-enter p0

    #@2
    .line 491
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    #@5
    .line 492
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 493
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->tearDown(Landroid/filterfw/core/FilterContext;)V

    #@c
    .line 494
    const/4 v0, 0x7

    #@d
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 490
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 157
    return-void
.end method

.method public abstract process(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected final pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->pullFrame()Landroid/filterfw/core/Frame;

    #@7
    move-result-object v0

    #@8
    .line 258
    .local v0, "result":Landroid/filterfw/core/Frame;
    iget-wide v2, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    #@a
    const-wide/16 v4, -0x1

    #@c
    cmp-long v1, v2, v4

    #@e
    if-nez v1, :cond_0

    #@10
    .line 259
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@13
    move-result-wide v2

    #@14
    iput-wide v2, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    #@16
    .line 260
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@18
    if-eqz v1, :cond_0

    #@1a
    const-string/jumbo v1, "Filter"

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Default-setting current timestamp from input port "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " to "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    iget-wide v4, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    #@36
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 263
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    #@43
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@46
    .line 265
    return-object v0
.end method

.method final declared-synchronized pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 535
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@4
    move-result-object v0

    #@5
    .line 536
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 537
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    #@e
    .line 539
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->pushFrame(Landroid/filterfw/core/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 534
    return-void

    #@13
    .end local v0    # "port":Landroid/filterfw/core/FilterPort;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method final declared-synchronized pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 543
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 542
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method protected final pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, -0x2

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_1

    #@a
    .line 250
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const-string/jumbo v0, "Filter"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Default-setting output Frame timestamp on port "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, " to "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-wide v2, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    #@2a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 251
    :cond_0
    iget-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    #@37
    invoke-virtual {p2, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@3a
    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    #@41
    .line 248
    return-void
.end method

.method public setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@3
    move-result-object v0

    #@4
    .line 147
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 148
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    #@d
    .line 150
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    #@10
    .line 145
    return-void
.end method

.method public final setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@7
    .line 153
    return-void
.end method

.method protected setWaitsOnInputPort(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "waits"    # Z

    #@0
    .prologue
    .line 409
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setBlocking(Z)V

    #@7
    .line 408
    return-void
.end method

.method protected setWaitsOnOutputPort(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "waits"    # Z

    #@0
    .prologue
    .line 419
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setBlocking(Z)V

    #@7
    .line 418
    return-void
.end method

.method public abstract setupPorts()V
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "\' ("

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, ")"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method protected transferInputPortFrame(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    #@7
    .line 275
    return-void
.end method

.method final declared-synchronized unsetStatus(I)V
    .locals 2
    .param p1, "flag"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 440
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    #@3
    not-int v1, p1

    #@4
    and-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 439
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
