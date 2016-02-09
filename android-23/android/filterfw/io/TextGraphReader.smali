.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$Command;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;
    }
.end annotation


# instance fields
.field private mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilter:Landroid/filterfw/core/Filter;

.field private mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private mFactory:Landroid/filterfw/core/FilterFactory;

.field private mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static synthetic -get0(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@a
    .line 39
    return-void
.end method

.method private applySettings()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    #@2
    invoke-virtual {v3}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "setting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_5

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 453
    .local v0, "setting":Ljava/lang/String;
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    #@18
    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 454
    .local v2, "value":Ljava/lang/Object;
    const-string/jumbo v3, "autoBranch"

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_3

    #@25
    .line 455
    const-class v3, Ljava/lang/String;

    #@27
    invoke-direct {p0, v0, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    #@2a
    .line 456
    const-string/jumbo v3, "synced"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 457
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@35
    const/4 v4, 0x1

    #@36
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    #@39
    goto :goto_0

    #@3a
    .line 458
    :cond_0
    const-string/jumbo v3, "unsynced"

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    .line 459
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@45
    const/4 v4, 0x2

    #@46
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    #@49
    goto :goto_0

    #@4a
    .line 460
    :cond_1
    const-string/jumbo v3, "off"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 461
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@55
    const/4 v4, 0x0

    #@56
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    #@59
    goto :goto_0

    #@5a
    .line 463
    :cond_2
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    #@5c
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v5, "Unknown autobranch setting: "

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    const-string/jumbo v5, "!"

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v3

    #@7b
    .line 465
    :cond_3
    const-string/jumbo v3, "discardUnconnectedOutputs"

    #@7e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_4

    #@84
    .line 466
    const-class v3, Ljava/lang/Boolean;

    #@86
    invoke-direct {p0, v0, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    #@89
    .line 467
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@8b
    check-cast v2, Ljava/lang/Boolean;

    #@8d
    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@90
    move-result v4

    #@91
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    #@94
    goto/16 :goto_0

    #@96
    .line 469
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    #@98
    new-instance v4, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v5, "Unknown @setting \'"

    #@a0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    const-string/jumbo v5, "\'!"

    #@ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v4

    #@b3
    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v3

    #@b7
    .line 451
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private bindExternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 427
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    #@a
    invoke-virtual {v1, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 428
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    #@10
    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 425
    return-void

    #@14
    .line 430
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Unknown external variable \'"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "\'! "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 431
    const-string/jumbo v3, "You must add a reference to this external in the host program using "

    #@30
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 432
    const-string/jumbo v3, "addReference(...)!"

    #@37
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v1, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1
.end method

.method private checkReferences()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    #@2
    invoke-virtual {v2}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "reference$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 443
    .local v0, "reference":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    #@18
    invoke-virtual {v2, v0}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 444
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    #@20
    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Host program specifies reference to \'"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "\', which is not "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 446
    const-string/jumbo v4, "declared @external in graph file!"

    #@3a
    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 444
    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2

    #@46
    .line 441
    .end local v0    # "reference":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private executeCommands()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "command$iterator":Ljava/util/Iterator;
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
    check-cast v0, Landroid/filterfw/io/TextGraphReader$Command;

    #@12
    .line 486
    .local v0, "command":Landroid/filterfw/io/TextGraphReader$Command;
    invoke-interface {v0, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    #@15
    goto :goto_0

    #@16
    .line 484
    .end local v0    # "command":Landroid/filterfw/io/TextGraphReader$Command;
    :cond_0
    return-void
.end method

.method private expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p3, :cond_0

    #@6
    .line 478
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Setting \'"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "\' must have a value of type "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 479
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 479
    const-string/jumbo v2, ", but found a value of type "

    #@2a
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 480
    const-string/jumbo v2, "!"

    #@3d
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 476
    :cond_0
    return-void
.end method

.method private parseString(Ljava/lang/String;)V
    .locals 49
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    const-string/jumbo v3, "@[a-zA-Z]+"

    #@3
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v27

    #@7
    .line 171
    .local v27, "commandPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "\\}"

    #@a
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v31

    #@e
    .line 172
    .local v31, "curlyClosePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "\\{"

    #@11
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@14
    move-result-object v32

    #@15
    .line 173
    .local v32, "curlyOpenPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "(\\s+|//[^\\n]*\\n)+"

    #@18
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1b
    move-result-object v34

    #@1c
    .line 174
    .local v34, "ignorePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "[a-zA-Z\\.]+"

    #@1f
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@22
    move-result-object v38

    #@23
    .line 175
    .local v38, "packageNamePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "[a-zA-Z\\./:]+"

    #@26
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@29
    move-result-object v36

    #@2a
    .line 176
    .local v36, "libraryNamePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "\\[[a-zA-Z0-9\\-_]+\\]"

    #@2d
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@30
    move-result-object v40

    #@31
    .line 177
    .local v40, "portPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "=>"

    #@34
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@37
    move-result-object v42

    #@38
    .line 178
    .local v42, "rightArrowPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, ";"

    #@3b
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3e
    move-result-object v44

    #@3f
    .line 179
    .local v44, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "[a-zA-Z0-9\\-_]+"

    #@42
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@45
    move-result-object v47

    #@46
    .line 181
    .local v47, "wordPattern":Ljava/util/regex/Pattern;
    const/4 v11, 0x0

    #@47
    .line 182
    .local v11, "STATE_COMMAND":I
    const/16 v17, 0x1

    #@49
    .line 183
    .local v17, "STATE_IMPORT_PKG":I
    const/4 v9, 0x2

    #@4a
    .line 184
    .local v9, "STATE_ADD_LIBRARY":I
    const/4 v15, 0x3

    #@4b
    .line 185
    .local v15, "STATE_FILTER_CLASS":I
    const/16 v16, 0x4

    #@4d
    .line 186
    .local v16, "STATE_FILTER_NAME":I
    const/4 v13, 0x5

    #@4e
    .line 187
    .local v13, "STATE_CURLY_OPEN":I
    const/16 v18, 0x6

    #@50
    .line 188
    .local v18, "STATE_PARAMETERS":I
    const/4 v12, 0x7

    #@51
    .line 189
    .local v12, "STATE_CURLY_CLOSE":I
    const/16 v22, 0x8

    #@53
    .line 190
    .local v22, "STATE_SOURCE_FILTERNAME":I
    const/16 v23, 0x9

    #@55
    .line 191
    .local v23, "STATE_SOURCE_PORT":I
    const/16 v19, 0xa

    #@57
    .line 192
    .local v19, "STATE_RIGHT_ARROW":I
    const/16 v24, 0xb

    #@59
    .line 193
    .local v24, "STATE_TARGET_FILTERNAME":I
    const/16 v25, 0xc

    #@5b
    .line 194
    .local v25, "STATE_TARGET_PORT":I
    const/16 v10, 0xd

    #@5d
    .line 195
    .local v10, "STATE_ASSIGNMENT":I
    const/16 v14, 0xe

    #@5f
    .line 196
    .local v14, "STATE_EXTERNAL":I
    const/16 v21, 0xf

    #@61
    .line 197
    .local v21, "STATE_SETTING":I
    const/16 v20, 0x10

    #@63
    .line 199
    .local v20, "STATE_SEMICOLON":I
    const/16 v46, 0x0

    #@65
    .line 200
    .local v46, "state":I
    new-instance v43, Landroid/filterfw/io/PatternScanner;

    #@67
    move-object/from16 v0, v43

    #@69
    move-object/from16 v1, p1

    #@6b
    move-object/from16 v2, v34

    #@6d
    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    #@70
    .line 202
    .local v43, "scanner":Landroid/filterfw/io/PatternScanner;
    const/16 v28, 0x0

    #@72
    .line 203
    .local v28, "curClassName":Ljava/lang/String;
    const/4 v5, 0x0

    #@73
    .line 204
    .local v5, "curSourceFilterName":Ljava/lang/String;
    const/4 v6, 0x0

    #@74
    .line 205
    .local v6, "curSourcePortName":Ljava/lang/String;
    const/4 v7, 0x0

    #@75
    .line 206
    .local v7, "curTargetFilterName":Ljava/lang/String;
    const/4 v8, 0x0

    #@76
    .line 209
    .end local v5    # "curSourceFilterName":Ljava/lang/String;
    .end local v6    # "curSourcePortName":Ljava/lang/String;
    .end local v7    # "curTargetFilterName":Ljava/lang/String;
    .end local v28    # "curClassName":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v43 .. v43}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    #@79
    move-result v3

    #@7a
    if-nez v3, :cond_7

    #@7c
    .line 210
    packed-switch v46, :pswitch_data_0

    #@7f
    goto :goto_0

    #@80
    .line 212
    :pswitch_0
    const-string/jumbo v3, "<command>"

    #@83
    move-object/from16 v0, v43

    #@85
    move-object/from16 v1, v27

    #@87
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v29

    #@8b
    .line 213
    .local v29, "curCommand":Ljava/lang/String;
    const-string/jumbo v3, "@import"

    #@8e
    move-object/from16 v0, v29

    #@90
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v3

    #@94
    if-eqz v3, :cond_0

    #@96
    .line 214
    const/16 v46, 0x1

    #@98
    goto :goto_0

    #@99
    .line 215
    :cond_0
    const-string/jumbo v3, "@library"

    #@9c
    move-object/from16 v0, v29

    #@9e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v3

    #@a2
    if-eqz v3, :cond_1

    #@a4
    .line 216
    const/16 v46, 0x2

    #@a6
    goto :goto_0

    #@a7
    .line 217
    :cond_1
    const-string/jumbo v3, "@filter"

    #@aa
    move-object/from16 v0, v29

    #@ac
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v3

    #@b0
    if-eqz v3, :cond_2

    #@b2
    .line 218
    const/16 v46, 0x3

    #@b4
    goto :goto_0

    #@b5
    .line 219
    :cond_2
    const-string/jumbo v3, "@connect"

    #@b8
    move-object/from16 v0, v29

    #@ba
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v3

    #@be
    if-eqz v3, :cond_3

    #@c0
    .line 220
    const/16 v46, 0x8

    #@c2
    goto :goto_0

    #@c3
    .line 221
    :cond_3
    const-string/jumbo v3, "@set"

    #@c6
    move-object/from16 v0, v29

    #@c8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v3

    #@cc
    if-eqz v3, :cond_4

    #@ce
    .line 222
    const/16 v46, 0xd

    #@d0
    goto :goto_0

    #@d1
    .line 223
    :cond_4
    const-string/jumbo v3, "@external"

    #@d4
    move-object/from16 v0, v29

    #@d6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v3

    #@da
    if-eqz v3, :cond_5

    #@dc
    .line 224
    const/16 v46, 0xe

    #@de
    goto :goto_0

    #@df
    .line 225
    :cond_5
    const-string/jumbo v3, "@setting"

    #@e2
    move-object/from16 v0, v29

    #@e4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e7
    move-result v3

    #@e8
    if-eqz v3, :cond_6

    #@ea
    .line 226
    const/16 v46, 0xf

    #@ec
    goto :goto_0

    #@ed
    .line 228
    :cond_6
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    #@ef
    new-instance v4, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v48, "Unknown command \'"

    #@f7
    move-object/from16 v0, v48

    #@f9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v4

    #@fd
    move-object/from16 v0, v29

    #@ff
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v4

    #@103
    const-string/jumbo v48, "\'!"

    #@106
    move-object/from16 v0, v48

    #@108
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v4

    #@10c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v4

    #@110
    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@113
    throw v3

    #@114
    .line 234
    .end local v29    # "curCommand":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "<package-name>"

    #@117
    move-object/from16 v0, v43

    #@119
    move-object/from16 v1, v38

    #@11b
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@11e
    move-result-object v37

    #@11f
    .line 235
    .local v37, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@121
    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@123
    new-instance v4, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    #@125
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v37

    #@129
    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    #@12c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12f
    .line 236
    const/16 v46, 0x10

    #@131
    .line 237
    goto/16 :goto_0

    #@133
    .line 241
    .end local v37    # "packageName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "<library-name>"

    #@136
    move-object/from16 v0, v43

    #@138
    move-object/from16 v1, v36

    #@13a
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@13d
    move-result-object v35

    #@13e
    .line 242
    .local v35, "libraryName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@140
    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@142
    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    #@144
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v35

    #@148
    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    #@14b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14e
    .line 243
    const/16 v46, 0x10

    #@150
    .line 244
    goto/16 :goto_0

    #@152
    .line 248
    .end local v35    # "libraryName":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "<class-name>"

    #@155
    move-object/from16 v0, v43

    #@157
    move-object/from16 v1, v47

    #@159
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@15c
    move-result-object v28

    #@15d
    .line 249
    .local v28, "curClassName":Ljava/lang/String;
    const/16 v46, 0x4

    #@15f
    .line 250
    goto/16 :goto_0

    #@161
    .line 253
    .end local v28    # "curClassName":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "<filter-name>"

    #@164
    move-object/from16 v0, v43

    #@166
    move-object/from16 v1, v47

    #@168
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@16b
    move-result-object v30

    #@16c
    .line 254
    .local v30, "curFilterName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@170
    new-instance v4, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    #@172
    move-object/from16 v0, p0

    #@174
    move-object/from16 v1, v28

    #@176
    move-object/from16 v2, v30

    #@178
    invoke-direct {v4, v0, v1, v2}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    #@17b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17e
    .line 255
    const/16 v46, 0x5

    #@180
    .line 256
    goto/16 :goto_0

    #@182
    .line 260
    .end local v30    # "curFilterName":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, "{"

    #@185
    move-object/from16 v0, v43

    #@187
    move-object/from16 v1, v32

    #@189
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@18c
    .line 261
    const/16 v46, 0x6

    #@18e
    .line 262
    goto/16 :goto_0

    #@190
    .line 265
    :pswitch_6
    move-object/from16 v0, p0

    #@192
    move-object/from16 v1, v43

    #@194
    move-object/from16 v2, v31

    #@196
    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    #@199
    move-result-object v39

    #@19a
    .line 266
    .local v39, "params":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v0, p0

    #@19c
    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@19e
    new-instance v4, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    move-object/from16 v1, v39

    #@1a4
    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    #@1a7
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1aa
    .line 267
    const/16 v46, 0x7

    #@1ac
    .line 268
    goto/16 :goto_0

    #@1ae
    .line 272
    .end local v39    # "params":Landroid/filterfw/core/KeyValueMap;
    :pswitch_7
    const-string/jumbo v3, "}"

    #@1b1
    move-object/from16 v0, v43

    #@1b3
    move-object/from16 v1, v31

    #@1b5
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@1b8
    .line 273
    const/16 v46, 0x0

    #@1ba
    .line 274
    goto/16 :goto_0

    #@1bc
    .line 277
    :pswitch_8
    const-string/jumbo v3, "<source-filter-name>"

    #@1bf
    move-object/from16 v0, v43

    #@1c1
    move-object/from16 v1, v47

    #@1c3
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@1c6
    move-result-object v5

    #@1c7
    .line 278
    .local v5, "curSourceFilterName":Ljava/lang/String;
    const/16 v46, 0x9

    #@1c9
    .line 279
    goto/16 :goto_0

    #@1cb
    .line 282
    .end local v5    # "curSourceFilterName":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v3, "[<source-port-name>]"

    #@1ce
    move-object/from16 v0, v43

    #@1d0
    move-object/from16 v1, v40

    #@1d2
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@1d5
    move-result-object v41

    #@1d6
    .line 283
    .local v41, "portString":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    #@1d9
    move-result v3

    #@1da
    add-int/lit8 v3, v3, -0x1

    #@1dc
    const/4 v4, 0x1

    #@1dd
    move-object/from16 v0, v41

    #@1df
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e2
    move-result-object v6

    #@1e3
    .line 284
    .local v6, "curSourcePortName":Ljava/lang/String;
    const/16 v46, 0xa

    #@1e5
    .line 285
    goto/16 :goto_0

    #@1e7
    .line 289
    .end local v6    # "curSourcePortName":Ljava/lang/String;
    .end local v41    # "portString":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v3, "=>"

    #@1ea
    move-object/from16 v0, v43

    #@1ec
    move-object/from16 v1, v42

    #@1ee
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@1f1
    .line 290
    const/16 v46, 0xb

    #@1f3
    .line 291
    goto/16 :goto_0

    #@1f5
    .line 294
    :pswitch_b
    const-string/jumbo v3, "<target-filter-name>"

    #@1f8
    move-object/from16 v0, v43

    #@1fa
    move-object/from16 v1, v47

    #@1fc
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@1ff
    move-result-object v7

    #@200
    .line 295
    .local v7, "curTargetFilterName":Ljava/lang/String;
    const/16 v46, 0xc

    #@202
    .line 296
    goto/16 :goto_0

    #@204
    .line 299
    .end local v7    # "curTargetFilterName":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v3, "[<target-port-name>]"

    #@207
    move-object/from16 v0, v43

    #@209
    move-object/from16 v1, v40

    #@20b
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@20e
    move-result-object v41

    #@20f
    .line 300
    .restart local v41    # "portString":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    #@212
    move-result v3

    #@213
    add-int/lit8 v3, v3, -0x1

    #@215
    const/4 v4, 0x1

    #@216
    move-object/from16 v0, v41

    #@218
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21b
    move-result-object v8

    #@21c
    .line 301
    .local v8, "curTargetPortName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@220
    move-object/from16 v48, v0

    #@222
    new-instance v3, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    #@224
    move-object/from16 v4, p0

    #@226
    invoke-direct/range {v3 .. v8}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@229
    move-object/from16 v0, v48

    #@22b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22e
    .line 305
    const/16 v46, 0x10

    #@230
    .line 306
    goto/16 :goto_0

    #@232
    .line 310
    .end local v8    # "curTargetPortName":Ljava/lang/String;
    .end local v41    # "portString":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    #@234
    move-object/from16 v1, v43

    #@236
    move-object/from16 v2, v44

    #@238
    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    #@23b
    move-result-object v26

    #@23c
    .line 311
    .local v26, "assignment":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v0, p0

    #@23e
    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    #@240
    move-object/from16 v0, v26

    #@242
    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    #@245
    .line 312
    const/16 v46, 0x10

    #@247
    .line 313
    goto/16 :goto_0

    #@249
    .line 317
    .end local v26    # "assignment":Landroid/filterfw/core/KeyValueMap;
    :pswitch_e
    const-string/jumbo v3, "<external-identifier>"

    #@24c
    move-object/from16 v0, v43

    #@24e
    move-object/from16 v1, v47

    #@250
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@253
    move-result-object v33

    #@254
    .line 318
    .local v33, "externalName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@256
    move-object/from16 v1, v33

    #@258
    invoke-direct {v0, v1}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    #@25b
    .line 319
    const/16 v46, 0x10

    #@25d
    .line 320
    goto/16 :goto_0

    #@25f
    .line 324
    .end local v33    # "externalName":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p0

    #@261
    move-object/from16 v1, v43

    #@263
    move-object/from16 v2, v44

    #@265
    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    #@268
    move-result-object v45

    #@269
    .line 325
    .local v45, "setting":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v0, p0

    #@26b
    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    #@26d
    move-object/from16 v0, v45

    #@26f
    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    #@272
    .line 326
    const/16 v46, 0x10

    #@274
    .line 327
    goto/16 :goto_0

    #@276
    .line 331
    .end local v45    # "setting":Landroid/filterfw/core/KeyValueMap;
    :pswitch_10
    const-string/jumbo v3, ";"

    #@279
    move-object/from16 v0, v43

    #@27b
    move-object/from16 v1, v44

    #@27d
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@280
    .line 332
    const/16 v46, 0x0

    #@282
    .line 333
    goto/16 :goto_0

    #@284
    .line 338
    :cond_7
    const/16 v3, 0x10

    #@286
    move/from16 v0, v46

    #@288
    if-eq v0, v3, :cond_8

    #@28a
    if-eqz v46, :cond_8

    #@28c
    .line 339
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    #@28e
    const-string/jumbo v4, "Unexpected end of input!"

    #@291
    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@294
    throw v3

    #@295
    .line 169
    :cond_8
    return-void

    #@296
    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .locals 24
    .param p1, "scanner"    # Landroid/filterfw/io/PatternScanner;
    .param p2, "endPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    const/4 v4, 0x0

    #@1
    .line 354
    .local v4, "STATE_IDENTIFIER":I
    const/4 v3, 0x1

    #@2
    .line 355
    .local v3, "STATE_EQUALS":I
    const/4 v6, 0x2

    #@3
    .line 356
    .local v6, "STATE_VALUE":I
    const/4 v5, 0x3

    #@4
    .line 358
    .local v5, "STATE_POST_VALUE":I
    const-string/jumbo v21, "="

    #@7
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v10

    #@b
    .line 359
    .local v10, "equalsPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, ";"

    #@e
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@11
    move-result-object v17

    #@12
    .line 360
    .local v17, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "[a-zA-Z]+[a-zA-Z0-9]*"

    #@15
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@18
    move-result-object v20

    #@19
    .line 361
    .local v20, "wordPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    #@1c
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1f
    move-result-object v19

    #@20
    .line 362
    .local v19, "stringPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "[0-9]+"

    #@23
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@26
    move-result-object v12

    #@27
    .line 363
    .local v12, "intPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "[0-9]*\\.[0-9]+f?"

    #@2a
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2d
    move-result-object v11

    #@2e
    .line 364
    .local v11, "floatPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    #@31
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@34
    move-result-object v15

    #@35
    .line 365
    .local v15, "referencePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "true|false"

    #@38
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3b
    move-result-object v7

    #@3c
    .line 367
    .local v7, "booleanPattern":Ljava/util/regex/Pattern;
    const/16 v18, 0x0

    #@3e
    .line 368
    .local v18, "state":I
    new-instance v13, Landroid/filterfw/core/KeyValueMap;

    #@40
    invoke-direct {v13}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@43
    .line 369
    .local v13, "newVals":Landroid/filterfw/core/KeyValueMap;
    const/4 v8, 0x0

    #@44
    .line 370
    .local v8, "curKey":Ljava/lang/String;
    const/4 v9, 0x0

    #@45
    .line 372
    .end local v8    # "curKey":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    #@48
    move-result v21

    #@49
    if-nez v21, :cond_0

    #@4b
    if-eqz p2, :cond_1

    #@4d
    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    #@50
    move-result v21

    #@51
    if-eqz v21, :cond_1

    #@53
    .line 417
    :cond_0
    if-eqz v18, :cond_9

    #@55
    const/16 v21, 0x3

    #@57
    move/from16 v0, v18

    #@59
    move/from16 v1, v21

    #@5b
    if-eq v0, v1, :cond_9

    #@5d
    .line 418
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    #@5f
    .line 419
    new-instance v22, Ljava/lang/StringBuilder;

    #@61
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v23, "Unexpected end of assignments on line "

    #@67
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v22

    #@6b
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    #@6e
    move-result v23

    #@6f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v22

    #@73
    const-string/jumbo v23, "!"

    #@76
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v22

    #@7a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v22

    #@7e
    .line 418
    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@81
    throw v21

    #@82
    .line 373
    :cond_1
    packed-switch v18, :pswitch_data_0

    #@85
    goto :goto_0

    #@86
    .line 375
    :pswitch_0
    const-string/jumbo v21, "<identifier>"

    #@89
    move-object/from16 v0, p1

    #@8b
    move-object/from16 v1, v20

    #@8d
    move-object/from16 v2, v21

    #@8f
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    .line 376
    .local v8, "curKey":Ljava/lang/String;
    const/16 v18, 0x1

    #@95
    .line 377
    goto :goto_0

    #@96
    .line 380
    .end local v8    # "curKey":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v21, "="

    #@99
    move-object/from16 v0, p1

    #@9b
    move-object/from16 v1, v21

    #@9d
    invoke-virtual {v0, v10, v1}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@a0
    .line 381
    const/16 v18, 0x2

    #@a2
    .line 382
    goto :goto_0

    #@a3
    .line 385
    :pswitch_2
    move-object/from16 v0, p1

    #@a5
    move-object/from16 v1, v19

    #@a7
    invoke-virtual {v0, v1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    .local v9, "curValue":Ljava/lang/String;
    if-eqz v9, :cond_2

    #@ad
    .line 386
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@b0
    move-result v21

    #@b1
    add-int/lit8 v21, v21, -0x1

    #@b3
    const/16 v22, 0x1

    #@b5
    move/from16 v0, v22

    #@b7
    move/from16 v1, v21

    #@b9
    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bc
    move-result-object v21

    #@bd
    move-object/from16 v0, v21

    #@bf
    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    .line 406
    :goto_1
    const/16 v18, 0x3

    #@c4
    .line 407
    goto :goto_0

    #@c5
    .line 387
    :cond_2
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v0, v15}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@ca
    move-result-object v9

    #@cb
    if-eqz v9, :cond_5

    #@cd
    .line 388
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@d0
    move-result v21

    #@d1
    const/16 v22, 0x1

    #@d3
    move/from16 v0, v22

    #@d5
    move/from16 v1, v21

    #@d7
    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@da
    move-result-object v14

    #@db
    .line 389
    .local v14, "refName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    #@df
    move-object/from16 v21, v0

    #@e1
    if-eqz v21, :cond_3

    #@e3
    .line 390
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    #@e7
    move-object/from16 v21, v0

    #@e9
    move-object/from16 v0, v21

    #@eb
    invoke-virtual {v0, v14}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    move-result-object v16

    #@ef
    .line 392
    :goto_2
    if-nez v16, :cond_4

    #@f1
    .line 393
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    #@f3
    .line 394
    new-instance v22, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v23, "Unknown object reference to \'"

    #@fb
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v22

    #@ff
    move-object/from16 v0, v22

    #@101
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v22

    #@105
    const-string/jumbo v23, "\'!"

    #@108
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v22

    #@10c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v22

    #@110
    .line 393
    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@113
    throw v21

    #@114
    .line 391
    :cond_3
    const/16 v16, 0x0

    #@116
    .local v16, "referencedObject":Ljava/lang/Object;
    goto :goto_2

    #@117
    .line 396
    .end local v16    # "referencedObject":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, v16

    #@119
    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    goto :goto_1

    #@11d
    .line 397
    .end local v14    # "refName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    #@11f
    invoke-virtual {v0, v7}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@122
    move-result-object v9

    #@123
    if-eqz v9, :cond_6

    #@125
    .line 398
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@128
    move-result v21

    #@129
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12c
    move-result-object v21

    #@12d
    move-object/from16 v0, v21

    #@12f
    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    goto :goto_1

    #@133
    .line 399
    :cond_6
    move-object/from16 v0, p1

    #@135
    invoke-virtual {v0, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@138
    move-result-object v9

    #@139
    if-eqz v9, :cond_7

    #@13b
    .line 400
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@13e
    move-result v21

    #@13f
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@142
    move-result-object v21

    #@143
    move-object/from16 v0, v21

    #@145
    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    goto/16 :goto_1

    #@14a
    .line 401
    :cond_7
    move-object/from16 v0, p1

    #@14c
    invoke-virtual {v0, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@14f
    move-result-object v9

    #@150
    if-eqz v9, :cond_8

    #@152
    .line 402
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@155
    move-result v21

    #@156
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@159
    move-result-object v21

    #@15a
    move-object/from16 v0, v21

    #@15c
    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    goto/16 :goto_1

    #@161
    .line 404
    :cond_8
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    #@163
    const-string/jumbo v22, "<value>"

    #@166
    move-object/from16 v0, p1

    #@168
    move-object/from16 v1, v22

    #@16a
    invoke-virtual {v0, v1}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    #@16d
    move-result-object v22

    #@16e
    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@171
    throw v21

    #@172
    .line 410
    .end local v9    # "curValue":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v21, ";"

    #@175
    move-object/from16 v0, p1

    #@177
    move-object/from16 v1, v17

    #@179
    move-object/from16 v2, v21

    #@17b
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    #@17e
    .line 411
    const/16 v18, 0x0

    #@180
    .line 412
    goto/16 :goto_0

    #@182
    .line 422
    :cond_9
    return-object v13

    #@183
    .line 373
    nop

    #@184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 161
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@3
    .line 162
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    #@5
    .line 163
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 164
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    #@c
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    #@11
    .line 165
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    #@13
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@16
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    #@18
    .line 166
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    #@1a
    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    #@1f
    .line 160
    return-void
.end method


# virtual methods
.method public readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    #@2
    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    #@5
    .line 150
    .local v0, "result":Landroid/filterfw/core/FilterGraph;
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    #@8
    .line 151
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    #@a
    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    #@d
    .line 153
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    #@10
    .line 154
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    #@13
    .line 155
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    #@16
    .line 157
    return-object v0
.end method

.method public readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .locals 3
    .param p1, "assignments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    const-string/jumbo v2, "\\s+"

    #@3
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 346
    .local v0, "ignorePattern":Ljava/util/regex/Pattern;
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    #@9
    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    #@c
    .line 347
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    const/4 v2, 0x0

    #@d
    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method
