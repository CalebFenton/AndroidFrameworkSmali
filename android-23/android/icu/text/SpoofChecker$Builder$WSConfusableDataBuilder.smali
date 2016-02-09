.class Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WSConfusableDataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static parseExp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->-assertionsDisabled:Z

    #@b
    .line 683
    const-string/jumbo v0, "(?m)^([ \\t]*(?:#.*?)?)$|^(?:\\s*([0-9A-F]{4,})(?:..([0-9A-F]{4,}))?\\s*;\\s*([A-Za-z]+)\\s*;\\s*([A-Za-z]+)\\s*;\\s*(?:(A)|(L))[ \\t]*(?:#.*?)?)$|^(.*?)$"

    #@e
    .line 682
    sput-object v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->parseExp:Ljava/lang/String;

    #@10
    .line 667
    return-void

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static buildWSConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 40
    .param p0, "confusablesWS"    # Ljava/io/Reader;
    .param p1, "dest"    # Landroid/icu/text/SpoofChecker$SpoofData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 715
    const/16 v22, 0x0

    #@2
    .line 716
    .local v22, "parseRegexp":Ljava/util/regex/Pattern;
    new-instance v16, Ljava/lang/StringBuffer;

    #@4
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 717
    .local v16, "input":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    #@9
    .line 719
    .local v17, "lineNum":I
    const/16 v29, 0x0

    #@b
    .line 720
    .local v29, "scriptSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;>;"
    const/16 v27, 0x2

    #@d
    .line 722
    .local v27, "rtScriptSetsCount":I
    new-instance v5, Landroid/icu/impl/Trie2Writable;

    #@f
    const/16 v37, 0x0

    #@11
    const/16 v38, 0x0

    #@13
    move/from16 v0, v37

    #@15
    move/from16 v1, v38

    #@17
    invoke-direct {v5, v0, v1}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    #@1a
    .line 723
    .local v5, "anyCaseTrie":Landroid/icu/impl/Trie2Writable;
    new-instance v18, Landroid/icu/impl/Trie2Writable;

    #@1c
    const/16 v37, 0x0

    #@1e
    const/16 v38, 0x0

    #@20
    move-object/from16 v0, v18

    #@22
    move/from16 v1, v37

    #@24
    move/from16 v2, v38

    #@26
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    #@29
    .line 739
    .local v18, "lowerCaseTrie":Landroid/icu/impl/Trie2Writable;
    new-instance v29, Ljava/util/ArrayList;

    #@2b
    .end local v29    # "scriptSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 740
    .local v29, "scriptSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;>;"
    const/16 v37, 0x0

    #@30
    move-object/from16 v0, v29

    #@32
    move-object/from16 v1, v37

    #@34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 741
    const/16 v37, 0x0

    #@39
    move-object/from16 v0, v29

    #@3b
    move-object/from16 v1, v37

    #@3d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    .line 743
    move-object/from16 v0, p0

    #@42
    move-object/from16 v1, v16

    #@44
    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V

    #@47
    .line 745
    sget-object v37, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->parseExp:Ljava/lang/String;

    #@49
    invoke-static/range {v37 .. v37}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@4c
    move-result-object v22

    #@4d
    .line 750
    .local v22, "parseRegexp":Ljava/util/regex/Pattern;
    const/16 v37, 0x0

    #@4f
    move-object/from16 v0, v16

    #@51
    move/from16 v1, v37

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@56
    move-result v37

    #@57
    const v38, 0xfeff

    #@5a
    move/from16 v0, v37

    #@5c
    move/from16 v1, v38

    #@5e
    if-ne v0, v1, :cond_0

    #@60
    .line 751
    const/16 v37, 0x0

    #@62
    const/16 v38, 0x20

    #@64
    move-object/from16 v0, v16

    #@66
    move/from16 v1, v37

    #@68
    move/from16 v2, v38

    #@6a
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@6d
    .line 755
    :cond_0
    move-object/from16 v0, v22

    #@6f
    move-object/from16 v1, v16

    #@71
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@74
    move-result-object v19

    #@75
    .line 756
    .local v19, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    #@78
    move-result v37

    #@79
    if-eqz v37, :cond_d

    #@7b
    .line 757
    add-int/lit8 v17, v17, 0x1

    #@7d
    .line 758
    const/16 v37, 0x1

    #@7f
    move-object/from16 v0, v19

    #@81
    move/from16 v1, v37

    #@83
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@86
    move-result v37

    #@87
    if-gez v37, :cond_1

    #@89
    .line 762
    const/16 v37, 0x8

    #@8b
    move-object/from16 v0, v19

    #@8d
    move/from16 v1, v37

    #@8f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@92
    move-result v37

    #@93
    if-ltz v37, :cond_2

    #@95
    .line 764
    new-instance v37, Ljava/text/ParseException;

    #@97
    new-instance v38, Ljava/lang/StringBuilder;

    #@99
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v39, "ConfusablesWholeScript, line "

    #@9f
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v38

    #@a3
    move-object/from16 v0, v38

    #@a5
    move/from16 v1, v17

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v38

    #@ab
    const-string/jumbo v39, ": Unrecognized input: "

    #@ae
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v38

    #@b2
    .line 765
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@b5
    move-result-object v39

    #@b6
    .line 764
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v38

    #@ba
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v38

    #@be
    .line 765
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->start()I

    #@c1
    move-result v39

    #@c2
    .line 764
    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@c5
    throw v37

    #@c6
    .line 770
    :cond_2
    const/16 v37, 0x2

    #@c8
    move-object/from16 v0, v19

    #@ca
    move/from16 v1, v37

    #@cc
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@cf
    move-result-object v37

    #@d0
    const/16 v38, 0x10

    #@d2
    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@d5
    move-result v33

    #@d6
    .line 771
    .local v33, "startCodePoint":I
    const v37, 0x10ffff

    #@d9
    move/from16 v0, v33

    #@db
    move/from16 v1, v37

    #@dd
    if-le v0, v1, :cond_3

    #@df
    .line 772
    new-instance v37, Ljava/text/ParseException;

    #@e1
    new-instance v38, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v39, "ConfusablesWholeScript, line "

    #@e9
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v38

    #@ed
    move-object/from16 v0, v38

    #@ef
    move/from16 v1, v17

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v38

    #@f5
    .line 773
    const-string/jumbo v39, ": out of range code point: "

    #@f8
    .line 772
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v38

    #@fc
    .line 773
    const/16 v39, 0x2

    #@fe
    move-object/from16 v0, v19

    #@100
    move/from16 v1, v39

    #@102
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@105
    move-result-object v39

    #@106
    .line 772
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v38

    #@10a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v38

    #@10e
    .line 773
    const/16 v39, 0x2

    #@110
    move-object/from16 v0, v19

    #@112
    move/from16 v1, v39

    #@114
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@117
    move-result v39

    #@118
    .line 772
    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@11b
    throw v37

    #@11c
    .line 775
    :cond_3
    move/from16 v10, v33

    #@11e
    .line 776
    .local v10, "endCodePoint":I
    const/16 v37, 0x3

    #@120
    move-object/from16 v0, v19

    #@122
    move/from16 v1, v37

    #@124
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@127
    move-result v37

    #@128
    if-ltz v37, :cond_4

    #@12a
    .line 777
    const/16 v37, 0x3

    #@12c
    move-object/from16 v0, v19

    #@12e
    move/from16 v1, v37

    #@130
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@133
    move-result-object v37

    #@134
    const/16 v38, 0x10

    #@136
    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@139
    move-result v10

    #@13a
    .line 779
    :cond_4
    const v37, 0x10ffff

    #@13d
    move/from16 v0, v37

    #@13f
    if-le v10, v0, :cond_5

    #@141
    .line 780
    new-instance v37, Ljava/text/ParseException;

    #@143
    new-instance v38, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v39, "ConfusablesWholeScript, line "

    #@14b
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v38

    #@14f
    move-object/from16 v0, v38

    #@151
    move/from16 v1, v17

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@156
    move-result-object v38

    #@157
    .line 781
    const-string/jumbo v39, ": out of range code point: "

    #@15a
    .line 780
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v38

    #@15e
    .line 781
    const/16 v39, 0x3

    #@160
    move-object/from16 v0, v19

    #@162
    move/from16 v1, v39

    #@164
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@167
    move-result-object v39

    #@168
    .line 780
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v38

    #@16c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v38

    #@170
    .line 781
    const/16 v39, 0x3

    #@172
    move-object/from16 v0, v19

    #@174
    move/from16 v1, v39

    #@176
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@179
    move-result v39

    #@17a
    .line 780
    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@17d
    throw v37

    #@17e
    .line 785
    :cond_5
    const/16 v37, 0x4

    #@180
    move-object/from16 v0, v19

    #@182
    move/from16 v1, v37

    #@184
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@187
    move-result-object v32

    #@188
    .line 786
    .local v32, "srcScriptName":Ljava/lang/String;
    const/16 v37, 0x5

    #@18a
    move-object/from16 v0, v19

    #@18c
    move/from16 v1, v37

    #@18e
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@191
    move-result-object v36

    #@192
    .line 787
    .local v36, "targScriptName":Ljava/lang/String;
    const/16 v37, 0x100a

    #@194
    move/from16 v0, v37

    #@196
    move-object/from16 v1, v32

    #@198
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@19b
    move-result v31

    #@19c
    .line 788
    .local v31, "srcScript":I
    const/16 v37, 0x100a

    #@19e
    move/from16 v0, v37

    #@1a0
    move-object/from16 v1, v36

    #@1a2
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@1a5
    move-result v35

    #@1a6
    .line 789
    .local v35, "targScript":I
    const/16 v37, -0x1

    #@1a8
    move/from16 v0, v31

    #@1aa
    move/from16 v1, v37

    #@1ac
    if-ne v0, v1, :cond_6

    #@1ae
    .line 790
    new-instance v37, Ljava/text/ParseException;

    #@1b0
    new-instance v38, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v39, "ConfusablesWholeScript, line "

    #@1b8
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v38

    #@1bc
    move-object/from16 v0, v38

    #@1be
    move/from16 v1, v17

    #@1c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v38

    #@1c4
    .line 791
    const-string/jumbo v39, ": Invalid script code t: "

    #@1c7
    .line 790
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v38

    #@1cb
    .line 791
    const/16 v39, 0x4

    #@1cd
    move-object/from16 v0, v19

    #@1cf
    move/from16 v1, v39

    #@1d1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1d4
    move-result-object v39

    #@1d5
    .line 790
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v38

    #@1d9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v38

    #@1dd
    .line 791
    const/16 v39, 0x4

    #@1df
    move-object/from16 v0, v19

    #@1e1
    move/from16 v1, v39

    #@1e3
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@1e6
    move-result v39

    #@1e7
    .line 790
    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1ea
    throw v37

    #@1eb
    .line 793
    :cond_6
    const/16 v37, -0x1

    #@1ed
    move/from16 v0, v35

    #@1ef
    move/from16 v1, v37

    #@1f1
    if-ne v0, v1, :cond_7

    #@1f3
    .line 794
    new-instance v37, Ljava/text/ParseException;

    #@1f5
    new-instance v38, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v39, "ConfusablesWholeScript, line "

    #@1fd
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v38

    #@201
    move-object/from16 v0, v38

    #@203
    move/from16 v1, v17

    #@205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@208
    move-result-object v38

    #@209
    .line 795
    const-string/jumbo v39, ": Invalid script code t: "

    #@20c
    .line 794
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v38

    #@210
    .line 795
    const/16 v39, 0x5

    #@212
    move-object/from16 v0, v19

    #@214
    move/from16 v1, v39

    #@216
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@219
    move-result-object v39

    #@21a
    .line 794
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v38

    #@21e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@221
    move-result-object v38

    #@222
    .line 795
    const/16 v39, 0x5

    #@224
    move-object/from16 v0, v19

    #@226
    move/from16 v1, v39

    #@228
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@22b
    move-result v39

    #@22c
    .line 794
    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@22f
    throw v37

    #@230
    .line 799
    :cond_7
    move-object/from16 v34, v5

    #@232
    .line 800
    .local v34, "table":Landroid/icu/impl/Trie2Writable;
    const/16 v37, 0x7

    #@234
    move-object/from16 v0, v19

    #@236
    move/from16 v1, v37

    #@238
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@23b
    move-result v37

    #@23c
    if-ltz v37, :cond_8

    #@23e
    .line 801
    move-object/from16 v34, v18

    #@240
    .line 814
    :cond_8
    move/from16 v8, v33

    #@242
    .local v8, "cp":I
    :goto_0
    if-gt v8, v10, :cond_1

    #@244
    .line 815
    move-object/from16 v0, v34

    #@246
    invoke-virtual {v0, v8}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@249
    move-result v30

    #@24a
    .line 816
    .local v30, "setIndex":I
    const/4 v7, 0x0

    #@24b
    .line 817
    .local v7, "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    if-lez v30, :cond_b

    #@24d
    .line 818
    sget-boolean v37, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->-assertionsDisabled:Z

    #@24f
    if-nez v37, :cond_a

    #@251
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@254
    move-result v37

    #@255
    move/from16 v0, v30

    #@257
    move/from16 v1, v37

    #@259
    if-ge v0, v1, :cond_9

    #@25b
    const/16 v37, 0x1

    #@25d
    :goto_1
    if-nez v37, :cond_a

    #@25f
    new-instance v37, Ljava/lang/AssertionError;

    #@261
    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    #@264
    throw v37

    #@265
    :cond_9
    const/16 v37, 0x0

    #@267
    goto :goto_1

    #@268
    .line 819
    :cond_a
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26b
    move-result-object v7

    #@26c
    .end local v7    # "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    check-cast v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    #@26e
    .line 831
    .local v7, "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    :goto_2
    iget-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@270
    move-object/from16 v37, v0

    #@272
    move-object/from16 v0, v37

    #@274
    move/from16 v1, v35

    #@276
    invoke-virtual {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->Union(I)V

    #@279
    .line 832
    iget-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@27b
    move-object/from16 v37, v0

    #@27d
    move-object/from16 v0, v37

    #@27f
    move/from16 v1, v31

    #@281
    invoke-virtual {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->Union(I)V

    #@284
    .line 834
    invoke-static {v8}, Landroid/icu/lang/UScript;->getScript(I)I

    #@287
    move-result v9

    #@288
    .line 835
    .local v9, "cpScript":I
    move/from16 v0, v31

    #@28a
    if-eq v9, v0, :cond_c

    #@28c
    .line 837
    new-instance v37, Ljava/text/ParseException;

    #@28e
    new-instance v38, Ljava/lang/StringBuilder;

    #@290
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@293
    const-string/jumbo v39, "ConfusablesWholeScript, line "

    #@296
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@299
    move-result-object v38

    #@29a
    move-object/from16 v0, v38

    #@29c
    move/from16 v1, v17

    #@29e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v38

    #@2a2
    .line 838
    const-string/jumbo v39, ": Mismatch between source script and code point "

    #@2a5
    .line 837
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v38

    #@2a9
    .line 838
    const/16 v39, 0x10

    #@2ab
    move/from16 v0, v39

    #@2ad
    invoke-static {v8, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@2b0
    move-result-object v39

    #@2b1
    .line 837
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v38

    #@2b5
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b8
    move-result-object v38

    #@2b9
    .line 839
    const/16 v39, 0x5

    #@2bb
    move-object/from16 v0, v19

    #@2bd
    move/from16 v1, v39

    #@2bf
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    #@2c2
    move-result v39

    #@2c3
    .line 837
    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2c6
    throw v37

    #@2c7
    .line 821
    .end local v9    # "cpScript":I
    .local v7, "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    :cond_b
    new-instance v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    #@2c9
    .end local v7    # "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    invoke-direct {v7}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;-><init>()V

    #@2cc
    .line 822
    .local v7, "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    iput v8, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->codePoint:I

    #@2ce
    .line 823
    move-object/from16 v0, v34

    #@2d0
    iput-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->trie:Landroid/icu/impl/Trie2Writable;

    #@2d2
    .line 824
    new-instance v37, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@2d4
    invoke-direct/range {v37 .. v37}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    #@2d7
    move-object/from16 v0, v37

    #@2d9
    iput-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@2db
    .line 825
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@2de
    move-result v30

    #@2df
    .line 826
    move/from16 v0, v30

    #@2e1
    iput v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    #@2e3
    .line 827
    const/16 v37, 0x0

    #@2e5
    move/from16 v0, v37

    #@2e7
    iput v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@2e9
    .line 828
    move-object/from16 v0, v29

    #@2eb
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2ee
    .line 829
    move-object/from16 v0, v34

    #@2f0
    move/from16 v1, v30

    #@2f2
    invoke-virtual {v0, v8, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@2f5
    goto/16 :goto_2

    #@2f7
    .line 814
    .restart local v9    # "cpScript":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@2f9
    goto/16 :goto_0

    #@2fb
    .line 852
    .end local v7    # "bsset":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    .end local v8    # "cp":I
    .end local v9    # "cpScript":I
    .end local v10    # "endCodePoint":I
    .end local v30    # "setIndex":I
    .end local v31    # "srcScript":I
    .end local v32    # "srcScriptName":Ljava/lang/String;
    .end local v33    # "startCodePoint":I
    .end local v34    # "table":Landroid/icu/impl/Trie2Writable;
    .end local v35    # "targScript":I
    .end local v36    # "targScriptName":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x2

    #@2fd
    .line 853
    const/16 v21, 0x2

    #@2ff
    .local v21, "outeri":I
    :goto_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@302
    move-result v37

    #@303
    move/from16 v0, v21

    #@305
    move/from16 v1, v37

    #@307
    if-ge v0, v1, :cond_10

    #@309
    .line 854
    move-object/from16 v0, v29

    #@30b
    move/from16 v1, v21

    #@30d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@310
    move-result-object v20

    #@311
    check-cast v20, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    #@313
    .line 855
    .local v20, "outerSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    move-object/from16 v0, v20

    #@315
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    #@317
    move/from16 v37, v0

    #@319
    move/from16 v0, v37

    #@31b
    move/from16 v1, v21

    #@31d
    if-eq v0, v1, :cond_e

    #@31f
    .line 853
    :goto_4
    add-int/lit8 v21, v21, 0x1

    #@321
    goto :goto_3

    #@322
    .line 861
    :cond_e
    add-int/lit8 v28, v27, 0x1

    #@324
    .end local v27    # "rtScriptSetsCount":I
    .local v28, "rtScriptSetsCount":I
    move/from16 v0, v27

    #@326
    move-object/from16 v1, v20

    #@328
    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@32a
    .line 862
    add-int/lit8 v15, v21, 0x1

    #@32c
    .local v15, "inneri":I
    :goto_5
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@32f
    move-result v37

    #@330
    move/from16 v0, v37

    #@332
    if-ge v15, v0, :cond_18

    #@334
    .line 863
    move-object/from16 v0, v29

    #@336
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@339
    move-result-object v14

    #@33a
    check-cast v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    #@33c
    .line 864
    .local v14, "innerSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    move-object/from16 v0, v20

    #@33e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@340
    move-object/from16 v37, v0

    #@342
    iget-object v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@344
    move-object/from16 v38, v0

    #@346
    invoke-virtual/range {v37 .. v38}, Landroid/icu/text/SpoofChecker$ScriptSet;->equals(Ljava/lang/Object;)Z

    #@349
    move-result v37

    #@34a
    if-eqz v37, :cond_f

    #@34c
    move-object/from16 v0, v20

    #@34e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@350
    move-object/from16 v37, v0

    #@352
    iget-object v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@354
    move-object/from16 v38, v0

    #@356
    move-object/from16 v0, v37

    #@358
    move-object/from16 v1, v38

    #@35a
    if-eq v0, v1, :cond_f

    #@35c
    .line 865
    move-object/from16 v0, v20

    #@35e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@360
    move-object/from16 v37, v0

    #@362
    move-object/from16 v0, v37

    #@364
    iput-object v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@366
    .line 866
    move/from16 v0, v21

    #@368
    iput v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    #@36a
    .line 867
    move-object/from16 v0, v20

    #@36c
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@36e
    move/from16 v37, v0

    #@370
    move/from16 v0, v37

    #@372
    iput v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@374
    .line 862
    :cond_f
    add-int/lit8 v15, v15, 0x1

    #@376
    goto :goto_5

    #@377
    .line 879
    .end local v14    # "innerSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    .end local v15    # "inneri":I
    .end local v20    # "outerSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    .end local v28    # "rtScriptSetsCount":I
    .restart local v27    # "rtScriptSetsCount":I
    :cond_10
    const/4 v11, 0x2

    #@378
    .local v11, "i":I
    :goto_6
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@37b
    move-result v37

    #@37c
    move/from16 v0, v37

    #@37e
    if-ge v11, v0, :cond_12

    #@380
    .line 880
    move-object/from16 v0, v29

    #@382
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@385
    move-result-object v6

    #@386
    check-cast v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    #@388
    .line 881
    .local v6, "bSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@38a
    move/from16 v37, v0

    #@38c
    move/from16 v0, v37

    #@38e
    if-eq v0, v11, :cond_11

    #@390
    .line 882
    iget-object v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->trie:Landroid/icu/impl/Trie2Writable;

    #@392
    move-object/from16 v37, v0

    #@394
    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->codePoint:I

    #@396
    move/from16 v38, v0

    #@398
    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@39a
    move/from16 v39, v0

    #@39c
    invoke-virtual/range {v37 .. v39}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@39f
    .line 879
    :cond_11
    add-int/lit8 v11, v11, 0x1

    #@3a1
    goto :goto_6

    #@3a2
    .line 890
    .end local v6    # "bSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    :cond_12
    new-instance v12, Landroid/icu/text/UnicodeSet;

    #@3a4
    invoke-direct {v12}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3a7
    .line 891
    .local v12, "ignoreSet":Landroid/icu/text/UnicodeSet;
    const/16 v37, 0x100a

    #@3a9
    const/16 v38, 0x0

    #@3ab
    move/from16 v0, v37

    #@3ad
    move/from16 v1, v38

    #@3af
    invoke-virtual {v12, v0, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    #@3b2
    .line 892
    new-instance v13, Landroid/icu/text/UnicodeSet;

    #@3b4
    invoke-direct {v13}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3b7
    .line 893
    .local v13, "inheritedSet":Landroid/icu/text/UnicodeSet;
    const/16 v37, 0x100a

    #@3b9
    const/16 v38, 0x1

    #@3bb
    move/from16 v0, v37

    #@3bd
    move/from16 v1, v38

    #@3bf
    invoke-virtual {v13, v0, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    #@3c2
    .line 894
    invoke-virtual {v12, v13}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3c5
    .line 895
    const/16 v26, 0x0

    #@3c7
    .local v26, "rn":I
    :goto_7
    invoke-virtual {v12}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@3ca
    move-result v37

    #@3cb
    move/from16 v0, v26

    #@3cd
    move/from16 v1, v37

    #@3cf
    if-ge v0, v1, :cond_13

    #@3d1
    .line 896
    move/from16 v0, v26

    #@3d3
    invoke-virtual {v12, v0}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@3d6
    move-result v24

    #@3d7
    .line 897
    .local v24, "rangeStart":I
    move/from16 v0, v26

    #@3d9
    invoke-virtual {v12, v0}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@3dc
    move-result v23

    #@3dd
    .line 898
    .local v23, "rangeEnd":I
    const/16 v37, 0x1

    #@3df
    const/16 v38, 0x1

    #@3e1
    move/from16 v0, v24

    #@3e3
    move/from16 v1, v23

    #@3e5
    move/from16 v2, v37

    #@3e7
    move/from16 v3, v38

    #@3e9
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@3ec
    .line 899
    const/16 v37, 0x1

    #@3ee
    const/16 v38, 0x1

    #@3f0
    move-object/from16 v0, v18

    #@3f2
    move/from16 v1, v24

    #@3f4
    move/from16 v2, v23

    #@3f6
    move/from16 v3, v37

    #@3f8
    move/from16 v4, v38

    #@3fa
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@3fd
    .line 895
    add-int/lit8 v26, v26, 0x1

    #@3ff
    goto :goto_7

    #@400
    .line 903
    .end local v23    # "rangeEnd":I
    .end local v24    # "rangeStart":I
    :cond_13
    invoke-virtual {v5}, Landroid/icu/impl/Trie2Writable;->toTrie2_16()Landroid/icu/impl/Trie2_16;

    #@403
    move-result-object v37

    #@404
    move-object/from16 v0, v37

    #@406
    move-object/from16 v1, p1

    #@408
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@40a
    .line 904
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/Trie2Writable;->toTrie2_16()Landroid/icu/impl/Trie2_16;

    #@40d
    move-result-object v37

    #@40e
    move-object/from16 v0, v37

    #@410
    move-object/from16 v1, p1

    #@412
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@414
    .line 905
    move/from16 v0, v27

    #@416
    new-array v0, v0, [Landroid/icu/text/SpoofChecker$ScriptSet;

    #@418
    move-object/from16 v37, v0

    #@41a
    move-object/from16 v0, v37

    #@41c
    move-object/from16 v1, p1

    #@41e
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@420
    .line 906
    move-object/from16 v0, p1

    #@422
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@424
    move-object/from16 v37, v0

    #@426
    new-instance v38, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@428
    invoke-direct/range {v38 .. v38}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    #@42b
    const/16 v39, 0x0

    #@42d
    aput-object v38, v37, v39

    #@42f
    .line 907
    move-object/from16 v0, p1

    #@431
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@433
    move-object/from16 v37, v0

    #@435
    new-instance v38, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@437
    invoke-direct/range {v38 .. v38}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    #@43a
    const/16 v39, 0x1

    #@43c
    aput-object v38, v37, v39

    #@43e
    .line 909
    const/16 v25, 0x2

    #@440
    .line 910
    .local v25, "rindex":I
    const/4 v11, 0x2

    #@441
    :goto_8
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@444
    move-result v37

    #@445
    move/from16 v0, v37

    #@447
    if-ge v11, v0, :cond_17

    #@449
    .line 911
    move-object/from16 v0, v29

    #@44b
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44e
    move-result-object v6

    #@44f
    check-cast v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    #@451
    .line 912
    .restart local v6    # "bSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@453
    move/from16 v37, v0

    #@455
    move/from16 v0, v37

    #@457
    move/from16 v1, v25

    #@459
    if-ge v0, v1, :cond_14

    #@45b
    .line 910
    :goto_9
    add-int/lit8 v11, v11, 0x1

    #@45d
    goto :goto_8

    #@45e
    .line 916
    :cond_14
    sget-boolean v37, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->-assertionsDisabled:Z

    #@460
    if-nez v37, :cond_16

    #@462
    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    #@464
    move/from16 v37, v0

    #@466
    move/from16 v0, v25

    #@468
    move/from16 v1, v37

    #@46a
    if-ne v0, v1, :cond_15

    #@46c
    const/16 v37, 0x1

    #@46e
    :goto_a
    if-nez v37, :cond_16

    #@470
    new-instance v37, Ljava/lang/AssertionError;

    #@472
    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    #@475
    throw v37

    #@476
    :cond_15
    const/16 v37, 0x0

    #@478
    goto :goto_a

    #@479
    .line 917
    :cond_16
    move-object/from16 v0, p1

    #@47b
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@47d
    move-object/from16 v37, v0

    #@47f
    iget-object v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    #@481
    move-object/from16 v38, v0

    #@483
    aput-object v38, v37, v25

    #@485
    .line 918
    add-int/lit8 v25, v25, 0x1

    #@487
    goto :goto_9

    #@488
    .line 714
    .end local v6    # "bSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    :cond_17
    return-void

    #@489
    .end local v11    # "i":I
    .end local v12    # "ignoreSet":Landroid/icu/text/UnicodeSet;
    .end local v13    # "inheritedSet":Landroid/icu/text/UnicodeSet;
    .end local v25    # "rindex":I
    .end local v26    # "rn":I
    .end local v27    # "rtScriptSetsCount":I
    .restart local v15    # "inneri":I
    .restart local v20    # "outerSet":Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    .restart local v28    # "rtScriptSetsCount":I
    :cond_18
    move/from16 v27, v28

    #@48b
    .end local v28    # "rtScriptSetsCount":I
    .restart local v27    # "rtScriptSetsCount":I
    goto/16 :goto_4
.end method

.method static readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 700
    new-instance v1, Ljava/io/LineNumberReader;

    #@2
    invoke-direct {v1, p0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    #@5
    .line 702
    .local v1, "lnr":Ljava/io/LineNumberReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 703
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .line 698
    return-void

    #@c
    .line 706
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 707
    const/16 v2, 0xa

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    goto :goto_0
.end method
