.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$FieldContainer;,
        Ljava/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private transient maxArgumentIndex:I

.field private maxOffset:I

.field private transient strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 1215
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 1216
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "argumentNumbers"

    #@8
    const-class v3, [I

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 1217
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v2, "formats"

    #@15
    const-class v3, [Ljava/text/Format;

    #@17
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 1218
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1f
    const-string/jumbo v2, "locale"

    #@22
    const-class v3, Ljava/util/Locale;

    #@24
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 1219
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2c
    const-string/jumbo v2, "maxOffset"

    #@2f
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@31
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@34
    const/4 v2, 0x3

    #@35
    aput-object v1, v0, v2

    #@37
    .line 1220
    new-instance v1, Ljava/io/ObjectStreamField;

    #@39
    const-string/jumbo v2, "offsets"

    #@3c
    const-class v3, [I

    #@3e
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@41
    const/4 v2, 0x4

    #@42
    aput-object v1, v0, v2

    #@44
    .line 1221
    new-instance v1, Ljava/io/ObjectStreamField;

    #@46
    const-string/jumbo v2, "pattern"

    #@49
    const-class v3, Ljava/lang/String;

    #@4b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4e
    const/4 v2, 0x5

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 1215
    sput-object v0, Ljava/text/MessageFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@53
    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@7
    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 358
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@3
    .line 359
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@5
    .line 360
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@8
    .line 358
    return-void
.end method

.method private appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x27

    #@2
    .line 1202
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 1203
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@9
    .line 1204
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 1205
    .local v0, "ch":C
    const/16 v3, 0x7b

    #@f
    if-eq v0, v3, :cond_0

    #@11
    const/16 v3, 0x7d

    #@13
    if-ne v0, v3, :cond_1

    #@15
    .line 1206
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@18
    .line 1207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 1208
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1e
    .line 1203
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1210
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24
    goto :goto_1

    #@25
    .line 1201
    .end local v0    # "ch":C
    :cond_2
    return-void
.end method

.method private decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "format"    # Ljava/text/Format;

    #@0
    .prologue
    .line 1099
    const-string/jumbo v0, ",number"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6
    .line 1100
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@8
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1112
    :goto_0
    const/4 v0, 0x0

    #@13
    return-object v0

    #@14
    .line 1102
    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@16
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 1103
    const-string/jumbo v0, ",integer"

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    goto :goto_0

    #@27
    .line 1104
    :cond_1
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@29
    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 1105
    const-string/jumbo v0, ",currency"

    #@36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    goto :goto_0

    #@3a
    .line 1106
    :cond_2
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@3c
    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 1107
    const-string/jumbo v0, ",percent"

    #@49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    goto :goto_0

    #@4d
    .line 1109
    :cond_3
    const/16 v0, 0x2c

    #@4f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@52
    .line 1110
    check-cast p2, Ljava/text/DecimalFormat;

    #@54
    .end local p2    # "format":Ljava/text/Format;
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    return-object v0
.end method

.method private decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "format"    # Ljava/text/Format;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 1116
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@6
    invoke-static {v3, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1117
    const-string/jumbo v0, ",time"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 1143
    :goto_0
    const/4 v0, 0x0

    #@17
    return-object v0

    #@18
    .line 1119
    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@1a
    .line 1118
    invoke-static {v3, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 1120
    const-string/jumbo v0, ",date"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    goto :goto_0

    #@2b
    .line 1122
    :cond_1
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2d
    .line 1121
    invoke-static {v4, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 1123
    const-string/jumbo v0, ",time,short"

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    goto :goto_0

    #@3e
    .line 1125
    :cond_2
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@40
    .line 1124
    invoke-static {v4, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_3

    #@4a
    .line 1126
    const-string/jumbo v0, ",date,short"

    #@4d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    goto :goto_0

    #@51
    .line 1128
    :cond_3
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@53
    .line 1127
    invoke-static {v2, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_4

    #@5d
    .line 1129
    const-string/jumbo v0, ",time,long"

    #@60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@63
    goto :goto_0

    #@64
    .line 1131
    :cond_4
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@66
    .line 1130
    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_5

    #@70
    .line 1132
    const-string/jumbo v0, ",date,long"

    #@73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    goto :goto_0

    #@77
    .line 1134
    :cond_5
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@79
    .line 1133
    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_6

    #@83
    .line 1135
    const-string/jumbo v0, ",time,full"

    #@86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    goto :goto_0

    #@8a
    .line 1137
    :cond_6
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@8c
    .line 1136
    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {p2, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_7

    #@96
    .line 1138
    const-string/jumbo v0, ",date,full"

    #@99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9c
    goto/16 :goto_0

    #@9e
    .line 1140
    :cond_7
    const-string/jumbo v0, ",date,"

    #@a1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    .line 1141
    check-cast p2, Ljava/text/SimpleDateFormat;

    #@a6
    .end local p2    # "format":Ljava/text/Format;
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    return-object v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 724
    if-eqz p1, :cond_1

    #@2
    .line 725
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 726
    aget-object v1, p1, v0

    #@8
    if-nez v1, :cond_0

    #@a
    .line 727
    const-string/jumbo v1, "null"

    #@d
    aput-object v1, p1, v0

    #@f
    .line 725
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 731
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/text/MessageFormat;

    #@14
    invoke-direct {v1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method private formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 13
    .param p1, "objects"    # [Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "position"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .line 555
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/MessageFormat$FieldContainer;>;"
    new-instance v11, Ljava/text/FieldPosition;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v11, v1}, Ljava/text/FieldPosition;-><init>(I)V

    #@6
    .line 556
    .local v11, "passedField":Ljava/text/FieldPosition;
    const/4 v9, 0x0

    #@7
    .local v9, "i":I
    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@9
    if-gt v9, v1, :cond_6

    #@b
    .line 557
    iget-object v1, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@d
    aget-object v1, v1, v9

    #@f
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 558
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@15
    move-result v2

    #@16
    .line 560
    .local v2, "begin":I
    if-eqz p1, :cond_2

    #@18
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@1a
    aget v1, v1, v9

    #@1c
    array-length v3, p1

    #@1d
    if-ge v1, v3, :cond_2

    #@1f
    .line 561
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@21
    aget v1, v1, v9

    #@23
    aget-object v7, p1, v1

    #@25
    .line 569
    .local v7, "arg":Ljava/lang/Object;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@27
    aget-object v8, v1, v9

    #@29
    .line 570
    .local v8, "format":Ljava/text/Format;
    if-eqz v8, :cond_0

    #@2b
    if-nez v7, :cond_1

    #@2d
    .line 571
    :cond_0
    instance-of v1, v7, Ljava/lang/Number;

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 572
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    #@34
    move-result-object v8

    #@35
    .line 581
    :cond_1
    :goto_1
    instance-of v1, v8, Ljava/text/ChoiceFormat;

    #@37
    if-eqz v1, :cond_5

    #@39
    .line 582
    invoke-virtual {v8, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v12

    #@3d
    .line 588
    .local v12, "result":Ljava/lang/String;
    const-string/jumbo v1, "\'"

    #@40
    const-string/jumbo v3, "\'\'"

    #@43
    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@46
    move-result-object v12

    #@47
    .line 589
    new-instance v10, Ljava/text/MessageFormat;

    #@49
    invoke-direct {v10, v12}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@4c
    .line 590
    .local v10, "mf":Ljava/text/MessageFormat;
    iget-object v1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@4e
    invoke-virtual {v10, v1}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    #@51
    .line 591
    invoke-virtual {v10, p1, p2, v11}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@54
    .line 592
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@57
    move-result v3

    #@58
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@5a
    aget v4, v1, v9

    #@5c
    move-object v1, p0

    #@5d
    move-object/from16 v5, p3

    #@5f
    move-object/from16 v6, p4

    #@61
    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    #@64
    .line 593
    move-object/from16 v0, p4

    #@66
    invoke-direct {p0, v8, v7, v2, v0}, Ljava/text/MessageFormat;->handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V

    #@69
    .line 556
    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "format":Ljava/text/Format;
    .end local v10    # "mf":Ljava/text/MessageFormat;
    .end local v12    # "result":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 563
    :cond_2
    const/16 v1, 0x7b

    #@6e
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@71
    .line 564
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@73
    aget v1, v1, v9

    #@75
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@78
    .line 565
    const/16 v1, 0x7d

    #@7a
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7d
    .line 566
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@80
    move-result v3

    #@81
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@83
    aget v4, v1, v9

    #@85
    move-object v1, p0

    #@86
    move-object/from16 v5, p3

    #@88
    move-object/from16 v6, p4

    #@8a
    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    #@8d
    goto :goto_2

    #@8e
    .line 573
    .restart local v7    # "arg":Ljava/lang/Object;
    .restart local v8    # "format":Ljava/text/Format;
    :cond_3
    instance-of v1, v7, Ljava/util/Date;

    #@90
    if-eqz v1, :cond_4

    #@92
    .line 574
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    #@95
    move-result-object v8

    #@96
    goto :goto_1

    #@97
    .line 576
    :cond_4
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@9a
    .line 577
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@9d
    move-result v3

    #@9e
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@a0
    aget v4, v1, v9

    #@a2
    move-object v1, p0

    #@a3
    move-object/from16 v5, p3

    #@a5
    move-object/from16 v6, p4

    #@a7
    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    #@aa
    goto :goto_2

    #@ab
    .line 595
    :cond_5
    invoke-virtual {v8, v7, p2, v11}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@ae
    .line 596
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@b1
    move-result v3

    #@b2
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@b4
    aget v4, v1, v9

    #@b6
    move-object v1, p0

    #@b7
    move-object/from16 v5, p3

    #@b9
    move-object/from16 v6, p4

    #@bb
    invoke-direct/range {v1 .. v6}, Ljava/text/MessageFormat;->handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V

    #@be
    .line 597
    move-object/from16 v0, p4

    #@c0
    invoke-direct {p0, v8, v7, v2, v0}, Ljava/text/MessageFormat;->handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V

    #@c3
    goto :goto_2

    #@c4
    .line 600
    .end local v2    # "begin":I
    .end local v7    # "arg":Ljava/lang/Object;
    .end local v8    # "format":Ljava/text/Format;
    :cond_6
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@c6
    add-int/lit8 v1, v1, 0x1

    #@c8
    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@ca
    array-length v3, v3

    #@cb
    if-ge v1, v3, :cond_7

    #@cd
    .line 601
    iget-object v1, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@cf
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@d1
    add-int/lit8 v3, v3, 0x1

    #@d3
    aget-object v1, v1, v3

    #@d5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d8
    .line 603
    :cond_7
    return-object p2
.end method

.method private handleArgumentField(IIILjava/text/FieldPosition;Ljava/util/List;)V
    .locals 3
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "argIndex"    # I
    .param p4, "position"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 614
    .local p5, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/MessageFormat$FieldContainer;>;"
    if-eqz p5, :cond_1

    #@2
    .line 615
    new-instance v0, Ljava/text/MessageFormat$FieldContainer;

    #@4
    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, p1, p2, v1, v2}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@d
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 613
    :cond_0
    :goto_0
    return-void

    #@11
    .line 617
    :cond_1
    if-eqz p4, :cond_0

    #@13
    .line 618
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@16
    move-result-object v0

    #@17
    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    .line 619
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 620
    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@24
    .line 621
    invoke-virtual {p4, p2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@27
    goto :goto_0
.end method

.method private handleFormat(Ljava/text/Format;Ljava/lang/Object;ILjava/util/List;)V
    .locals 9
    .param p1, "format"    # Ljava/text/Format;
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "begin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/Format;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/text/MessageFormat$FieldContainer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 658
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/MessageFormat$FieldContainer;>;"
    if-nez p4, :cond_0

    #@2
    .line 659
    return-void

    #@3
    .line 661
    :cond_0
    invoke-virtual {p1, p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@6
    move-result-object v3

    #@7
    .line 662
    .local v3, "iterator":Ljava/text/AttributedCharacterIterator;
    :goto_0
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@a
    move-result v6

    #@b
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@e
    move-result v7

    #@f
    if-eq v6, v7, :cond_2

    #@11
    .line 663
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    #@14
    move-result v4

    #@15
    .line 664
    .local v4, "start":I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    #@18
    move-result v1

    #@19
    .line 665
    .local v1, "end":I
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    #@1c
    move-result-object v6

    #@1d
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .line 666
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 668
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@31
    .line 669
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v3, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    .line 670
    .local v5, "value":Ljava/lang/Object;
    new-instance v6, Ljava/text/MessageFormat$FieldContainer;

    #@37
    add-int v7, p3, v4

    #@39
    add-int v8, p3, v1

    #@3b
    invoke-direct {v6, v7, v8, v0, v5}, Ljava/text/MessageFormat$FieldContainer;-><init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@3e
    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_1

    #@42
    .line 672
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {v3, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@45
    goto :goto_0

    #@46
    .line 657
    .end local v1    # "end":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "start":I
    :cond_2
    return-void
.end method

.method private match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I
    .locals 11
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;
    .param p3, "last"    # Z
    .param p4, "tokens"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 935
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v8

    #@6
    .local v8, "length":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@9
    move-result v2

    #@a
    .local v2, "offset":I
    const/4 v9, -0x1

    #@b
    .line 936
    .local v9, "token":I
    :goto_0
    if-ge v2, v8, :cond_0

    #@d
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 937
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 939
    :cond_0
    array-length v7, p4

    #@1b
    .local v7, "i":I
    :cond_1
    add-int/lit8 v7, v7, -0x1

    #@1d
    if-ltz v7, :cond_2

    #@1f
    .line 940
    aget-object v3, p4, v7

    #@21
    aget-object v0, p4, v7

    #@23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@26
    move-result v5

    #@27
    const/4 v1, 0x1

    #@28
    move-object v0, p1

    #@29
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 942
    move v9, v7

    #@30
    .line 946
    :cond_2
    if-ne v9, v10, :cond_3

    #@32
    .line 947
    return v10

    #@33
    .line 949
    :cond_3
    aget-object v0, p4, v9

    #@35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@38
    move-result v0

    #@39
    add-int/2addr v2, v0

    #@3a
    .line 950
    :goto_1
    if-ge v2, v8, :cond_4

    #@3c
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v0

    #@40
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4

    #@46
    .line 951
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_1

    #@49
    .line 954
    :cond_4
    if-ge v2, v8, :cond_6

    #@4b
    .line 955
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v6

    #@4f
    .local v6, "ch":C
    const/16 v0, 0x7d

    #@51
    if-eq v6, v0, :cond_5

    #@53
    if-nez p3, :cond_6

    #@55
    const/16 v0, 0x2c

    #@57
    if-ne v6, v0, :cond_6

    #@59
    .line 956
    :cond_5
    add-int/lit8 v0, v2, 0x1

    #@5b
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5e
    .line 957
    return v9

    #@5f
    .line 959
    .end local v6    # "ch":C
    :cond_6
    return v10
.end method

.method private parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;
    .locals 13
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 963
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .local v4, "length":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@7
    move-result v6

    #@8
    .line 965
    .local v6, "offset":I
    if-ge v6, v4, :cond_0

    #@a
    add-int/lit8 v7, v6, 0x1

    #@c
    .end local v6    # "offset":I
    .local v7, "offset":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    .local v1, "ch":C
    const/16 v9, 0x7d

    #@12
    if-eq v1, v9, :cond_1

    #@14
    const/16 v9, 0x2c

    #@16
    if-eq v1, v9, :cond_1

    #@18
    move v6, v7

    #@19
    .line 966
    .end local v1    # "ch":C
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v10, "Missing element format"

    #@1e
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v9

    #@22
    .line 968
    .end local v6    # "offset":I
    .restart local v1    # "ch":C
    .restart local v7    # "offset":I
    :cond_1
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@25
    .line 969
    const/16 v9, 0x7d

    #@27
    if-ne v1, v9, :cond_2

    #@29
    .line 970
    const/4 v9, 0x0

    #@2a
    return-object v9

    #@2b
    .line 973
    :cond_2
    const/4 v9, 0x4

    #@2c
    new-array v9, v9, [Ljava/lang/String;

    #@2e
    const-string/jumbo v10, "time"

    #@31
    const/4 v11, 0x0

    #@32
    aput-object v10, v9, v11

    #@34
    const-string/jumbo v10, "date"

    #@37
    const/4 v11, 0x1

    #@38
    aput-object v10, v9, v11

    #@3a
    const-string/jumbo v10, "number"

    #@3d
    const/4 v11, 0x2

    #@3e
    aput-object v10, v9, v11

    #@40
    const-string/jumbo v10, "choice"

    #@43
    const/4 v11, 0x3

    #@44
    aput-object v10, v9, v11

    #@46
    .line 972
    const/4 v10, 0x0

    #@47
    invoke-direct {p0, p1, p2, v10, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    #@4a
    move-result v8

    #@4b
    .line 974
    .local v8, "type":I
    const/4 v9, -0x1

    #@4c
    if-ne v8, v9, :cond_3

    #@4e
    .line 975
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@50
    const-string/jumbo v10, "Unknown element format"

    #@53
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v9

    #@57
    .line 977
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5c
    .line 978
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@5f
    move-result v9

    #@60
    add-int/lit8 v9, v9, -0x1

    #@62
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    #@65
    move-result v1

    #@66
    .line 979
    packed-switch v8, :pswitch_data_0

    #@69
    .line 1031
    const/16 v9, 0x7d

    #@6b
    const/16 v10, 0x7b

    #@6d
    :try_start_0
    invoke-static {p1, p2, v0, v9, v10}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 1035
    :goto_0
    new-instance v9, Ljava/text/ChoiceFormat;

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    invoke-direct {v9, v10}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    #@79
    return-object v9

    #@7a
    .line 982
    :pswitch_0
    const/16 v9, 0x7d

    #@7c
    if-ne v1, v9, :cond_5

    #@7e
    .line 983
    const/4 v9, 0x1

    #@7f
    if-ne v8, v9, :cond_4

    #@81
    .line 984
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@83
    const/4 v10, 0x2

    #@84
    .line 983
    invoke-static {v10, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@87
    move-result-object v9

    #@88
    :goto_1
    return-object v9

    #@89
    .line 985
    :cond_4
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@8b
    const/4 v10, 0x2

    #@8c
    .line 984
    invoke-static {v10, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@8f
    move-result-object v9

    #@90
    goto :goto_1

    #@91
    .line 988
    :cond_5
    const/4 v9, 0x4

    #@92
    new-array v9, v9, [Ljava/lang/String;

    #@94
    const-string/jumbo v10, "full"

    #@97
    const/4 v11, 0x0

    #@98
    aput-object v10, v9, v11

    #@9a
    const-string/jumbo v10, "long"

    #@9d
    const/4 v11, 0x1

    #@9e
    aput-object v10, v9, v11

    #@a0
    const-string/jumbo v10, "medium"

    #@a3
    const/4 v11, 0x2

    #@a4
    aput-object v10, v9, v11

    #@a6
    const-string/jumbo v10, "short"

    #@a9
    const/4 v11, 0x3

    #@aa
    aput-object v10, v9, v11

    #@ac
    .line 987
    const/4 v10, 0x1

    #@ad
    invoke-direct {p0, p1, p2, v10, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    #@b0
    move-result v2

    #@b1
    .line 989
    .local v2, "dateStyle":I
    const/4 v9, -0x1

    #@b2
    if-ne v2, v9, :cond_6

    #@b4
    .line 990
    const/16 v9, 0x7d

    #@b6
    const/16 v10, 0x7b

    #@b8
    invoke-static {p1, p2, v0, v9, v10}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    #@bb
    .line 991
    new-instance v9, Ljava/text/SimpleDateFormat;

    #@bd
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c0
    move-result-object v10

    #@c1
    iget-object v11, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@c3
    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@c6
    return-object v9

    #@c7
    .line 993
    :cond_6
    packed-switch v2, :pswitch_data_1

    #@ca
    .line 1007
    :goto_2
    const/4 v9, 0x1

    #@cb
    if-ne v8, v9, :cond_7

    #@cd
    .line 1008
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@cf
    .line 1007
    invoke-static {v2, v9}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@d2
    move-result-object v9

    #@d3
    :goto_3
    return-object v9

    #@d4
    .line 995
    :pswitch_1
    const/4 v2, 0x0

    #@d5
    .line 996
    goto :goto_2

    #@d6
    .line 998
    :pswitch_2
    const/4 v2, 0x1

    #@d7
    .line 999
    goto :goto_2

    #@d8
    .line 1001
    :pswitch_3
    const/4 v2, 0x2

    #@d9
    .line 1002
    goto :goto_2

    #@da
    .line 1004
    :pswitch_4
    const/4 v2, 0x3

    #@db
    .line 1005
    goto :goto_2

    #@dc
    .line 1009
    :cond_7
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@de
    .line 1008
    invoke-static {v2, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@e1
    move-result-object v9

    #@e2
    goto :goto_3

    #@e3
    .line 1011
    .end local v2    # "dateStyle":I
    :pswitch_5
    const/16 v9, 0x7d

    #@e5
    if-ne v1, v9, :cond_8

    #@e7
    .line 1012
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@e9
    invoke-static {v9}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@ec
    move-result-object v9

    #@ed
    return-object v9

    #@ee
    .line 1015
    :cond_8
    const/4 v9, 0x3

    #@ef
    new-array v9, v9, [Ljava/lang/String;

    #@f1
    const-string/jumbo v10, "currency"

    #@f4
    const/4 v11, 0x0

    #@f5
    aput-object v10, v9, v11

    #@f7
    const-string/jumbo v10, "percent"

    #@fa
    const/4 v11, 0x1

    #@fb
    aput-object v10, v9, v11

    #@fd
    const-string/jumbo v10, "integer"

    #@100
    const/4 v11, 0x2

    #@101
    aput-object v10, v9, v11

    #@103
    .line 1014
    const/4 v10, 0x1

    #@104
    invoke-direct {p0, p1, p2, v10, v9}, Ljava/text/MessageFormat;->match(Ljava/lang/String;Ljava/text/ParsePosition;Z[Ljava/lang/String;)I

    #@107
    move-result v5

    #@108
    .line 1016
    .local v5, "numberStyle":I
    const/4 v9, -0x1

    #@109
    if-ne v5, v9, :cond_9

    #@10b
    .line 1017
    const/16 v9, 0x7d

    #@10d
    const/16 v10, 0x7b

    #@10f
    invoke-static {p1, p2, v0, v9, v10}, Ljava/text/Format;->upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z

    #@112
    .line 1018
    new-instance v9, Ljava/text/DecimalFormat;

    #@114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@117
    move-result-object v10

    #@118
    .line 1019
    new-instance v11, Ljava/text/DecimalFormatSymbols;

    #@11a
    iget-object v12, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@11c
    invoke-direct {v11, v12}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@11f
    .line 1018
    invoke-direct {v9, v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    #@122
    return-object v9

    #@123
    .line 1021
    :cond_9
    packed-switch v5, :pswitch_data_2

    #@126
    .line 1027
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@128
    invoke-static {v9}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@12b
    move-result-object v9

    #@12c
    return-object v9

    #@12d
    .line 1023
    :pswitch_6
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@12f
    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@132
    move-result-object v9

    #@133
    return-object v9

    #@134
    .line 1025
    :pswitch_7
    iget-object v9, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@136
    invoke-static {v9}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@139
    move-result-object v9

    #@13a
    return-object v9

    #@13b
    .line 1032
    .end local v5    # "numberStyle":I
    :catch_0
    move-exception v3

    #@13c
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    #@13e
    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    #@148
    .line 993
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@154
    .line 1021
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1250
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@5
    move-result-object v0

    #@6
    .line 1251
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v6, "argumentNumbers"

    #@9
    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v6

    #@d
    check-cast v6, [I

    #@f
    iput-object v6, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@11
    .line 1252
    const-string/jumbo v6, "formats"

    #@14
    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, [Ljava/text/Format;

    #@1a
    iput-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@1c
    .line 1253
    const-string/jumbo v6, "locale"

    #@1f
    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Ljava/util/Locale;

    #@25
    iput-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@27
    .line 1254
    const-string/jumbo v6, "maxOffset"

    #@2a
    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@2d
    move-result v6

    #@2e
    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@30
    .line 1255
    const-string/jumbo v6, "offsets"

    #@33
    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, [I

    #@39
    .line 1256
    .local v4, "offsets":[I
    const-string/jumbo v6, "pattern"

    #@3c
    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Ljava/lang/String;

    #@42
    .line 1258
    .local v5, "pattern":Ljava/lang/String;
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@44
    if-gez v6, :cond_1

    #@46
    .line 1259
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@49
    move-result v6

    #@4a
    if-lez v6, :cond_0

    #@4c
    const/4 v3, 0x1

    #@4d
    .line 1264
    .local v3, "length":I
    :goto_0
    new-array v6, v3, [Ljava/lang/String;

    #@4f
    iput-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@51
    .line 1265
    const/4 v2, 0x0

    #@52
    .line 1266
    .local v2, "last":I
    const/4 v1, 0x0

    #@53
    .local v1, "i":I
    :goto_1
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@55
    if-gt v1, v6, :cond_3

    #@57
    .line 1267
    iget-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@59
    aget v7, v4, v1

    #@5b
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    aput-object v7, v6, v1

    #@61
    .line 1268
    aget v2, v4, v1

    #@63
    .line 1266
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_1

    #@66
    .line 1259
    .end local v1    # "i":I
    .end local v2    # "last":I
    .end local v3    # "length":I
    :cond_0
    const/4 v3, 0x0

    #@67
    .restart local v3    # "length":I
    goto :goto_0

    #@68
    .line 1261
    .end local v3    # "length":I
    :cond_1
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@6a
    .line 1262
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@6c
    aget v6, v4, v6

    #@6e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@71
    move-result v8

    #@72
    if-ne v6, v8, :cond_2

    #@74
    const/4 v6, 0x1

    #@75
    .line 1261
    :goto_2
    add-int v3, v7, v6

    #@77
    .restart local v3    # "length":I
    goto :goto_0

    #@78
    .line 1262
    .end local v3    # "length":I
    :cond_2
    const/4 v6, 0x2

    #@79
    goto :goto_2

    #@7a
    .line 1270
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "length":I
    :cond_3
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@7c
    add-int/lit8 v6, v6, 0x1

    #@7e
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@80
    array-length v7, v7

    #@81
    if-ge v6, v7, :cond_4

    #@83
    .line 1271
    iget-object v6, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@85
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@87
    array-length v7, v7

    #@88
    add-int/lit8 v7, v7, -0x1

    #@8a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@8d
    move-result v8

    #@8e
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    aput-object v8, v6, v7

    #@94
    .line 1249
    :cond_4
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v1

    #@4
    .line 1226
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v7, "argumentNumbers"

    #@7
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@9
    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 1227
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@e
    .line 1228
    .local v0, "compatibleFormats":[Ljava/text/Format;
    const-string/jumbo v7, "formats"

    #@11
    invoke-virtual {v1, v7, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@14
    .line 1229
    const-string/jumbo v7, "locale"

    #@17
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@19
    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 1230
    const-string/jumbo v7, "maxOffset"

    #@1f
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@21
    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@24
    .line 1231
    const/4 v3, 0x0

    #@25
    .line 1232
    .local v3, "offset":I
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@27
    add-int/lit8 v5, v7, 0x1

    #@29
    .line 1233
    .local v5, "offsetsLength":I
    new-array v4, v5, [I

    #@2b
    .line 1234
    .local v4, "offsets":[I
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    .line 1235
    .local v6, "pattern":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    :goto_0
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@33
    if-gt v2, v7, :cond_0

    #@35
    .line 1236
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@37
    aget-object v7, v7, v2

    #@39
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@3c
    move-result v7

    #@3d
    add-int/2addr v3, v7

    #@3e
    .line 1237
    aput v3, v4, v2

    #@40
    .line 1238
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@42
    aget-object v7, v7, v2

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 1235
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 1240
    :cond_0
    iget v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@4c
    add-int/lit8 v7, v7, 0x1

    #@4e
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@50
    array-length v8, v8

    #@51
    if-ge v7, v8, :cond_1

    #@53
    .line 1241
    iget-object v7, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@55
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@57
    add-int/lit8 v8, v8, 0x1

    #@59
    aget-object v7, v7, v8

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 1243
    :cond_1
    const-string/jumbo v7, "offsets"

    #@61
    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@64
    .line 1244
    const-string/jumbo v7, "pattern"

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@6e
    .line 1245
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@71
    .line 1224
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 20
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 386
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v9

    #@4
    .line 387
    .local v9, "length":I
    new-instance v7, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 388
    .local v7, "buffer":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/text/ParsePosition;

    #@b
    const/16 v17, 0x0

    #@d
    invoke-direct/range {v16 .. v17}, Ljava/text/ParsePosition;-><init>(I)V

    #@10
    .line 389
    .local v16, "position":Ljava/text/ParsePosition;
    new-instance v11, Ljava/util/ArrayList;

    #@12
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 390
    .local v11, "localStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@16
    .line 391
    .local v4, "argCount":I
    const/16 v17, 0xa

    #@18
    move/from16 v0, v17

    #@1a
    new-array v6, v0, [I

    #@1c
    .line 392
    .local v6, "args":[I
    const/4 v12, -0x1

    #@1d
    .line 393
    .local v12, "maxArg":I
    new-instance v10, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 394
    .local v10, "localFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    #@25
    move-result v17

    #@26
    move/from16 v0, v17

    #@28
    if-ge v0, v9, :cond_7

    #@2a
    .line 395
    const/16 v17, 0x7b

    #@2c
    move-object/from16 v0, p1

    #@2e
    move-object/from16 v1, v16

    #@30
    move/from16 v2, v17

    #@32
    invoke-static {v0, v1, v7, v2}, Ljava/text/Format;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    #@35
    move-result v17

    #@36
    if-eqz v17, :cond_6

    #@38
    .line 396
    const/4 v3, 0x0

    #@39
    .line 397
    .local v3, "arg":I
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParsePosition;->getIndex()I

    #@3c
    move-result v14

    #@3d
    .line 398
    .local v14, "offset":I
    if-lt v14, v9, :cond_1

    #@3f
    .line 399
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@41
    const-string/jumbo v18, "Invalid argument number"

    #@44
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v17

    #@48
    .end local v14    # "offset":I
    .local v8, "ch":C
    .local v15, "offset":I
    :cond_0
    move v14, v15

    #@49
    .line 403
    .end local v8    # "ch":C
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_1
    add-int/lit8 v15, v14, 0x1

    #@4b
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p1

    #@4d
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v8

    #@51
    .restart local v8    # "ch":C
    const/16 v17, 0x7d

    #@53
    move/from16 v0, v17

    #@55
    if-eq v8, v0, :cond_4

    #@57
    const/16 v17, 0x2c

    #@59
    move/from16 v0, v17

    #@5b
    if-eq v8, v0, :cond_4

    #@5d
    .line 404
    const/16 v17, 0x30

    #@5f
    move/from16 v0, v17

    #@61
    if-ge v8, v0, :cond_2

    #@63
    const/16 v17, 0x39

    #@65
    move/from16 v0, v17

    #@67
    if-le v8, v0, :cond_2

    #@69
    .line 405
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@6b
    const-string/jumbo v18, "Invalid argument number"

    #@6e
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v17

    #@72
    .line 408
    :cond_2
    mul-int/lit8 v17, v3, 0xa

    #@74
    add-int/lit8 v18, v8, -0x30

    #@76
    add-int v3, v17, v18

    #@78
    .line 410
    if-ltz v3, :cond_3

    #@7a
    if-lt v15, v9, :cond_0

    #@7c
    .line 411
    :cond_3
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@7e
    const-string/jumbo v18, "Invalid argument number"

    #@81
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v17

    #@85
    .line 414
    :cond_4
    add-int/lit8 v14, v15, -0x1

    #@87
    .line 415
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move-object/from16 v0, v16

    #@89
    invoke-virtual {v0, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    #@8c
    .line 416
    move-object/from16 v0, p0

    #@8e
    move-object/from16 v1, p1

    #@90
    move-object/from16 v2, v16

    #@92
    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;->parseVariable(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/text/Format;

    #@95
    move-result-object v17

    #@96
    move-object/from16 v0, v17

    #@98
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9b
    .line 417
    array-length v0, v6

    #@9c
    move/from16 v17, v0

    #@9e
    move/from16 v0, v17

    #@a0
    if-lt v4, v0, :cond_5

    #@a2
    .line 418
    array-length v0, v6

    #@a3
    move/from16 v17, v0

    #@a5
    mul-int/lit8 v17, v17, 0x2

    #@a7
    move/from16 v0, v17

    #@a9
    new-array v13, v0, [I

    #@ab
    .line 419
    .local v13, "newArgs":[I
    array-length v0, v6

    #@ac
    move/from16 v17, v0

    #@ae
    const/16 v18, 0x0

    #@b0
    const/16 v19, 0x0

    #@b2
    move/from16 v0, v18

    #@b4
    move/from16 v1, v19

    #@b6
    move/from16 v2, v17

    #@b8
    invoke-static {v6, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@bb
    .line 420
    move-object v6, v13

    #@bc
    .line 422
    .end local v13    # "newArgs":[I
    :cond_5
    add-int/lit8 v5, v4, 0x1

    #@be
    .end local v4    # "argCount":I
    .local v5, "argCount":I
    aput v3, v6, v4

    #@c0
    .line 423
    if-le v3, v12, :cond_8

    #@c2
    .line 424
    move v12, v3

    #@c3
    move v4, v5

    #@c4
    .line 427
    .end local v3    # "arg":I
    .end local v5    # "argCount":I
    .end local v8    # "ch":C
    .end local v14    # "offset":I
    .restart local v4    # "argCount":I
    :cond_6
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c7
    move-result-object v17

    #@c8
    move-object/from16 v0, v17

    #@ca
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cd
    .line 428
    const/16 v17, 0x0

    #@cf
    move/from16 v0, v17

    #@d1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    #@d4
    goto/16 :goto_0

    #@d6
    .line 430
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@d9
    move-result v17

    #@da
    move/from16 v0, v17

    #@dc
    new-array v0, v0, [Ljava/lang/String;

    #@de
    move-object/from16 v17, v0

    #@e0
    move-object/from16 v0, v17

    #@e2
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@e5
    move-result-object v17

    #@e6
    check-cast v17, [Ljava/lang/String;

    #@e8
    move-object/from16 v0, v17

    #@ea
    move-object/from16 v1, p0

    #@ec
    iput-object v0, v1, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@ee
    .line 431
    move-object/from16 v0, p0

    #@f0
    iput-object v6, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@f2
    .line 432
    new-array v0, v4, [Ljava/text/Format;

    #@f4
    move-object/from16 v17, v0

    #@f6
    move-object/from16 v0, v17

    #@f8
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@fb
    move-result-object v17

    #@fc
    check-cast v17, [Ljava/text/Format;

    #@fe
    move-object/from16 v0, v17

    #@100
    move-object/from16 v1, p0

    #@102
    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@104
    .line 433
    add-int/lit8 v17, v4, -0x1

    #@106
    move/from16 v0, v17

    #@108
    move-object/from16 v1, p0

    #@10a
    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    #@10c
    .line 434
    move-object/from16 v0, p0

    #@10e
    iput v12, v0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    #@110
    .line 385
    return-void

    #@111
    .end local v4    # "argCount":I
    .restart local v3    # "arg":I
    .restart local v5    # "argCount":I
    .restart local v8    # "ch":C
    .restart local v14    # "offset":I
    :cond_8
    move v4, v5

    #@112
    .end local v5    # "argCount":I
    .restart local v4    # "argCount":I
    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 446
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/MessageFormat;

    #@6
    .line 447
    .local v1, "clone":Ljava/text/MessageFormat;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@8
    array-length v3, v3

    #@9
    new-array v0, v3, [Ljava/text/Format;

    #@b
    .line 448
    .local v0, "array":[Ljava/text/Format;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@d
    array-length v2, v3

    #@e
    .local v2, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@10
    if-ltz v2, :cond_1

    #@12
    .line 449
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@14
    aget-object v3, v3, v2

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 450
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@1a
    aget-object v3, v3, v2

    #@1c
    invoke-virtual {v3}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Ljava/text/Format;

    #@22
    aput-object v3, v0, v2

    #@24
    goto :goto_0

    #@25
    .line 453
    :cond_1
    iput-object v0, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@27
    .line 454
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 470
    if-ne p0, p1, :cond_0

    #@3
    .line 471
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 473
    :cond_0
    instance-of v3, p1, Ljava/text/MessageFormat;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 474
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 476
    check-cast v0, Ljava/text/MessageFormat;

    #@d
    .line 477
    .local v0, "format":Ljava/text/MessageFormat;
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@f
    iget v4, v0, Ljava/text/MessageFormat;->maxOffset:I

    #@11
    if-eq v3, v4, :cond_2

    #@13
    .line 478
    return v2

    #@14
    .line 482
    :cond_2
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@17
    if-gt v1, v3, :cond_4

    #@19
    .line 483
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@1b
    aget v3, v3, v1

    #@1d
    iget-object v4, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@1f
    aget v4, v4, v1

    #@21
    if-eq v3, v4, :cond_3

    #@23
    .line 484
    return v2

    #@24
    .line 482
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 487
    :cond_4
    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@29
    iget-object v4, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_5

    #@31
    .line 488
    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@33
    iget-object v4, v0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@35
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    .line 487
    if-eqz v3, :cond_5

    #@3b
    .line 489
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@3d
    iget-object v3, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@3f
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    .line 487
    :cond_5
    return v2
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 708
    check-cast p1, [Ljava/lang/Object;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 550
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 508
    if-nez p1, :cond_0

    #@2
    .line 509
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "object == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 512
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 513
    .local v1, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/ArrayList;

    #@12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 516
    .local v4, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/MessageFormat$FieldContainer;>;"
    check-cast p1, [Ljava/lang/Object;

    #@17
    .end local p1    # "object":Ljava/lang/Object;
    new-instance v5, Ljava/text/FieldPosition;

    #@19
    const/4 v6, 0x0

    #@1a
    invoke-direct {v5, v6}, Ljava/text/FieldPosition;-><init>(I)V

    #@1d
    invoke-direct {p0, p1, v1, v5, v4}, Ljava/text/MessageFormat;->formatImpl([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@20
    .line 519
    new-instance v0, Ljava/text/AttributedString;

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-direct {v0, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@29
    .line 522
    .local v0, "as":Ljava/text/AttributedString;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v3

    #@2d
    .local v3, "fc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Ljava/text/MessageFormat$FieldContainer;

    #@39
    .line 523
    .local v2, "fc":Ljava/text/MessageFormat$FieldContainer;
    iget-object v5, v2, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    #@3b
    iget-object v6, v2, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    #@3d
    iget v7, v2, Ljava/text/MessageFormat$FieldContainer;->start:I

    #@3f
    iget v8, v2, Ljava/text/MessageFormat$FieldContainer;->end:I

    #@41
    invoke-virtual {v0, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@44
    goto :goto_0

    #@45
    .line 527
    .end local v2    # "fc":Ljava/text/MessageFormat$FieldContainer;
    :cond_1
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@48
    move-result-object v5

    #@49
    return-object v5
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 1

    #@0
    .prologue
    .line 740
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/text/Format;

    #@8
    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 4

    #@0
    .prologue
    .line 751
    iget v2, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    #@2
    add-int/lit8 v2, v2, 0x1

    #@4
    new-array v0, v2, [Ljava/text/Format;

    #@6
    .line 752
    .local v0, "answer":[Ljava/text/Format;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@9
    add-int/lit8 v2, v2, 0x1

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 753
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@f
    aget v2, v2, v1

    #@11
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@13
    aget-object v3, v3, v1

    #@15
    aput-object v3, v0, v2

    #@17
    .line 752
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 755
    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 798
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 803
    const/4 v0, 0x0

    #@1
    .line 804
    .local v0, "hashCode":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@4
    if-gt v1, v2, :cond_1

    #@6
    .line 805
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@8
    aget v2, v2, v1

    #@a
    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@c
    aget-object v3, v3, v1

    #@e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v3

    #@12
    add-int/2addr v2, v3

    #@13
    add-int/2addr v0, v2

    #@14
    .line 806
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@16
    aget-object v2, v2, v1

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 807
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@1c
    aget-object v2, v2, v1

    #@1e
    invoke-virtual {v2}, Ljava/text/Format;->hashCode()I

    #@21
    move-result v2

    #@22
    add-int/2addr v0, v2

    #@23
    .line 804
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 810
    :cond_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    iget-object v3, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@2c
    array-length v3, v3

    #@2d
    if-ge v2, v3, :cond_2

    #@2f
    .line 811
    iget-object v2, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@31
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@33
    add-int/lit8 v3, v3, 0x1

    #@35
    aget-object v2, v2, v3

    #@37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@3a
    move-result v2

    #@3b
    add-int/2addr v0, v2

    #@3c
    .line 813
    :cond_2
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@3e
    if-eqz v2, :cond_3

    #@40
    .line 814
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@42
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    #@45
    move-result v2

    #@46
    add-int/2addr v2, v0

    #@47
    return v2

    #@48
    .line 816
    :cond_3
    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 830
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 831
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 832
    .local v1, "result":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 833
    new-instance v2, Ljava/text/ParseException;

    #@12
    const-string/jumbo v3, "Parse failure"

    #@15
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@18
    move-result v4

    #@19
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v2

    #@1d
    .line 835
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 858
    if-nez p1, :cond_0

    #@4
    .line 859
    sget-object v8, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@6
    return-object v8

    #@7
    .line 861
    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    #@9
    const/4 v8, 0x0

    #@a
    invoke-direct {v2, v8}, Ljava/text/ParsePosition;-><init>(I)V

    #@d
    .line 862
    .local v2, "internalPos":Ljava/text/ParsePosition;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v4

    #@11
    .line 863
    .local v4, "offset":I
    iget v8, p0, Ljava/text/MessageFormat;->maxArgumentIndex:I

    #@13
    add-int/lit8 v8, v8, 0x1

    #@15
    new-array v6, v8, [Ljava/lang/Object;

    #@17
    .line 864
    .local v6, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@1a
    if-gt v1, v8, :cond_6

    #@1c
    .line 865
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@1e
    aget-object v7, v8, v1

    #@20
    .line 866
    .local v7, "sub":Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@23
    move-result v8

    #@24
    if-nez v8, :cond_1

    #@26
    .line 867
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@29
    .line 868
    return-object v10

    #@2a
    .line 870
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@2d
    move-result v8

    #@2e
    add-int/2addr v4, v8

    #@2f
    .line 872
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@31
    aget-object v0, v8, v1

    #@33
    .line 873
    .local v0, "format":Ljava/text/Format;
    if-nez v0, :cond_4

    #@35
    .line 874
    add-int/lit8 v8, v1, 0x1

    #@37
    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@39
    array-length v9, v9

    #@3a
    if-ge v8, v9, :cond_3

    #@3c
    .line 875
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@3e
    add-int/lit8 v9, v1, 0x1

    #@40
    aget-object v8, v8, v9

    #@42
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@45
    move-result v3

    #@46
    .line 876
    .local v3, "next":I
    if-ne v3, v11, :cond_2

    #@48
    .line 877
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@4b
    .line 878
    return-object v10

    #@4c
    .line 880
    :cond_2
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 881
    .local v5, "parse":Ljava/lang/Object;
    move v4, v3

    #@51
    .line 895
    .end local v3    # "next":I
    :goto_1
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@53
    aget v8, v8, v1

    #@55
    aput-object v5, v6, v8

    #@57
    .line 864
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 883
    .end local v5    # "parse":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    .line 884
    .restart local v5    # "parse":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@61
    move-result v4

    #@62
    goto :goto_1

    #@63
    .line 887
    .end local v5    # "parse":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    #@66
    .line 888
    invoke-virtual {v0, p1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    #@69
    move-result-object v5

    #@6a
    .line 889
    .restart local v5    # "parse":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@6d
    move-result v8

    #@6e
    if-eq v8, v11, :cond_5

    #@70
    .line 890
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@73
    .line 891
    return-object v10

    #@74
    .line 893
    :cond_5
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    #@77
    move-result v4

    #@78
    goto :goto_1

    #@79
    .line 897
    .end local v0    # "format":Ljava/text/Format;
    .end local v5    # "parse":Ljava/lang/Object;
    .end local v7    # "sub":Ljava/lang/String;
    :cond_6
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@7b
    add-int/lit8 v8, v8, 0x1

    #@7d
    iget-object v9, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@7f
    array-length v9, v9

    #@80
    if-ge v8, v9, :cond_8

    #@82
    .line 898
    iget-object v8, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@84
    iget v9, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@86
    add-int/lit8 v9, v9, 0x1

    #@88
    aget-object v7, v8, v9

    #@8a
    .line 899
    .restart local v7    # "sub":Ljava/lang/String;
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@8d
    move-result v8

    #@8e
    if-nez v8, :cond_7

    #@90
    .line 900
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@93
    .line 901
    return-object v10

    #@94
    .line 903
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@97
    move-result v8

    #@98
    add-int/2addr v4, v8

    #@99
    .line 905
    .end local v7    # "sub":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    #@9c
    .line 906
    return-object v6
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 930
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "format"    # Ljava/text/Format;

    #@0
    .prologue
    .line 1047
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@2
    aput-object p2, v0, p1

    #@4
    .line 1046
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 2
    .param p1, "argIndex"    # I
    .param p2, "format"    # Ljava/text/Format;

    #@0
    .prologue
    .line 768
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 769
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@9
    aget v1, v1, v0

    #@b
    if-ne v1, p1, :cond_0

    #@d
    .line 770
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@f
    aput-object p2, v1, v0

    #@11
    .line 768
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 767
    :cond_1
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 4
    .param p1, "formats"    # [Ljava/text/Format;

    #@0
    .prologue
    .line 1057
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@2
    array-length v1, v2

    #@3
    .line 1058
    .local v1, "min":I
    array-length v2, p1

    #@4
    if-ge v2, v1, :cond_0

    #@6
    .line 1059
    array-length v1, p1

    #@7
    .line 1061
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 1062
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@c
    aget-object v3, p1, v0

    #@e
    aput-object v3, v2, v0

    #@10
    .line 1061
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1056
    :cond_1
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4
    .param p1, "formats"    # [Ljava/text/Format;

    #@0
    .prologue
    .line 783
    const/4 v1, 0x0

    #@1
    .local v1, "j":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v1, v2, :cond_2

    #@4
    .line 784
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 785
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@d
    aget v2, v2, v0

    #@f
    if-ne v2, v1, :cond_0

    #@11
    .line 786
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@13
    aget-object v3, p1, v1

    #@15
    aput-object v3, v2, v0

    #@17
    .line 784
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 783
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 782
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1075
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    #@3
    .line 1076
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@6
    if-gt v1, v3, :cond_2

    #@8
    .line 1077
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@a
    aget-object v0, v3, v1

    #@c
    .line 1080
    .local v0, "format":Ljava/text/Format;
    instance-of v3, v0, Ljava/text/DecimalFormat;

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 1082
    :try_start_0
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@12
    new-instance v4, Ljava/text/DecimalFormat;

    #@14
    check-cast v0, Ljava/text/DecimalFormat;

    #@16
    .end local v0    # "format":Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 1083
    new-instance v6, Ljava/text/DecimalFormatSymbols;

    #@1c
    invoke-direct {v6, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@1f
    .line 1082
    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    #@22
    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1076
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1084
    :catch_0
    move-exception v2

    #@28
    .line 1085
    .local v2, "npe":Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@2a
    aput-object v7, v3, v1

    #@2c
    goto :goto_1

    #@2d
    .line 1087
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "format":Ljava/text/Format;
    :cond_1
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 1089
    :try_start_1
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@33
    new-instance v4, Ljava/text/SimpleDateFormat;

    #@35
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@37
    .end local v0    # "format":Ljava/text/Format;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-direct {v4, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@3e
    aput-object v4, v3, v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    #@40
    goto :goto_1

    #@41
    .line 1091
    :catch_1
    move-exception v2

    #@42
    .line 1092
    .restart local v2    # "npe":Ljava/lang/NullPointerException;
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@44
    aput-object v7, v3, v1

    #@46
    goto :goto_1

    #@47
    .line 1074
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x7d

    #@2
    const/16 v11, 0x7b

    #@4
    .line 1152
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 1153
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@c
    if-gt v4, v10, :cond_a

    #@e
    .line 1154
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@10
    aget-object v10, v10, v4

    #@12
    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@15
    .line 1155
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@18
    .line 1156
    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    #@1a
    aget v10, v10, v4

    #@1c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1f
    .line 1157
    iget-object v10, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    #@21
    aget-object v3, v10, v4

    #@23
    .line 1158
    .local v3, "format":Ljava/text/Format;
    const/4 v8, 0x0

    #@24
    .line 1159
    .local v8, "pattern":Ljava/lang/String;
    instance-of v10, v3, Ljava/text/ChoiceFormat;

    #@26
    if-eqz v10, :cond_4

    #@28
    .line 1160
    const-string/jumbo v10, ",choice,"

    #@2b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 1161
    check-cast v3, Ljava/text/ChoiceFormat;

    #@30
    .end local v3    # "format":Ljava/text/Format;
    invoke-virtual {v3}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    .line 1169
    .end local v8    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v8, :cond_9

    #@36
    .line 1170
    const/4 v9, 0x0

    #@37
    .line 1171
    .local v9, "quote":Z
    const/4 v5, 0x0

    #@38
    .local v5, "index":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@3b
    move-result v7

    #@3c
    .local v7, "length":I
    const/4 v2, 0x0

    #@3d
    .local v2, "count":I
    move v6, v5

    #@3e
    .line 1172
    .end local v5    # "index":I
    .local v6, "index":I
    :goto_2
    if-ge v6, v7, :cond_9

    #@40
    .line 1173
    add-int/lit8 v5, v6, 0x1

    #@42
    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v1

    #@46
    .line 1174
    .local v1, "ch":C
    const/16 v10, 0x27

    #@48
    if-ne v1, v10, :cond_1

    #@4a
    .line 1175
    if-eqz v9, :cond_7

    #@4c
    const/4 v9, 0x0

    #@4d
    .line 1177
    :cond_1
    :goto_3
    if-nez v9, :cond_3

    #@4f
    .line 1178
    if-ne v1, v11, :cond_2

    #@51
    .line 1179
    add-int/lit8 v2, v2, 0x1

    #@53
    .line 1181
    :cond_2
    if-ne v1, v12, :cond_3

    #@55
    .line 1182
    if-lez v2, :cond_8

    #@57
    .line 1183
    add-int/lit8 v2, v2, -0x1

    #@59
    .line 1190
    .end local v1    # "ch":C
    :cond_3
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5c
    move v6, v5

    #@5d
    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_2

    #@5e
    .line 1162
    .end local v2    # "count":I
    .end local v6    # "index":I
    .end local v7    # "length":I
    .end local v9    # "quote":Z
    .restart local v3    # "format":Ljava/text/Format;
    .restart local v8    # "pattern":Ljava/lang/String;
    :cond_4
    instance-of v10, v3, Ljava/text/DecimalFormat;

    #@60
    if-eqz v10, :cond_5

    #@62
    .line 1163
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeDecimalFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    .local v8, "pattern":Ljava/lang/String;
    goto :goto_1

    #@67
    .line 1164
    .local v8, "pattern":Ljava/lang/String;
    :cond_5
    instance-of v10, v3, Ljava/text/SimpleDateFormat;

    #@69
    if-eqz v10, :cond_6

    #@6b
    .line 1165
    invoke-direct {p0, v0, v3}, Ljava/text/MessageFormat;->decodeSimpleDateFormat(Ljava/lang/StringBuffer;Ljava/text/Format;)Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    .local v8, "pattern":Ljava/lang/String;
    goto :goto_1

    #@70
    .line 1166
    .local v8, "pattern":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_0

    #@72
    .line 1167
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@74
    const-string/jumbo v11, "Unknown format"

    #@77
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v10

    #@7b
    .line 1175
    .end local v3    # "format":Ljava/text/Format;
    .end local v8    # "pattern":Ljava/lang/String;
    .restart local v1    # "ch":C
    .restart local v2    # "count":I
    .restart local v5    # "index":I
    .restart local v7    # "length":I
    .restart local v9    # "quote":Z
    :cond_7
    const/4 v9, 0x1

    #@7c
    goto :goto_3

    #@7d
    .line 1185
    :cond_8
    const-string/jumbo v10, "\'}"

    #@80
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 1186
    const/16 v1, 0x27

    #@85
    .local v1, "ch":C
    goto :goto_4

    #@86
    .line 1193
    .end local v1    # "ch":C
    .end local v2    # "count":I
    .end local v5    # "index":I
    .end local v7    # "length":I
    .end local v9    # "quote":Z
    :cond_9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@89
    .line 1153
    add-int/lit8 v4, v4, 0x1

    #@8b
    goto/16 :goto_0

    #@8d
    .line 1195
    :cond_a
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@8f
    add-int/lit8 v10, v10, 0x1

    #@91
    iget-object v11, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@93
    array-length v11, v11

    #@94
    if-ge v10, v11, :cond_b

    #@96
    .line 1196
    iget-object v10, p0, Ljava/text/MessageFormat;->strings:[Ljava/lang/String;

    #@98
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    #@9a
    add-int/lit8 v11, v11, 0x1

    #@9c
    aget-object v10, v10, v11

    #@9e
    invoke-direct {p0, v0, v10}, Ljava/text/MessageFormat;->appendQuoted(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@a1
    .line 1198
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@a4
    move-result-object v10

    #@a5
    return-object v10
.end method
