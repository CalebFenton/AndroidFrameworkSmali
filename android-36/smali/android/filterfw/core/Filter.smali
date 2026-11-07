.class public abstract Landroid/filterfw/core/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field static final greylist-max-o STATUS_ERROR:I = 0x6

.field static final greylist-max-o STATUS_FINISHED:I = 0x5

.field static final greylist-max-o STATUS_PREINIT:I = 0x0

.field static final greylist-max-o STATUS_PREPARED:I = 0x2

.field static final greylist-max-o STATUS_PROCESSING:I = 0x3

.field static final greylist-max-o STATUS_RELEASED:I = 0x7

.field static final greylist-max-o STATUS_SLEEPING:I = 0x4

.field static final greylist-max-o STATUS_UNPREPARED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Filter"


# instance fields
.field private greylist-max-o mCurrentTimestamp:J

.field private greylist-max-o mFramesToRelease:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFramesToSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInputCount:I

.field private greylist-max-o mInputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsOpen:Z

.field private greylist-max-o mLogVerbose:Z

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mOutputCount:I

.field private greylist-max-o mOutputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSleepDelay:I

.field private greylist-max-o mStatus:I


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/Filter;->mInputCount:I

    .line 52
    iput v0, p0, Landroid/filterfw/core/Filter;->mOutputCount:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 61
    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    .line 71
    iput-object p1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/filterfw/core/Filter;->mFramesToSet:Ljava/util/HashMap;

    .line 74
    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 76
    const-string v0, "Filter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    .line 77
    return-void
.end method

.method private final greylist-max-o addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .registers 12
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 560
    .local v0, "filterClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_79

    aget-object v4, v1, v3

    .line 561
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v5, Landroid/filterfw/core/GenerateFinalPort;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    move-object v6, v5

    .local v6, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v5, :cond_76

    .line 562
    move-object v5, v6

    check-cast v5, Landroid/filterfw/core/GenerateFinalPort;

    .line 563
    .local v5, "generator":Landroid/filterfw/core/GenerateFinalPort;
    invoke-interface {v5}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2d

    :cond_29
    invoke-interface {v5}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "name":Ljava/lang/String;
    :goto_2d
    invoke-interface {v5}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    move-result v8

    .line 565
    .local v8, "hasDefault":Z
    const/4 v9, 0x1

    invoke-virtual {p0, v7, v4, v8, v9}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    .line 566
    invoke-virtual {p1, v7}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 567
    invoke-virtual {p1, v7}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Landroid/filterfw/core/Filter;->setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    invoke-virtual {p1, v7}, Landroid/filterfw/core/KeyValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 569
    :cond_46
    invoke-interface {v5}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    move-result v9

    if-eqz v9, :cond_4d

    goto :goto_76

    .line 570
    :cond_4d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value specified for final input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "hasDefault":Z
    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 575
    .end local v6    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_79
    return-void
.end method

.method private final greylist-max-o addAnnotatedPorts()V
    .registers 13

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 580
    .local v0, "filterClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_4e

    aget-object v5, v1, v4

    .line 581
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Landroid/filterfw/core/GenerateFieldPort;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v7, v6

    .local v7, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v6, :cond_1f

    .line 582
    move-object v6, v7

    check-cast v6, Landroid/filterfw/core/GenerateFieldPort;

    .line 583
    .local v6, "generator":Landroid/filterfw/core/GenerateFieldPort;
    invoke-direct {p0, v6, v5}, Landroid/filterfw/core/Filter;->addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V

    .line 584
    .end local v6    # "generator":Landroid/filterfw/core/GenerateFieldPort;
    goto :goto_4b

    :cond_1f
    const-class v6, Landroid/filterfw/core/GenerateProgramPort;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_2f

    .line 585
    move-object v6, v7

    check-cast v6, Landroid/filterfw/core/GenerateProgramPort;

    .line 586
    .local v6, "generator":Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v6, v5}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    .line 587
    .end local v6    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    :cond_2e
    goto :goto_4b

    :cond_2f
    const-class v6, Landroid/filterfw/core/GenerateProgramPorts;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_2e

    .line 588
    move-object v6, v7

    check-cast v6, Landroid/filterfw/core/GenerateProgramPorts;

    .line 589
    .local v6, "generators":Landroid/filterfw/core/GenerateProgramPorts;
    invoke-interface {v6}, Landroid/filterfw/core/GenerateProgramPorts;->value()[Landroid/filterfw/core/GenerateProgramPort;

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_41
    if-ge v10, v9, :cond_4b

    aget-object v11, v8, v10

    .line 590
    .local v11, "generator":Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v11, v5}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    .line 589
    .end local v11    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 580
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "generators":Landroid/filterfw/core/GenerateProgramPorts;
    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 594
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4e
    return-void
