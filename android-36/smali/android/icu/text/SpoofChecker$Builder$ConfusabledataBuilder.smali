.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfusabledataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o fKeySet:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o fKeyVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o fLineNum:I

.field private greylist-max-o fParseHexNum:Ljava/util/regex/Pattern;

.field private greylist-max-o fParseLine:Ljava/util/regex/Pattern;

.field private greylist-max-o fStringTable:Ljava/lang/StringBuffer;

.field private greylist-max-o fTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o fValueVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 780
    const-class v0, Landroid/icu/text/SpoofChecker;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    .line 798
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    .line 801
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    .line 802
    return-void
.end method

.method public static greylist-max-o buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .registers 3
    .param p0, "confusables"    # Ljava/io/Reader;
    .param p1, "dest"    # Landroid/icu/text/SpoofChecker$SpoofData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 987
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;-><init>()V

    .line 988
    .local v0, "builder":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    .line 989
    return-void
.end method


# virtual methods
.method greylist-max-o build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .registers 20
    .param p1, "confusables"    # Ljava/io/Reader;
    .param p2, "dest"    # Landroid/icu/text/SpoofChecker$SpoofData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 808
    .local v2, "fInput":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/LineNumberReader;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 810
    .local v3, "lnr":Ljava/io/LineNumberReader;
    :goto_10
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 811
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_219

    .line 812
    nop

    .line 827
    .end local v5    # "line":Ljava/lang/String;
    const-string v5, "(?m)^[ \\t]*([0-9A-Fa-f]+)[ \\t]+;[ \\t]*([0-9A-Fa-f]+(?:[ \\t]+[0-9A-Fa-f]+)*)[ \\t]*;\\s*(?:(SL)|(SA)|(ML)|(MA))[ \\t]*(?:#.*?)?$|^([ \\t]*(?:#.*?)?)$|^(.*?)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iput-object v5, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    .line 837
    const-string v5, "\\s*([0-9A-F]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iput-object v5, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    .line 841
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const v7, 0xfeff

    if-ne v6, v7, :cond_36

    .line 842
    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 846
    :cond_36
    iget-object v6, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 847
    .local v6, "matcher":Ljava/util/regex/Matcher;
    :goto_3c
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_129

    .line 848
    iget v7, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    .line 849
    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    if-ltz v7, :cond_50

    .line 851
    goto :goto_3c

    .line 853
    :cond_50
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    const-string v10, "Confusables, line "

    if-gez v9, :cond_fe

    .line 864
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 865
    .local v7, "keyChar":I
    const-string v11, ": Bad code point: "

    const v12, 0x10ffff

    if-gt v7, v12, :cond_d5

    .line 870
    iget-object v13, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    const/4 v14, 0x2

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 872
    .local v13, "m":Ljava/util/regex/Matcher;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v15, "mapString":Ljava/lang/StringBuilder;
    :goto_7b
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_b9

    .line 874
    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 875
    .local v5, "c":I
    if-gt v5, v12, :cond_90

    .line 880
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 881
    .end local v5    # "c":I
    const/4 v5, 0x0

    goto :goto_7b

    .line 876
    .restart local v5    # "c":I
    :cond_90
    new-instance v8, Ljava/text/ParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 877
    invoke-static {v5, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 878
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 882
    .end local v5    # "c":I
    :cond_b9
    nop

    .line 887
    iget-object v5, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v5

    .line 892
    .local v5, "smapString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    iget-object v8, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v8, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 895
    .end local v5    # "smapString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .end local v7    # "keyChar":I
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v15    # "mapString":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    goto/16 :goto_3c

    .line 866
    .restart local v7    # "keyChar":I
    :cond_d5
    new-instance v5, Ljava/text/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 867
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 868
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    invoke-direct {v5, v9, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 856
    .end local v7    # "keyChar":I
    :cond_fe
    new-instance v5, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Unrecognized Line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 857
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 858
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-direct {v5, v8, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 909
    :cond_129
    iget-object v5, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v5}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->sort()V

    .line 910
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    .line 911
    iget-object v5, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v5}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->size()I

    move-result v5

    .line 913
    .local v5, "poolSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13c
    if-ge v7, v5, :cond_168

    .line 914
    iget-object v9, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v9, v7}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v9

    .line 915
    .local v9, "s":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 916
    .local v10, "strLen":I
    iget-object v11, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 917
    .local v11, "strIndex":I
    if-ne v10, v8, :cond_15c

    .line 921
    iget-object v12, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    iput v12, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    goto :goto_165

    .line 923
    :cond_15c
    iput v11, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 924
    iget-object v12, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    iget-object v13, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    .end local v9    # "s":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .end local v10    # "strLen":I
    .end local v11    # "strIndex":I
    :goto_165
    add-int/lit8 v7, v7, 0x1

    goto :goto_13c

    .line 936
    :cond_168
    iget-object v8, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1bd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 937
    .local v9, "keyCharStr":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 938
    .local v10, "keyChar":I
    iget-object v11, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    .line 939
    .local v11, "targetMapping":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    nop

    .line 943
    iget-object v12, v11, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v14, 0x100

    if-gt v12, v14, :cond_1b5

    .line 947
    iget-object v12, v11, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v10, v12}, Landroid/icu/text/SpoofChecker$ConfusableDataUtils;->codePointAndLengthToKey(II)I

    move-result v12

    .line 948
    .local v12, "key":I
    iget v14, v11, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 950
    .local v14, "value":I
    iget-object v15, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v13, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    .end local v9    # "keyCharStr":Ljava/lang/String;
    .end local v10    # "keyChar":I
    .end local v11    # "targetMapping":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .end local v12    # "key":I
    .end local v14    # "value":I
    goto :goto_16e

    .line 944
    .restart local v9    # "keyCharStr":Ljava/lang/String;
    .restart local v10    # "keyChar":I
    .restart local v11    # "targetMapping":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    :cond_1b5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v12, "Confusable prototypes cannot be longer than 256 entries."

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 959
    .end local v9    # "keyCharStr":Ljava/lang/String;
    .end local v10    # "keyChar":I
    .end local v11    # "targetMapping":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    :cond_1bd
    iget-object v8, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 960
    .local v8, "numKeys":I
    new-array v9, v8, [I

    iput-object v9, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    .line 961
    const/4 v9, 0x0

    .line 962
    .local v9, "previousCodePoint":I
    const/4 v7, 0x0

    :goto_1c9
    if-ge v7, v8, :cond_1e4

    .line 963
    iget-object v10, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 964
    .local v10, "key":I
    invoke-static {v10}, Landroid/icu/text/SpoofChecker$ConfusableDataUtils;->keyToCodePoint(I)I

    move-result v11

    .line 966
    .local v11, "codePoint":I
    nop

    .line 967
    iget-object v12, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aput v10, v12, v7

    .line 968
    move v9, v11

    .line 962
    .end local v10    # "key":I
    .end local v11    # "codePoint":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c9

    .line 972
    :cond_1e4
    iget-object v10, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 973
    .local v10, "numValues":I
    nop

    .line 974
    new-array v11, v10, [S

    iput-object v11, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 975
    const/4 v7, 0x0

    .line 976
    iget-object v11, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1f6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_210

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 977
    .local v12, "value":I
    nop

    .line 978
    iget-object v13, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i":I
    .local v14, "i":I
    int-to-short v15, v12

    aput-short v15, v13, v7

    .line 979
    .end local v12    # "value":I
    move v7, v14

    goto :goto_1f6

    .line 982
    .end local v14    # "i":I
    .restart local v7    # "i":I
    :cond_210
    iget-object v11, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    .line 983
    return-void

    .line 814
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "i":I
    .end local v8    # "numKeys":I
    .end local v9    # "previousCodePoint":I
    .end local v10    # "numValues":I
    .local v5, "line":Ljava/lang/String;
    :cond_219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 816
    .end local v5    # "line":Ljava/lang/String;
    goto/16 :goto_10
.end method
