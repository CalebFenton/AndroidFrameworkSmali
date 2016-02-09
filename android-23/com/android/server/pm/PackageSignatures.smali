.class Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSignatures;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    if-eqz p1, :cond_0

    #@5
    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 36
    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [Landroid/content/pm/Signature;

    #@11
    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@13
    .line 34
    :cond_0
    return-void
.end method

.method constructor <init>([Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "sigs"    # [Landroid/content/pm/Signature;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    #@6
    .line 40
    return-void
.end method


# virtual methods
.method assignSignatures([Landroid/content/pm/Signature;)V
    .locals 3
    .param p1, "sigs"    # [Landroid/content/pm/Signature;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    if-nez p1, :cond_0

    #@3
    .line 179
    iput-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@5
    .line 180
    return-void

    #@6
    .line 182
    :cond_0
    array-length v1, p1

    #@7
    new-array v1, v1, [Landroid/content/pm/Signature;

    #@9
    iput-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@b
    .line 183
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 184
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@11
    aget-object v2, p1, v0

    #@13
    aput-object v2, v1, v0

    #@15
    .line 183
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 177
    :cond_1
    return-void
.end method

.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p2, "pastSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const-string/jumbo v14, "count"

    #@3
    const/4 v15, 0x0

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-interface {v0, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 81
    .local v2, "countStr":Ljava/lang/String;
    if-nez v2, :cond_0

    #@c
    .line 83
    new-instance v14, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v15, "Error in package manager settings: <signatures> has no count at "

    #@14
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v14

    #@18
    .line 84
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1b
    move-result-object v15

    #@1c
    .line 83
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v14

    #@20
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v14

    #@24
    .line 82
    const/4 v15, 0x5

    #@25
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@28
    .line 85
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 87
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2e
    move-result v1

    #@2f
    .line 88
    .local v1, "count":I
    new-array v14, v1, [Landroid/content/pm/Signature;

    #@31
    move-object/from16 v0, p0

    #@33
    iput-object v14, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@35
    .line 89
    const/4 v10, 0x0

    #@36
    .line 91
    .local v10, "pos":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@39
    move-result v9

    #@3a
    .line 93
    .local v9, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3d
    move-result v13

    #@3e
    .local v13, "type":I
    const/4 v14, 0x1

    #@3f
    if-eq v13, v14, :cond_a

    #@41
    .line 94
    const/4 v14, 0x3

    #@42
    if-ne v13, v14, :cond_2

    #@44
    .line 95
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@47
    move-result v14

    #@48
    if-le v14, v9, :cond_a

    #@4a
    .line 96
    :cond_2
    const/4 v14, 0x3

    #@4b
    if-eq v13, v14, :cond_1

    #@4d
    .line 97
    const/4 v14, 0x4

    #@4e
    if-eq v13, v14, :cond_1

    #@50
    .line 101
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@53
    move-result-object v12

    #@54
    .line 102
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "cert"

    #@57
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v14

    #@5b
    if-eqz v14, :cond_9

    #@5d
    .line 103
    if-ge v10, v1, :cond_8

    #@5f
    .line 104
    const-string/jumbo v14, "index"

    #@62
    const/4 v15, 0x0

    #@63
    move-object/from16 v0, p1

    #@65
    invoke-interface {v0, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    .line 105
    .local v6, "index":Ljava/lang/String;
    if-eqz v6, :cond_7

    #@6b
    .line 107
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6e
    move-result v5

    #@6f
    .line 108
    .local v5, "idx":I
    const-string/jumbo v14, "key"

    #@72
    const/4 v15, 0x0

    #@73
    move-object/from16 v0, p1

    #@75
    invoke-interface {v0, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 109
    .local v7, "key":Ljava/lang/String;
    if-nez v7, :cond_5

    #@7b
    .line 110
    if-ltz v5, :cond_4

    #@7d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    #@80
    move-result v14

    #@81
    if-ge v5, v14, :cond_4

    #@83
    .line 111
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v11

    #@89
    check-cast v11, Landroid/content/pm/Signature;

    #@8b
    .line 112
    .local v11, "sig":Landroid/content/pm/Signature;
    if-eqz v11, :cond_3

    #@8d
    .line 113
    move-object/from16 v0, p0

    #@8f
    iget-object v15, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v14

    #@97
    check-cast v14, Landroid/content/pm/Signature;

    #@99
    aput-object v14, v15, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@9b
    .line 114
    add-int/lit8 v10, v10, 0x1

    #@9d
    .line 164
    .end local v5    # "idx":I
    .end local v6    # "index":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "sig":Landroid/content/pm/Signature;
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a0
    goto :goto_0

    #@a1
    .line 117
    .restart local v5    # "idx":I
    .restart local v6    # "index":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v11    # "sig":Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v15, "Error in package manager settings: <cert> index "

    #@a9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v14

    #@ad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v14

    #@b1
    .line 118
    const-string/jumbo v15, " is not defined at "

    #@b4
    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v14

    #@b8
    .line 119
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@bb
    move-result-object v15

    #@bc
    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v14

    #@c0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v14

    #@c4
    .line 116
    const/4 v15, 0x5

    #@c5
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@c8
    goto :goto_1

    #@c9
    .line 136
    .end local v5    # "idx":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    #@ca
    .line 138
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v15, "Error in package manager settings: <cert> index "

    #@d2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v14

    #@d6
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v14

    #@da
    .line 139
    const-string/jumbo v15, " is not a number at "

    #@dd
    .line 138
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v14

    #@e1
    .line 140
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@e4
    move-result-object v15

    #@e5
    .line 138
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v14

    #@e9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v14

    #@ed
    .line 137
    const/4 v15, 0x5

    #@ee
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@f1
    goto :goto_1

    #@f2
    .line 123
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "idx":I
    .restart local v7    # "key":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v15, "Error in package manager settings: <cert> index "

    #@fa
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v14

    #@fe
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v14

    #@102
    .line 124
    const-string/jumbo v15, " is out of bounds at "

    #@105
    .line 123
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v14

    #@109
    .line 125
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@10c
    move-result-object v15

    #@10d
    .line 123
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v14

    #@111
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v14

    #@115
    .line 122
    const/4 v15, 0x5

    #@116
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@119
    goto :goto_1

    #@11a
    .line 141
    .end local v5    # "idx":I
    .end local v7    # "key":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@11b
    .line 143
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v15, "Error in package manager settings: <cert> index "

    #@123
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v14

    #@127
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v14

    #@12b
    .line 144
    const-string/jumbo v15, " has an invalid signature at "

    #@12e
    .line 143
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v14

    #@132
    .line 145
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@135
    move-result-object v15

    #@136
    .line 143
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v14

    #@13a
    .line 145
    const-string/jumbo v15, ": "

    #@13d
    .line 143
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v14

    #@141
    .line 146
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@144
    move-result-object v15

    #@145
    .line 143
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v14

    #@149
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v14

    #@14d
    .line 142
    const/4 v15, 0x5

    #@14e
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@151
    goto/16 :goto_1

    #@153
    .line 128
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "idx":I
    .restart local v7    # "key":Ljava/lang/String;
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    #@156
    move-result v14

    #@157
    if-gt v14, v5, :cond_6

    #@159
    .line 129
    const/4 v14, 0x0

    #@15a
    move-object/from16 v0, p2

    #@15c
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15f
    goto :goto_2

    #@160
    .line 131
    :cond_6
    new-instance v11, Landroid/content/pm/Signature;

    #@162
    invoke-direct {v11, v7}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    #@165
    .line 132
    .restart local v11    # "sig":Landroid/content/pm/Signature;
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v0, v5, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@16a
    .line 133
    move-object/from16 v0, p0

    #@16c
    iget-object v14, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@16e
    aput-object v11, v14, v10
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    #@170
    .line 134
    add-int/lit8 v10, v10, 0x1

    #@172
    goto/16 :goto_1

    #@174
    .line 150
    .end local v5    # "idx":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "sig":Landroid/content/pm/Signature;
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    #@176
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    const-string/jumbo v15, "Error in package manager settings: <cert> has no index at "

    #@17c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v14

    #@180
    .line 151
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@183
    move-result-object v15

    #@184
    .line 150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v14

    #@188
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18b
    move-result-object v14

    #@18c
    .line 149
    const/4 v15, 0x5

    #@18d
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@190
    goto/16 :goto_1

    #@192
    .line 155
    .end local v6    # "index":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v15, "Error in package manager settings: too many <cert> tags, expected "

    #@19a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v14

    #@19e
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v14

    #@1a2
    .line 157
    const-string/jumbo v15, " at "

    #@1a5
    .line 155
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v14

    #@1a9
    .line 157
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1ac
    move-result-object v15

    #@1ad
    .line 155
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v14

    #@1b1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v14

    #@1b5
    .line 154
    const/4 v15, 0x5

    #@1b6
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1b9
    goto/16 :goto_1

    #@1bb
    .line 161
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    #@1bd
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1c0
    const-string/jumbo v15, "Unknown element under <cert>: "

    #@1c3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v14

    #@1c7
    .line 162
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1ca
    move-result-object v15

    #@1cb
    .line 161
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v14

    #@1cf
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v14

    #@1d3
    .line 160
    const/4 v15, 0x5

    #@1d4
    invoke-static {v15, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1d7
    goto/16 :goto_1

    #@1d9
    .line 167
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_a
    if-ge v10, v1, :cond_b

    #@1db
    .line 171
    new-array v8, v10, [Landroid/content/pm/Signature;

    #@1dd
    .line 172
    .local v8, "newSigs":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    #@1df
    iget-object v14, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@1e1
    const/4 v15, 0x0

    #@1e2
    const/16 v16, 0x0

    #@1e4
    move/from16 v0, v16

    #@1e6
    invoke-static {v14, v15, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e9
    .line 173
    move-object/from16 v0, p0

    #@1eb
    iput-object v8, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@1ed
    .line 79
    .end local v8    # "newSigs":[Landroid/content/pm/Signature;
    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v2, 0x80

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 191
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "PackageSignatures{"

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 192
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v2

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 193
    const-string/jumbo v2, " ["

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 194
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 195
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@25
    array-length v2, v2

    #@26
    if-ge v1, v2, :cond_1

    #@28
    .line 196
    if-lez v1, :cond_0

    #@2a
    const-string/jumbo v2, ", "

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@32
    aget-object v2, v2, v1

    #@34
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@37
    move-result v2

    #@38
    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 195
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 201
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v2, "]}"

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    return-object v2
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "pastSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v8, 0x0

    #@1
    .line 49
    iget-object v6, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 50
    return-void

    #@6
    .line 52
    :cond_0
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 53
    const-string/jumbo v6, "count"

    #@c
    .line 54
    iget-object v7, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@e
    array-length v7, v7

    #@f
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    .line 53
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 55
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@19
    array-length v6, v6

    #@1a
    if-ge v0, v6, :cond_4

    #@1c
    .line 56
    const-string/jumbo v6, "cert"

    #@1f
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@22
    .line 57
    iget-object v6, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@24
    aget-object v4, v6, v0

    #@26
    .line 58
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    #@29
    move-result v5

    #@2a
    .line 59
    .local v5, "sigHash":I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v2

    #@2e
    .line 61
    .local v2, "numPast":I
    const/4 v1, 0x0

    #@2f
    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@31
    .line 62
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroid/content/pm/Signature;

    #@37
    .line 63
    .local v3, "pastSig":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    #@3a
    move-result v6

    #@3b
    if-ne v6, v5, :cond_3

    #@3d
    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 64
    const-string/jumbo v6, "index"

    #@46
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 68
    .end local v3    # "pastSig":Landroid/content/pm/Signature;
    :cond_1
    if-lt v1, v2, :cond_2

    #@4f
    .line 69
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 70
    const-string/jumbo v6, "index"

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5c
    .line 71
    const-string/jumbo v6, "key"

    #@5f
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@66
    .line 73
    :cond_2
    const-string/jumbo v6, "cert"

    #@69
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 55
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 61
    .restart local v3    # "pastSig":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_1

    #@72
    .line 75
    .end local v1    # "j":I
    .end local v2    # "numPast":I
    .end local v3    # "pastSig":Landroid/content/pm/Signature;
    .end local v4    # "sig":Landroid/content/pm/Signature;
    .end local v5    # "sigHash":I
    :cond_4
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@75
    .line 48
    return-void
.end method