.end method

.method private final greylist-max-o addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V
    .registers 6
    .param p1, "generator"    # Landroid/filterfw/core/GenerateFieldPort;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 597
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "name":Ljava/lang/String;
    :goto_13
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->hasDefault()Z

    move-result v1

    .line 599
    .local v1, "hasDefault":Z
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    .line 600
    return-void
.end method

.method private final greylist-max-o addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V
    .registers 9
    .param p1, "generator"    # Landroid/filterfw/core/GenerateProgramPort;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 603
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->name()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v2, v1

    goto :goto_15

    .line 605
    :cond_10
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_15
    nop

    .line 606
    .local v2, "varName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->type()Ljava/lang/Class;

    move-result-object v4

    .line 607
    .local v4, "varType":Ljava/lang/Class;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->hasDefault()Z

    move-result v5

    .line 608
    .local v5, "hasDefault":Z
    move-object v0, p0

    move-object v3, p2

    .end local p2    # "field":Ljava/lang/reflect/Field;
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {v0 .. v5}, Landroid/filterfw/core/Filter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V

    .line 609
    return-void
.end method

.method private final greylist-max-o closePorts()V
    .registers 3

    .line 682
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing all ports on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_22
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 684
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->close()V

    .line 685
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    goto :goto_2c

    .line 686
    :cond_3c
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 687
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->close()V

    .line 688
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    goto :goto_46

    .line 689
    :cond_56
    return-void
.end method

.method private final greylist-max-o filterMustClose()Z
    .registers 8

    .line 692
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " must close due to port "

    const-string v3, "Filter "

    const-string v4, "Filter"

    const/4 v5, 0x1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 693
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->filterMustClose()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 694
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_43
    return v5

    .line 697
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_44
    goto :goto_a

    .line 698
    :cond_45
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 699
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->filterMustClose()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 700
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_81
    return v5

    .line 703
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_82
    goto :goto_4f

    .line 704
    :cond_83
    const/4 v0, 0x0

    return v0
.end method

.method private final greylist-max-o initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .registers 3
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    .line 548
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 549
    return-void
.end method

.method private final greylist-max-o initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V
    .registers 2
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .line 552
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->addAnnotatedPorts()V

    .line 553
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->setupPorts()V

    .line 554
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V

    .line 555
    return-void
.end method

.method private final greylist-max-o inputConditionsMet()Z
    .registers 4

    .line 662
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/FilterPort;

    .line 663
    .local v1, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->isReady()Z

    move-result v2

    if-nez v2, :cond_40

    .line 664
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input condition not met: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Filter"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_3e
    const/4 v0, 0x0

    return v0

    .line 667
    .end local v1    # "port":Landroid/filterfw/core/FilterPort;
    :cond_40
    goto :goto_a

    .line 668
    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method public static final greylist isAvailable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "filterName"    # Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 88
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_d} :catch_19

    .line 91
    .local v2, "filterClass":Ljava/lang/Class;
    nop

    .line 93
    const-class v3, Landroid/filterfw/core/Filter;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 94
    return v1

    .line 96
    :cond_17
    const/4 v1, 0x1

    return v1

    .line 89
    .end local v2    # "filterClass":Ljava/lang/Class;
    :catch_19
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method private final greylist-max-o outputConditionsMet()Z
    .registers 4

    .line 672
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/FilterPort;

    .line 673
    .local v1, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->isReady()Z

    move-result v2

    if-nez v2, :cond_40

    .line 674
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output condition not met: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Filter"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_3e
    const/4 v0, 0x0

    return v0

    .line 677
    .end local v1    # "port":Landroid/filterfw/core/FilterPort;
    :cond_40
    goto :goto_a

    .line 678
    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method private final greylist-max-o releasePulledFrames(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 655
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Frame;

    .line 656
    .local v1, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 657
    .end local v1    # "frame":Landroid/filterfw/core/Frame;
    goto :goto_6

    .line 658
    :cond_1a
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 659
    return-void
.end method

.method private final greylist-max-o setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 618
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting immediate value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 620
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 621
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/filterfw/core/SimpleFrame;->wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 622
    return-void
.end method

.method private final greylist-max-o setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V
    .registers 6
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .line 612
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 613
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_8

    .line 615
    :cond_22
    return-void
.end method

.method private final greylist-max-o transferInputFrames(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 625
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 626
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    .line 627
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    goto :goto_a

    .line 628
    :cond_1a
    return-void
.end method

.method private final greylist-max-o wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .registers 8
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 631
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 632
    .local v1, "inputFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v2, 0x0

    if-nez p2, :cond_1b

    .line 635
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 636
    .local v3, "portFormat":Landroid/filterfw/core/FrameFormat;
    if-nez v3, :cond_14

    move-object v4, v2

    goto :goto_18

    :cond_14
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    .line 637
    .local v4, "portClass":Ljava/lang/Class;
    :goto_18
    invoke-virtual {v1, v4}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 641
    .end local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "portClass":Ljava/lang/Class;
    :cond_1b
    instance-of v3, p2, Ljava/lang/Number;

    if-nez v3, :cond_2c

    instance-of v3, p2, Ljava/lang/Boolean;

    if-nez v3, :cond_2c

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_2c

    instance-of v3, p2, Ljava/io/Serializable;

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 647
    .local v0, "shouldSerialize":Z
    :goto_2d
    if-eqz v0, :cond_35

    .line 648
    new-instance v3, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v3, v1, v2}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    goto :goto_3a

    .line 649
    :cond_35
    new-instance v3, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v3, v1, v2}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    :goto_3a
    nop

    .line 650
    .local v3, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v3, p2}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 651
    return-object v3
