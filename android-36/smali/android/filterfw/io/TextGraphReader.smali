.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private blacklist mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private blacklist mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentFilter:Landroid/filterfw/core/Filter;

.field private blacklist mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private blacklist mFactory:Landroid/filterfw/core/FilterFactory;

.field private blacklist mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentFilter(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist applySettings()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "setting":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 455
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 456
    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 457
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_91

    .line 458
    :cond_39
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 459
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_91

    .line 460
    :cond_49
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 461
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_91

    .line 463
    :cond_59
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown autobranch setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_78
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 466
    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 467
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    .line 471
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_91
    goto/16 :goto_a

    .line 469
    .restart local v1    # "setting":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_93
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown @setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_b2
    return-void
.end method

.method private blacklist bindExternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 427
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v0    # "value":Ljava/lang/Object;
    nop

    .line 434
    return-void

    .line 430
    :cond_15
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'! You must add a reference to this external in the host program using addReference(...)!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkReferences()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "reference":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 448
    .end local v1    # "reference":Ljava/lang/String;
    goto :goto_a

    .line 444
    .restart local v1    # "reference":Ljava/lang/String;
    :cond_1f
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host program specifies reference to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', which is not declared @external in graph file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    .end local v1    # "reference":Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method private blacklist executeCommands()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    .line 486
    .local v1, "command":Landroid/filterfw/io/TextGraphReader$Command;
    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    .line 487
    .end local v1    # "command":Landroid/filterfw/io/TextGraphReader$Command;
    goto :goto_6

    .line 488
    :cond_16
    return-void
.end method

.method private blacklist expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p3, :cond_7

    .line 482
    return-void

    .line 478
    :cond_7
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parseString(Ljava/lang/String;)V
    .registers 45
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 170
    move-object/from16 v1, p0

    const-string v0, "@[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 171
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    const-string v0, "\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 172
    .local v7, "curlyClosePattern":Ljava/util/regex/Pattern;
    const-string v0, "\\{"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 173
    .local v8, "curlyOpenPattern":Ljava/util/regex/Pattern;
    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 174
    .local v9, "ignorePattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 175
    .local v10, "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z\\./:]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 176
    .local v11, "libraryNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 177
    .local v12, "portPattern":Ljava/util/regex/Pattern;
    const-string v13, "=>"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 178
    .local v14, "rightArrowPattern":Ljava/util/regex/Pattern;
    const-string v15, ";"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 179
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v2, "[a-zA-Z0-9\\-_]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 181
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    const/16 v16, 0x0

    .line 182
    .local v16, "STATE_COMMAND":I
    const/16 v17, 0x1

    .line 183
    .local v17, "STATE_IMPORT_PKG":I
    const/16 v18, 0x2

    .line 184
    .local v18, "STATE_ADD_LIBRARY":I
    const/16 v19, 0x3

    .line 185
    .local v19, "STATE_FILTER_CLASS":I
    const/16 v20, 0x4

    .line 186
    .local v20, "STATE_FILTER_NAME":I
    const/16 v21, 0x5

    .line 187
    .local v21, "STATE_CURLY_OPEN":I
    const/16 v22, 0x6

    .line 188
    .local v22, "STATE_PARAMETERS":I
    const/16 v23, 0x7

    .line 189
    .local v23, "STATE_CURLY_CLOSE":I
    const/16 v24, 0x8

    .line 190
    .local v24, "STATE_SOURCE_FILTERNAME":I
    const/16 v25, 0x9

    .line 191
    .local v25, "STATE_SOURCE_PORT":I
    const/16 v26, 0xa

    .line 192
    .local v26, "STATE_RIGHT_ARROW":I
    const/16 v27, 0xb

    .line 193
    .local v27, "STATE_TARGET_FILTERNAME":I
    const/16 v28, 0xc

    .line 194
    .local v28, "STATE_TARGET_PORT":I
    const/16 v29, 0xd

    .line 195
    .local v29, "STATE_ASSIGNMENT":I
    const/16 v30, 0xe

    .line 196
    .local v30, "STATE_EXTERNAL":I
    const/16 v31, 0xf

    .line 197
    .local v31, "STATE_SETTING":I
    const/16 v32, 0x10

    .line 199
    .local v32, "STATE_SEMICOLON":I
    const/4 v3, 0x0

    .line 200
    .local v3, "state":I
    new-instance v4, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v5, p1

    invoke-direct {v4, v5, v9}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 202
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    const/16 v33, 0x0

    .line 203
    .local v33, "curClassName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 204
    .local v34, "curSourceFilterName":Ljava/lang/String;
    const/16 v35, 0x0

    .line 205
    .local v35, "curSourcePortName":Ljava/lang/String;
    const/16 v36, 0x0

    .line 206
    .local v36, "curTargetFilterName":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v42, v33

    move-object/from16 v33, v9

    move-object/from16 v9, v42

    .line 209
    .local v9, "curClassName":Ljava/lang/String;
    .local v33, "ignorePattern":Ljava/util/regex/Pattern;
    .local v37, "curTargetPortName":Ljava/lang/String;
    :goto_78
    invoke-virtual {v4}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v38

    if-nez v38, :cond_3ce

    .line 210
    move/from16 v38, v3

    .end local v3    # "state":I
    .local v38, "state":I
    const/4 v3, 0x1

    packed-switch v38, :pswitch_data_3ee

    move-object v3, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v3

    move-object/from16 v40, v0

    move-object v3, v6

    move-object v5, v10

    move/from16 v41, v38

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v35

    .end local v0    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v35    # "curSourcePortName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v3, "commandPattern":Ljava/util/regex/Pattern;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v5, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v15, "wordPattern":Ljava/util/regex/Pattern;
    .local v36, "curSourcePortName":Ljava/lang/String;
    .local v40, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v41, "state":I
    move/from16 v10, v41

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 331
    .end local v3    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v5    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v41    # "state":I
    .restart local v0    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .restart local v35    # "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_9b
    invoke-virtual {v4, v0, v15}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    const/4 v3, 0x0

    move-object v5, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v5

    move-object/from16 v40, v0

    move-object v5, v10

    move v10, v3

    move-object v3, v6

    move-object v6, v4

    .end local v38    # "state":I
    .local v3, "state":I
    goto/16 :goto_3bc

    .line 324
    .end local v3    # "state":I
    .restart local v38    # "state":I
    :pswitch_ad
    invoke-direct {v1, v4, v0}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v3

    .line 325
    .local v3, "setting":Landroid/filterfw/core/KeyValueMap;
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v3}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 326
    const/16 v5, 0x10

    .line 327
    .end local v38    # "state":I
    .local v5, "state":I
    move-object v3, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v3

    move-object v3, v10

    move v10, v5

    move-object v5, v3

    move-object/from16 v40, v0

    move-object v3, v6

    move-object v6, v4

    goto/16 :goto_3bc

    .line 317
    .end local v3    # "setting":Landroid/filterfw/core/KeyValueMap;
    .end local v5    # "state":I
    .restart local v38    # "state":I
    :pswitch_c7
    const-string v3, "<external-identifier>"

    invoke-virtual {v4, v2, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "externalName":Ljava/lang/String;
    invoke-direct {v1, v3}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    .line 319
    const/16 v5, 0x10

    .line 320
    .end local v38    # "state":I
    .restart local v5    # "state":I
    move-object v3, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v3

    move-object v3, v10

    move v10, v5

    move-object v5, v3

    move-object/from16 v40, v0

    move-object v3, v6

    move-object v6, v4

    goto/16 :goto_3bc

    .line 310
    .end local v3    # "externalName":Ljava/lang/String;
    .end local v5    # "state":I
    .restart local v38    # "state":I
    :pswitch_e1
    invoke-direct {v1, v4, v0}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v3

    .line 311
    .local v3, "assignment":Landroid/filterfw/core/KeyValueMap;
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v3}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 312
    const/16 v5, 0x10

    .line 313
    .end local v38    # "state":I
    .restart local v5    # "state":I
    move-object v3, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v3

    move-object v3, v10

    move v10, v5

    move-object v5, v3

    move-object/from16 v40, v0

    move-object v3, v6

    move-object v6, v4

    goto/16 :goto_3bc

    .line 299
    .end local v3    # "assignment":Landroid/filterfw/core/KeyValueMap;
    .end local v5    # "state":I
    .restart local v38    # "state":I
    :pswitch_fb
    const-string v5, "[<target-port-name>]"

    invoke-virtual {v4, v12, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "portString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v40, v0

    .end local v0    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    add-int/lit8 v0, v39, -0x1

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 301
    .end local v37    # "curTargetPortName":Ljava/lang/String;
    .local v0, "curTargetPortName":Ljava/lang/String;
    iget-object v3, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    move-object/from16 v37, v5

    move-object v5, v0

    .end local v0    # "curTargetPortName":Ljava/lang/String;
    .local v5, "curTargetPortName":Ljava/lang/String;
    .local v37, "portString":Ljava/lang/String;
    new-instance v0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move-object/from16 v41, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v41

    move-object/from16 v41, v10

    move-object v10, v3

    move-object/from16 v3, v35

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v41

    move/from16 v41, v38

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v3, "curSourcePortName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v42, v3

    move-object v3, v0

    move-object/from16 v0, v42

    .end local v3    # "curSourcePortName":Ljava/lang/String;
    .local v0, "curSourcePortName":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/16 v3, 0x10

    .line 306
    .end local v41    # "state":I
    .local v3, "state":I
    move v10, v3

    move-object/from16 v37, v5

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 294
    .end local v3    # "state":I
    .end local v5    # "curTargetPortName":Ljava/lang/String;
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .local v37, "curTargetPortName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_143
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v3, "<target-filter-name>"

    invoke-virtual {v6, v15, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .end local v4    # "curTargetFilterName":Ljava/lang/String;
    .local v3, "curTargetFilterName":Ljava/lang/String;
    const/16 v4, 0xc

    .line 296
    .end local v41    # "state":I
    .local v4, "state":I
    move v10, v4

    move-object/from16 v5, v36

    move-object/from16 v36, v3

    move-object/from16 v3, v35

    move-object/from16 v35, v0

    goto/16 :goto_3bc

    .line 289
    .end local v3    # "curTargetFilterName":Ljava/lang/String;
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_16a
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    invoke-virtual {v6, v14, v13}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    const/16 v3, 0xb

    .line 291
    .end local v41    # "state":I
    .local v3, "state":I
    move v10, v3

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 282
    .end local v3    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_18e
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v5, "[<source-port-name>]"

    invoke-virtual {v6, v12, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "portString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    const/16 v3, 0xa

    .line 285
    .end local v41    # "state":I
    .restart local v3    # "state":I
    move v10, v3

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 277
    .end local v3    # "state":I
    .end local v5    # "portString":Ljava/lang/String;
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_1be
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v3, "<source-filter-name>"

    invoke-virtual {v6, v15, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    const/16 v3, 0x9

    .line 279
    .end local v41    # "state":I
    .restart local v3    # "state":I
    move v10, v3

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 272
    .end local v3    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_1e5
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string/jumbo v3, "}"

    invoke-virtual {v6, v7, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const/4 v3, 0x0

    .line 274
    .end local v41    # "state":I
    .restart local v3    # "state":I
    move v10, v3

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 265
    .end local v3    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_20b
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    invoke-direct {v1, v6, v7}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v3

    .line 266
    .local v3, "params":Landroid/filterfw/core/KeyValueMap;
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v10, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    invoke-direct {v10, v1, v3}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v5, 0x7

    .line 268
    .end local v41    # "state":I
    .local v5, "state":I
    move v10, v5

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 260
    .end local v3    # "params":Landroid/filterfw/core/KeyValueMap;
    .end local v5    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_239
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string/jumbo v3, "{"

    invoke-virtual {v6, v8, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const/4 v3, 0x6

    .line 262
    .end local v41    # "state":I
    .local v3, "state":I
    move v10, v3

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 253
    .end local v3    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_25f
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v3, "<filter-name>"

    invoke-virtual {v6, v15, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "curFilterName":Ljava/lang/String;
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v10, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    invoke-direct {v10, v1, v9, v3}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v5, 0x5

    .line 256
    .end local v41    # "state":I
    .restart local v5    # "state":I
    move v10, v5

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 248
    .end local v3    # "curFilterName":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_28f
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v3, "<class-name>"

    invoke-virtual {v6, v15, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .end local v9    # "curClassName":Ljava/lang/String;
    .local v3, "curClassName":Ljava/lang/String;
    const/4 v5, 0x4

    .line 250
    .end local v41    # "state":I
    .restart local v5    # "state":I
    move-object v9, v3

    move v10, v5

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 241
    .end local v3    # "curClassName":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v9    # "curClassName":Ljava/lang/String;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_2b6
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v3, "<library-name>"

    invoke-virtual {v6, v11, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "libraryName":Ljava/lang/String;
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v10, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    invoke-direct {v10, v1, v3}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/16 v5, 0x10

    .line 244
    .end local v41    # "state":I
    .restart local v5    # "state":I
    move v10, v5

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 234
    .end local v3    # "libraryName":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_2e7
    move-object/from16 v40, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    move/from16 v41, v38

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v10

    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v0, "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v3, "<package-name>"

    move-object/from16 v5, v36

    .end local v36    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v5, "packageNamePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "packageName":Ljava/lang/String;
    iget-object v10, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    .end local v0    # "curSourcePortName":Ljava/lang/String;
    .local v36, "curSourcePortName":Ljava/lang/String;
    new-instance v0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    invoke-direct {v0, v1, v3}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v0, 0x10

    .line 237
    .end local v41    # "state":I
    .local v0, "state":I
    move v10, v0

    move-object/from16 v3, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    goto/16 :goto_3bc

    .line 212
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    .restart local v38    # "state":I
    :pswitch_31a
    move-object v5, v15

    move-object v15, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v5

    move-object v5, v6

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v35

    move-object/from16 v35, v5

    move-object/from16 v40, v0

    move-object v5, v10

    move/from16 v41, v38

    .end local v0    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v38    # "state":I
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .restart local v5    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v35, "commandPattern":Ljava/util/regex/Pattern;
    .local v36, "curSourcePortName":Ljava/lang/String;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const-string v0, "<command>"

    move-object/from16 v3, v35

    .end local v35    # "commandPattern":Ljava/util/regex/Pattern;
    .local v3, "commandPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v3, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "curCommand":Ljava/lang/String;
    const-string v10, "@import"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_344

    .line 214
    const/4 v10, 0x1

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .local v10, "state":I
    goto/16 :goto_3bc

    .line 215
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_344
    const-string v10, "@library"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_353

    .line 216
    const/4 v10, 0x2

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .restart local v10    # "state":I
    goto/16 :goto_3bc

    .line 217
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_353
    const-string v10, "@filter"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_361

    .line 218
    const/4 v10, 0x3

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .restart local v10    # "state":I
    goto :goto_3bc

    .line 219
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_361
    const-string v10, "@connect"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_370

    .line 220
    const/16 v10, 0x8

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .restart local v10    # "state":I
    goto :goto_3bc

    .line 221
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_370
    const-string v10, "@set"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37f

    .line 222
    const/16 v10, 0xd

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .restart local v10    # "state":I
    goto :goto_3bc

    .line 223
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_37f
    const-string v10, "@external"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_38e

    .line 224
    const/16 v10, 0xe

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .restart local v10    # "state":I
    goto :goto_3bc

    .line 225
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_38e
    const-string v10, "@setting"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39d

    .line 226
    const/16 v10, 0xf

    move-object/from16 v35, v36

    move-object/from16 v36, v4

    .end local v41    # "state":I
    .restart local v10    # "state":I
    goto :goto_3bc

    .line 228
    .end local v10    # "state":I
    .restart local v41    # "state":I
    :cond_39d
    new-instance v10, Landroid/filterfw/io/GraphIOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command \'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "\'!"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 333
    .end local v0    # "curCommand":Ljava/lang/String;
    .end local v4    # "curTargetFilterName":Ljava/lang/String;
    .end local v41    # "state":I
    .restart local v10    # "state":I
    .local v35, "curSourcePortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    :goto_3bc
    move-object/from16 v0, v34

    move-object/from16 v34, v2

    move-object v2, v15

    move-object v15, v0

    move-object/from16 v1, p0

    move-object v4, v6

    move-object/from16 v0, v40

    move-object v6, v3

    move v3, v10

    move-object v10, v5

    move-object/from16 v5, p1

    goto/16 :goto_78

    .line 338
    .end local v5    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v2, "wordPattern":Ljava/util/regex/Pattern;
    .local v3, "state":I
    .local v4, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v6, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    :cond_3ce
    move-object/from16 v40, v0

    move-object v15, v2

    move/from16 v41, v3

    move-object v3, v6

    move-object v5, v10

    move-object/from16 v2, v34

    move-object v6, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v35

    .end local v0    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v10    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .end local v35    # "curSourcePortName":Ljava/lang/String;
    .local v2, "curSourceFilterName":Ljava/lang/String;
    .local v3, "commandPattern":Ljava/util/regex/Pattern;
    .local v4, "curTargetFilterName":Ljava/lang/String;
    .restart local v5    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v6, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v15    # "wordPattern":Ljava/util/regex/Pattern;
    .local v36, "curSourcePortName":Ljava/lang/String;
    .restart local v40    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    const/16 v0, 0x10

    move/from16 v10, v41

    .end local v41    # "state":I
    .local v10, "state":I
    if-eq v10, v0, :cond_3ed

    if-nez v10, :cond_3e5

    goto :goto_3ed

    .line 339
    :cond_3e5
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v1, "Unexpected end of input!"

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_3ed
    :goto_3ed
    return-void

    :pswitch_data_3ee
    .packed-switch 0x0
        :pswitch_31a
        :pswitch_2e7
        :pswitch_2b6
        :pswitch_28f
        :pswitch_25f
        :pswitch_239
        :pswitch_20b
        :pswitch_1e5
        :pswitch_1be
        :pswitch_18e
        :pswitch_16a
        :pswitch_143
        :pswitch_fb
        :pswitch_e1
        :pswitch_c7
        :pswitch_ad
        :pswitch_9b
    .end packed-switch
.end method

.method private blacklist readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .registers 26
    .param p1, "scanner"    # Landroid/filterfw/io/PatternScanner;
    .param p2, "endPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 354
    .local v2, "STATE_IDENTIFIER":I
    const/4 v3, 0x1

    .line 355
    .local v3, "STATE_EQUALS":I
    const/4 v4, 0x2

    .line 356
    .local v4, "STATE_VALUE":I
    const/4 v5, 0x3

    .line 358
    .local v5, "STATE_POST_VALUE":I
    const-string v6, "="

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 359
    .local v7, "equalsPattern":Ljava/util/regex/Pattern;
    const-string v8, ";"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 360
    .local v9, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v10, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 361
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    const-string v11, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 362
    .local v11, "stringPattern":Ljava/util/regex/Pattern;
    const-string v12, "[0-9]+"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 363
    .local v12, "intPattern":Ljava/util/regex/Pattern;
    const-string v13, "[0-9]*\\.[0-9]+f?"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 364
    .local v13, "floatPattern":Ljava/util/regex/Pattern;
    const-string v14, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 365
    .local v14, "referencePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v15, "true|false"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 367
    .local v15, "booleanPattern":Ljava/util/regex/Pattern;
    const/16 v16, 0x0

    .line 368
    .local v16, "state":I
    new-instance v17, Landroid/filterfw/core/KeyValueMap;

    invoke-direct/range {v17 .. v17}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    move-object/from16 v18, v17

    .line 369
    .local v18, "newVals":Landroid/filterfw/core/KeyValueMap;
    const/16 v17, 0x0

    .line 370
    .local v17, "curKey":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v20, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v3, v17

    .line 372
    .end local v17    # "curKey":Ljava/lang/String;
    .local v2, "state":I
    .local v3, "curKey":Ljava/lang/String;
    .local v16, "STATE_EQUALS":I
    .local v19, "curValue":Ljava/lang/String;
    .local v20, "STATE_IDENTIFIER":I
    :goto_4e
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v17

    if-nez v17, :cond_178

    if-eqz p2, :cond_67

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v17

    if-nez v17, :cond_5d

    goto :goto_67

    :cond_5d
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    goto/16 :goto_180

    .line 373
    :cond_67
    :goto_67
    packed-switch v2, :pswitch_data_1aa

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    .end local v4    # "STATE_VALUE":I
    .end local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v5, "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v18, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v21, "STATE_VALUE":I
    .local v22, "STATE_POST_VALUE":I
    goto/16 :goto_16a

    .line 410
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .restart local v4    # "STATE_VALUE":I
    .local v5, "STATE_POST_VALUE":I
    .restart local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v18, "newVals":Landroid/filterfw/core/KeyValueMap;
    :pswitch_76
    invoke-virtual {v1, v9, v8}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    const/4 v2, 0x0

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    goto/16 :goto_16a

    .line 385
    :pswitch_86
    invoke-virtual {v1, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v17

    move/from16 v21, v4

    .end local v4    # "STATE_VALUE":I
    .restart local v21    # "STATE_VALUE":I
    const/4 v4, 0x1

    if-eqz v17, :cond_aa

    .line 386
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v22, v5

    .end local v5    # "STATE_POST_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    add-int/lit8 v5, v17, -0x1

    move-object/from16 v17, v8

    move-object/from16 v8, v19

    .end local v19    # "curValue":Ljava/lang/String;
    .local v8, "curValue":Ljava/lang/String;
    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    .end local v18    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v5, "newVals":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v5, v3, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v9

    goto/16 :goto_139

    .line 387
    .end local v8    # "curValue":Ljava/lang/String;
    .end local v22    # "STATE_POST_VALUE":I
    .local v5, "STATE_POST_VALUE":I
    .restart local v18    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .restart local v19    # "curValue":Ljava/lang/String;
    :cond_aa
    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    .end local v18    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .end local v19    # "curValue":Ljava/lang/String;
    .local v5, "newVals":Landroid/filterfw/core/KeyValueMap;
    .restart local v8    # "curValue":Ljava/lang/String;
    .restart local v22    # "STATE_POST_VALUE":I
    invoke-virtual {v1, v14}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    if-eqz v18, :cond_fa

    .line 388
    move-object/from16 v18, v9

    .end local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v18, "semicolonPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "refName":Ljava/lang/String;
    iget-object v9, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v9, :cond_cf

    .line 390
    iget-object v9, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v9, v4}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_d0

    .line 391
    :cond_cf
    const/4 v9, 0x0

    :goto_d0
    nop

    .line 392
    .local v9, "referencedObject":Ljava/lang/Object;
    if-eqz v9, :cond_d9

    .line 396
    invoke-virtual {v5, v3, v9}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v4    # "refName":Ljava/lang/String;
    .end local v9    # "referencedObject":Ljava/lang/Object;
    move-object/from16 v19, v8

    goto :goto_139

    .line 393
    .restart local v4    # "refName":Ljava/lang/String;
    .restart local v9    # "referencedObject":Ljava/lang/Object;
    :cond_d9
    new-instance v6, Landroid/filterfw/io/GraphIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    .end local v8    # "curValue":Ljava/lang/String;
    .restart local v19    # "curValue":Ljava/lang/String;
    const-string v8, "Unknown object reference to \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\'!"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 397
    .end local v4    # "refName":Ljava/lang/String;
    .end local v18    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v19    # "curValue":Ljava/lang/String;
    .restart local v8    # "curValue":Ljava/lang/String;
    .local v9, "semicolonPattern":Ljava/util/regex/Pattern;
    :cond_fa
    move-object/from16 v19, v8

    move-object/from16 v18, v9

    .end local v8    # "curValue":Ljava/lang/String;
    .end local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v18    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v19    # "curValue":Ljava/lang/String;
    invoke-virtual {v1, v15}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_112

    .line 398
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_139

    .line 399
    :cond_112
    invoke-virtual {v1, v13}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_126

    .line 400
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_139

    .line 401
    :cond_126
    invoke-virtual {v1, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_13c

    .line 402
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_139
    const/4 v0, 0x3

    .line 407
    .end local v2    # "state":I
    .local v0, "state":I
    move v2, v0

    goto :goto_16a

    .line 404
    .end local v0    # "state":I
    .restart local v2    # "state":I
    :cond_13c
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v4, "<value>"

    invoke-virtual {v1, v4}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .local v4, "STATE_VALUE":I
    .local v5, "STATE_POST_VALUE":I
    .restart local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v18, "newVals":Landroid/filterfw/core/KeyValueMap;
    :pswitch_148
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    .end local v4    # "STATE_VALUE":I
    .end local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v5, "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v18, "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "STATE_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    invoke-virtual {v1, v7, v6}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    const/4 v0, 0x2

    .line 382
    .end local v2    # "state":I
    .restart local v0    # "state":I
    move v2, v0

    goto :goto_16a

    .line 375
    .end local v0    # "state":I
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .restart local v2    # "state":I
    .restart local v4    # "STATE_VALUE":I
    .local v5, "STATE_POST_VALUE":I
    .restart local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v18, "newVals":Landroid/filterfw/core/KeyValueMap;
    :pswitch_158
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v17, v8

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    .end local v4    # "STATE_VALUE":I
    .end local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v5, "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v18, "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "STATE_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    const-string v0, "<identifier>"

    invoke-virtual {v1, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .end local v3    # "curKey":Ljava/lang/String;
    .local v0, "curKey":Ljava/lang/String;
    const/4 v2, 0x1

    .line 377
    move-object v3, v0

    .line 412
    .end local v0    # "curKey":Ljava/lang/String;
    .restart local v3    # "curKey":Ljava/lang/String;
    :goto_16a
    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v4, v21

    move-object/from16 v18, v5

    move/from16 v5, v22

    goto/16 :goto_4e

    .line 372
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .restart local v4    # "STATE_VALUE":I
    .local v5, "STATE_POST_VALUE":I
    .restart local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v18, "newVals":Landroid/filterfw/core/KeyValueMap;
    :cond_178
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    .line 417
    .end local v4    # "STATE_VALUE":I
    .end local v9    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v5, "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v18, "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "STATE_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    :goto_180
    if-eqz v2, :cond_1a9

    const/4 v0, 0x3

    if-ne v2, v0, :cond_186

    goto :goto_1a9

    .line 418
    :cond_186
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of assignments on line "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1a9
    :goto_1a9
    return-object v5

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_158
        :pswitch_148
        :pswitch_86
        :pswitch_76
    .end packed-switch
.end method

.method private blacklist reset()V
    .registers 2

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 162
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    .line 163
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 165
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 166
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    .line 167
    return-void
.end method


# virtual methods
.method public blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .registers 3
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    .line 150
    .local v0, "result":Landroid/filterfw/core/FilterGraph;
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 151
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    .line 154
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    .line 155
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 157
    return-object v0
.end method

.method public blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .registers 5
    .param p1, "assignments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 345
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 346
    .local v0, "ignorePattern":Ljava/util/regex/Pattern;
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 347
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method