.end method


# virtual methods
.method protected greylist-max-o addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "hasDefault"    # Z
    .param p4, "isFinal"    # Z

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 360
    if-eqz p4, :cond_c

    .line 361
    new-instance v1, Landroid/filterfw/core/FinalPort;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/filterfw/core/FinalPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    goto :goto_11

    .line 362
    :cond_c
    new-instance v1, Landroid/filterfw/core/FieldPort;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    :goto_11
    nop

    .line 365
    .local v1, "fieldPort":Landroid/filterfw/core/InputPort;
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Filter"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_38
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 368
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v1, v0}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 371
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method protected greylist-max-o addInputPort(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 301
    return-void
.end method

.method protected greylist-max-o addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formatMask"    # Landroid/filterfw/core/FrameFormat;

    .line 312
    new-instance v0, Landroid/filterfw/core/StreamPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 313
    .local v0, "port":Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Filter"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2b
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 316
    return-void
.end method

.method protected greylist-max-o addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "outputName"    # Ljava/lang/String;
    .param p2, "inputName"    # Ljava/lang/String;

    .line 346
    new-instance v0, Landroid/filterfw/core/OutputPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 347
    .local v0, "port":Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Filter"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2b
    invoke-virtual {p0, p2}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/OutputPort;->setBasePort(Landroid/filterfw/core/InputPort;)V

    .line 349
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method

.method protected greylist-max-o addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 328
    new-instance v0, Landroid/filterfw/core/OutputPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 329
    .local v0, "port":Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Filter"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 331
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-void
.end method

.method protected greylist-max-o addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "varType"    # Ljava/lang/Class;
    .param p5, "hasDefault"    # Z

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 383
    new-instance v1, Landroid/filterfw/core/ProgramPort;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "varName":Ljava/lang/String;
    .end local p3    # "field":Ljava/lang/reflect/Field;
    .end local p5    # "hasDefault":Z
    .local v3, "name":Ljava/lang/String;
    .local v4, "varName":Ljava/lang/String;
    .local v5, "field":Ljava/lang/reflect/Field;
    .local v6, "hasDefault":Z
    invoke-direct/range {v1 .. v6}, Landroid/filterfw/core/ProgramPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 386
    .local v1, "programPort":Landroid/filterfw/core/InputPort;
    iget-boolean p1, v2, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz p1, :cond_34

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Filter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " adding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Filter"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_34
    invoke-static {p4, v0}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    .line 389
    .local p1, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 392
    iget-object p2, v2, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method final declared-synchronized greylist-max-o canProcess()Z
    .registers 4

    monitor-enter p0

    .line 497
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2f

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking if can process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/Filter;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :cond_2f
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-gt v0, v1, :cond_44

    .line 499
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->inputConditionsMet()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-direct {p0}, Landroid/filterfw/core/Filter;->outputConditionsMet()Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_46

    if-eqz v0, :cond_42

    const/4 v2, 0x1

    :cond_42
    monitor-exit p0

    return v2

    .line 501
    :cond_44
    monitor-exit p0

    return v2

    .line 496
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method final greylist-max-o clearInputs()V
    .registers 3

    .line 515
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 516
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->clear()V

    .line 517
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    goto :goto_a

    .line 518
    :cond_1a
    return-void
.end method

.method final greylist-max-o clearOutputs()V
    .registers 3

    .line 521
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 522
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->clear()V

    .line 523
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    goto :goto_a

    .line 524
    :cond_1a
    return-void
.end method

.method public greylist-max-o close(Landroid/filterfw/core/FilterContext;)V
    .registers 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 187
    return-void
.end method

.method protected greylist-max-o closeOutputPort(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 396
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    .line 397
    return-void
.end method

.method protected greylist-max-o delayNextProcess(I)V
    .registers 3
    .param p1, "millisecs"    # I

    .line 162
    iput p1, p0, Landroid/filterfw/core/Filter;->mSleepDelay:I

    .line 163
    const/4 v0, 0x4

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 164
    return-void
.end method

.method public greylist-max-o fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 267
    return-void
.end method

.method public greylist-max-o getFilterClassName()Ljava/lang/String;
    .registers 2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 174
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    return-object v1
.end method

.method public final greylist-max-o getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-eqz v0, :cond_38

    .line 225
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/InputPort;

    .line 226
    .local v0, "result":Landroid/filterfw/core/InputPort;
    if-eqz v0, :cond_f

    .line 230
    return-object v0

    .line 227
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    .end local v0    # "result":Landroid/filterfw/core/InputPort;
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to access input port \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before Filter has been initialized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getInputPorts()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-o getNumberOfConnectedInputs()I
    .registers 5

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "c":I
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/InputPort;

    .line 195
    .local v2, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 198
    .end local v2    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1f
    goto :goto_b

    .line 199
    :cond_20
    return v0
.end method

.method public final greylist-max-o getNumberOfConnectedOutputs()I
    .registers 5

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "c":I
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 205
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 208
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_1f
    goto :goto_b

    .line 209
    :cond_20
    return v0
.end method

.method public final greylist-max-o getNumberOfInputs()I
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public final greylist-max-o getNumberOfOutputs()I
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist-max-o getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public final greylist-max-o getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-eqz v0, :cond_38

    .line 238
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/OutputPort;

    .line 239
    .local v0, "result":Landroid/filterfw/core/OutputPort;
    if-eqz v0, :cond_f

    .line 243
    return-object v0

    .line 240
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown output port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    .end local v0    # "result":Landroid/filterfw/core/OutputPort;
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to access output port \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before Filter has been initialized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getOutputPorts()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getSleepDelay()I
    .registers 2

    .line 183
    const/16 v0, 0xfa

    return v0
.end method

.method final declared-synchronized greylist-max-o getStatus()I
    .registers 2

    monitor-enter p0

    .line 434
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 434
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final greylist-max-o init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/core/ProtocolException;
        }
    .end annotation

    .line 126
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 127
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    .line 128
    return-void
.end method

.method protected greylist-max-o initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "program"    # Landroid/filterfw/core/Program;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 282
    if-eqz p1, :cond_22

    .line 283
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 284
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 285
    invoke-virtual {v1, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    .line 287
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_21
    goto :goto_c

    .line 289
    :cond_22
    return-void
.end method

.method public final varargs blacklist initWithAssignmentList([Ljava/lang/Object;)V
    .registers 3
    .param p1, "keyValues"    # [Ljava/lang/Object;

    .line 120
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 121
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    .line 123
    return-void
.end method

.method public final greylist-max-o initWithAssignmentString(Ljava/lang/String;)V
    .registers 5
    .param p1, "assignments"    # Ljava/lang/String;

    .line 112
    :try_start_0
    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    invoke-virtual {v0, p1}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 113
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_c
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_c} :catch_e

    .line 116
    .end local v0    # "valueMap":Landroid/filterfw/core/KeyValueMap;
    nop

    .line 117
    return-void

    .line 114
    :catch_e
    move-exception v0

    .line 115
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final greylist-max-o initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    .registers 3
    .param p1, "valueMap"    # Landroid/filterfw/core/KeyValueMap;

    .line 101
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 104
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 108
    return-void
.end method

.method public greylist-max-o isOpen()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    return v0
.end method

.method final greylist-max-o notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 527
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 528
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/Filter;->fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V

    .line 530
    :cond_d
    return-void
.end method

.method public greylist-max-o open(Landroid/filterfw/core/FilterContext;)V
    .registers 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 178
    return-void
.end method

.method final greylist-max-o openOutputs()V
    .registers 4

    .line 506
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening all output ports on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_22
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 508
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v2

    if-nez v2, :cond_41

    .line 509
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->open()V

    .line 511
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_41
    goto :goto_2c

    .line 512
    :cond_42
    return-void
.end method

.method protected greylist-max-o parametersUpdated(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "updated":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method final declared-synchronized greylist-max-o performClose(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 479
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    if-eqz v0, :cond_2d

    .line 480
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_21

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    .line 482
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 483
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->close(Landroid/filterfw/core/FilterContext;)V

    .line 484
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->closePorts()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 486
    :cond_2d
    monitor-exit p0

    return-void

    .line 478
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method final declared-synchronized greylist-max-o performOpen(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 442
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    if-nez v0, :cond_84

    .line 443
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    .line 444
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_27

    const-string v0, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :cond_27
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->prepare(Landroid/filterfw/core/FilterContext;)V

    .line 446
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 448
    :cond_2c
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v3, 0x3

    if-ne v0, v1, :cond_52

    .line 449
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_4d

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4d
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->open(Landroid/filterfw/core/FilterContext;)V

    .line 451
    iput v3, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 453
    :cond_52
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-ne v0, v3, :cond_59

    .line 457
    iput-boolean v2, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    goto :goto_84

    .line 454
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was brought into invalid state during opening (state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/Filter;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_86

    .line 459
    :cond_84
    :goto_84
    monitor-exit p0

    return-void

    .line 441
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_86
    move-exception p1

    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p1
.end method

.method final declared-synchronized greylist-max-o performProcess(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 462
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_42

    .line 465
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->transferInputFrames(Landroid/filterfw/core/FilterContext;)V

    .line 466
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    .line 467
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performOpen(Landroid/filterfw/core/FilterContext;)V

    .line 469
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :cond_11
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2d

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2d
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    .line 471
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->process(Landroid/filterfw/core/FilterContext;)V

    .line 472
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->releasePulledFrames(Landroid/filterfw/core/FilterContext;)V

    .line 473
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->filterMustClose()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 474
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_61

    .line 476
    :cond_40
    monitor-exit p0

    return-void

    .line 463
    :cond_42
    :try_start_42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already torn down!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_61
    move-exception p1

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_61

    throw p1
.end method

.method final declared-synchronized greylist-max-o performTearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    monitor-enter p0

    .line 489
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    .line 490
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_e

    .line 491
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 492
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 494
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :cond_e
    monitor-exit p0

    return-void

    .line 488
    .end local p1    # "context":Landroid/filterfw/core/FilterContext;
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method protected greylist-max-o prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 156
    return-void
.end method

.method public abstract greylist-max-o process(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected final greylist-max-o pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 255
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->pullFrame()Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 256
    .local v0, "result":Landroid/filterfw/core/Frame;
    iget-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3e

    .line 257
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    .line 258
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default-setting current timestamp from input port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Filter"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3e
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0
.end method

.method final declared-synchronized greylist-max-o pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    monitor-enter p0

    .line 533
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 534
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v1

    if-nez v1, :cond_e

    .line 535
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 537
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    :cond_e
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->pushFrame(Landroid/filterfw/core/Frame;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 538
    monitor-exit p0

    return-void

    .line 532
    .end local v0    # "port":Landroid/filterfw/core/FilterPort;
    .end local p1    # "inputName":Ljava/lang/String;
    .end local p2    # "frame":Landroid/filterfw/core/Frame;
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method final declared-synchronized greylist-max-o pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 541
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 542
    monitor-exit p0

    return-void

    .line 540
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    .end local p1    # "inputName":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method protected final greylist-max-o pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .line 247
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    .line 248
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default-setting output Frame timestamp on port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_32
    iget-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {p2, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 251
    :cond_37
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    .line 252
    return-void
.end method

.method public greylist-max-o setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .line 143
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 144
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    .line 145
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 147
    :cond_d
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 148
    return-void
.end method

.method public final greylist setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 153
    return-void
.end method

.method protected greylist-max-o setWaitsOnInputPort(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "waits"    # Z

    .line 407
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setBlocking(Z)V

    .line 408
    return-void
.end method

.method protected greylist-max-o setWaitsOnOutputPort(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "waits"    # Z

    .line 417
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setBlocking(Z)V

    .line 418
    return-void
.end method

.method public abstract greylist-max-o setupPorts()V
.end method

.method public greylist-max-o tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 190
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o transferInputPortFrame(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 274
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    .line 275
    return-void
.end method

.method final declared-synchronized greylist-max-o unsetStatus(I)V
    .registers 4
    .param p1, "flag"    # I

    monitor-enter p0

    .line 438
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 439
    monitor-exit p0

    return-void

    .line 437
    .end local p0    # "this":Landroid/filterfw/core/Filter;
    .end local p1    # "flag":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method
