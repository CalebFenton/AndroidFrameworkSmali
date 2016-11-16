.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    #@6
    .line 63
    const/high16 v6, 0xfff0000

    #@8
    and-int/2addr v6, p2

    #@9
    iput v6, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    #@b
    .line 64
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    #@d
    .line 65
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    #@f
    .line 66
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    iput-object v6, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@15
    .line 67
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@17
    .line 68
    if-eqz p3, :cond_2

    #@19
    .line 69
    array-length v0, p3

    #@1a
    .line 70
    .local v0, "N":I
    new-array v5, v0, [Ljava/lang/String;

    #@1c
    .line 71
    .local v5, "myPackages":[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    #@1e
    .line 72
    .local v3, "myClasses":[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    #@20
    .line 73
    .local v4, "myComponents":[Ljava/lang/String;
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@23
    .line 74
    aget-object v1, p3, v2

    #@25
    .line 75
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    #@27
    .line 76
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@29
    .line 77
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@2b
    .line 78
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@2d
    .line 79
    return-void

    #@2e
    .line 81
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    aput-object v6, v5, v2

    #@38
    .line 82
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    aput-object v6, v3, v2

    #@42
    .line 83
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    aput-object v6, v4, v2

    #@48
    .line 73
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 85
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    iput-object v5, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@4d
    .line 86
    iput-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@4f
    .line 87
    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@51
    .line 61
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "myClasses":[Ljava/lang/String;
    .end local v4    # "myComponents":[Ljava/lang/String;
    .end local v5    # "myPackages":[Ljava/lang/String;
    :goto_1
    return-void

    #@52
    .line 89
    :cond_2
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@54
    .line 90
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@56
    .line 91
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@58
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    #@9
    .line 98
    const-string/jumbo v15, "name"

    #@c
    const/16 v16, 0x0

    #@e
    move-object/from16 v0, p2

    #@10
    move-object/from16 v1, v16

    #@12
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v15

    #@16
    move-object/from16 v0, p0

    #@18
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@1a
    .line 99
    move-object/from16 v0, p0

    #@1c
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@1e
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@21
    move-result-object v15

    #@22
    move-object/from16 v0, p0

    #@24
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    #@26
    .line 100
    move-object/from16 v0, p0

    #@28
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    #@2a
    if-nez v15, :cond_0

    #@2c
    .line 101
    new-instance v15, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v16, "Bad activity name "

    #@34
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v15

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@3c
    move-object/from16 v16, v0

    #@3e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v15

    #@42
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v15

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@4a
    .line 103
    :cond_0
    const-string/jumbo v15, "match"

    #@4d
    const/16 v16, 0x0

    #@4f
    move-object/from16 v0, p2

    #@51
    move-object/from16 v1, v16

    #@53
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 104
    .local v4, "matchStr":Ljava/lang/String;
    if-eqz v4, :cond_4

    #@59
    const/16 v15, 0x10

    #@5b
    invoke-static {v4, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5e
    move-result v15

    #@5f
    :goto_0
    move-object/from16 v0, p0

    #@61
    iput v15, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    #@63
    .line 105
    const-string/jumbo v15, "set"

    #@66
    const/16 v16, 0x0

    #@68
    move-object/from16 v0, p2

    #@6a
    move-object/from16 v1, v16

    #@6c
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    .line 106
    .local v11, "setCountStr":Ljava/lang/String;
    if-eqz v11, :cond_5

    #@72
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@75
    move-result v10

    #@76
    .line 107
    .local v10, "setCount":I
    :goto_1
    const-string/jumbo v15, "always"

    #@79
    const/16 v16, 0x0

    #@7b
    move-object/from16 v0, p2

    #@7d
    move-object/from16 v1, v16

    #@7f
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 108
    .local v2, "alwaysStr":Ljava/lang/String;
    if-eqz v2, :cond_6

    #@85
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@88
    move-result v15

    #@89
    :goto_2
    move-object/from16 v0, p0

    #@8b
    iput-boolean v15, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    #@8d
    .line 110
    if-lez v10, :cond_7

    #@8f
    new-array v7, v10, [Ljava/lang/String;

    #@91
    .line 111
    :goto_3
    if-lez v10, :cond_8

    #@93
    new-array v5, v10, [Ljava/lang/String;

    #@95
    .line 112
    :goto_4
    if-lez v10, :cond_9

    #@97
    new-array v6, v10, [Ljava/lang/String;

    #@99
    .line 114
    :goto_5
    const/4 v12, 0x0

    #@9a
    .line 116
    .local v12, "setPos":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9d
    move-result v9

    #@9e
    .line 118
    .local v9, "outerDepth":I
    :cond_1
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a1
    move-result v14

    #@a2
    .local v14, "type":I
    const/4 v15, 0x1

    #@a3
    if-eq v14, v15, :cond_e

    #@a5
    .line 119
    const/4 v15, 0x3

    #@a6
    if-ne v14, v15, :cond_2

    #@a8
    .line 120
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@ab
    move-result v15

    #@ac
    if-le v15, v9, :cond_e

    #@ae
    .line 121
    :cond_2
    const/4 v15, 0x3

    #@af
    if-eq v14, v15, :cond_1

    #@b1
    .line 122
    const/4 v15, 0x4

    #@b2
    if-eq v14, v15, :cond_1

    #@b4
    .line 126
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b7
    move-result-object v13

    #@b8
    .line 129
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "set"

    #@bb
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v15

    #@bf
    if-eqz v15, :cond_d

    #@c1
    .line 130
    const-string/jumbo v15, "name"

    #@c4
    const/16 v16, 0x0

    #@c6
    move-object/from16 v0, p2

    #@c8
    move-object/from16 v1, v16

    #@ca
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    .line 131
    .local v8, "name":Ljava/lang/String;
    if-nez v8, :cond_a

    #@d0
    .line 132
    move-object/from16 v0, p0

    #@d2
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@d4
    if-nez v15, :cond_3

    #@d6
    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v16, "No name in set tag in preferred activity "

    #@de
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v15

    #@e2
    .line 134
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@e6
    move-object/from16 v16, v0

    #@e8
    .line 133
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v15

    #@ec
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v15

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@f4
    .line 155
    :cond_3
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f7
    goto :goto_6

    #@f8
    .line 104
    .end local v2    # "alwaysStr":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v10    # "setCount":I
    .end local v11    # "setCountStr":Ljava/lang/String;
    .end local v12    # "setPos":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :cond_4
    const/4 v15, 0x0

    #@f9
    goto/16 :goto_0

    #@fb
    .line 106
    .restart local v11    # "setCountStr":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    #@fc
    .restart local v10    # "setCount":I
    goto/16 :goto_1

    #@fe
    .line 108
    .restart local v2    # "alwaysStr":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x1

    #@ff
    goto :goto_2

    #@100
    .line 110
    :cond_7
    const/4 v7, 0x0

    #@101
    .local v7, "myPackages":[Ljava/lang/String;
    goto :goto_3

    #@102
    .line 111
    .end local v7    # "myPackages":[Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    #@103
    .local v5, "myClasses":[Ljava/lang/String;
    goto :goto_4

    #@104
    .line 112
    .end local v5    # "myClasses":[Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    #@105
    .local v6, "myComponents":[Ljava/lang/String;
    goto :goto_5

    #@106
    .line 136
    .end local v6    # "myComponents":[Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v12    # "setPos":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_a
    if-lt v12, v10, :cond_b

    #@108
    .line 137
    move-object/from16 v0, p0

    #@10a
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@10c
    if-nez v15, :cond_3

    #@10e
    .line 138
    new-instance v15, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v16, "Too many set tags in preferred activity "

    #@116
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v15

    #@11a
    .line 139
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@11e
    move-object/from16 v16, v0

    #@120
    .line 138
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v15

    #@124
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v15

    #@128
    move-object/from16 v0, p0

    #@12a
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@12c
    goto :goto_7

    #@12d
    .line 142
    :cond_b
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@130
    move-result-object v3

    #@131
    .line 143
    .local v3, "cn":Landroid/content/ComponentName;
    if-nez v3, :cond_c

    #@133
    .line 144
    move-object/from16 v0, p0

    #@135
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@137
    if-nez v15, :cond_3

    #@139
    .line 145
    new-instance v15, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v16, "Bad set name "

    #@141
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v15

    #@145
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v15

    #@149
    const-string/jumbo v16, " in preferred activity "

    #@14c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v15

    #@150
    .line 146
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@154
    move-object/from16 v16, v0

    #@156
    .line 145
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v15

    #@15a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v15

    #@15e
    move-object/from16 v0, p0

    #@160
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@162
    goto :goto_7

    #@163
    .line 149
    :cond_c
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@166
    move-result-object v15

    #@167
    aput-object v15, v7, v12

    #@169
    .line 150
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@16c
    move-result-object v15

    #@16d
    aput-object v15, v5, v12

    #@16f
    .line 151
    aput-object v8, v6, v12

    #@171
    .line 152
    add-int/lit8 v12, v12, 0x1

    #@173
    goto :goto_7

    #@174
    .line 156
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v8    # "name":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@176
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-interface {v15, v13, v0}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    #@17d
    move-result v15

    #@17e
    if-nez v15, :cond_1

    #@180
    .line 157
    const-string/jumbo v15, "PreferredComponent"

    #@183
    new-instance v16, Ljava/lang/StringBuilder;

    #@185
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v17, "Unknown element: "

    #@18b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v16

    #@18f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@192
    move-result-object v17

    #@193
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v16

    #@197
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v16

    #@19b
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19e
    .line 158
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1a1
    goto/16 :goto_6

    #@1a3
    .line 162
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_e
    if-eq v12, v10, :cond_f

    #@1a5
    .line 163
    move-object/from16 v0, p0

    #@1a7
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@1a9
    if-nez v15, :cond_f

    #@1ab
    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    #@1ad
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1b0
    const-string/jumbo v16, "Not enough set tags (expected "

    #@1b3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v15

    #@1b7
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v15

    #@1bb
    .line 165
    const-string/jumbo v16, " but found "

    #@1be
    .line 164
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v15

    #@1c2
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v15

    #@1c6
    .line 165
    const-string/jumbo v16, ") in "

    #@1c9
    .line 164
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v15

    #@1cd
    .line 165
    move-object/from16 v0, p0

    #@1cf
    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@1d1
    move-object/from16 v16, v0

    #@1d3
    .line 164
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v15

    #@1d7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v15

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iput-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@1df
    .line 169
    :cond_f
    move-object/from16 v0, p0

    #@1e1
    iput-object v7, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@1e3
    .line 170
    move-object/from16 v0, p0

    #@1e5
    iput-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@1e7
    .line 171
    move-object/from16 v0, p0

    #@1e9
    iput-object v6, v0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@1eb
    .line 96
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ident"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 246
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 245
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 247
    const/16 v1, 0x20

    #@10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@13
    .line 248
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    const-string/jumbo v1, " mMatch=0x"

    #@1e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 250
    iget v1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    .line 251
    const-string/jumbo v1, " mAlways="

    #@2d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget-boolean v1, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    #@32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@35
    .line 252
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v1, "  Selected from:"

    #@3f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 254
    const/4 v0, 0x0

    #@43
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@45
    array-length v1, v1

    #@46
    if-ge v0, v1, :cond_0

    #@48
    .line 255
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    const-string/jumbo v1, "    "

    #@4e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 256
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@53
    aget-object v1, v1, v0

    #@55
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 254
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 244
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public sameSet(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 196
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@4
    if-nez v10, :cond_1

    #@6
    .line 197
    if-nez p1, :cond_0

    #@8
    :goto_0
    return v8

    #@9
    :cond_0
    move v8, v9

    #@a
    goto :goto_0

    #@b
    .line 199
    :cond_1
    if-nez p1, :cond_2

    #@d
    .line 200
    return v9

    #@e
    .line 202
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    .line 203
    .local v0, "NQ":I
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@14
    array-length v1, v10

    #@15
    .line 205
    .local v1, "NS":I
    const/4 v6, 0x0

    #@16
    .line 206
    .local v6, "numMatch":I
    const/4 v4, 0x0

    #@17
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_6

    #@19
    .line 207
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@1f
    .line 208
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    .line 209
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    #@22
    .line 210
    .local v3, "good":Z
    const/4 v5, 0x0

    #@23
    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_3

    #@25
    .line 211
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@27
    aget-object v10, v10, v5

    #@29
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2b
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v10

    #@2f
    if-eqz v10, :cond_4

    #@31
    .line 212
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@33
    aget-object v10, v10, v5

    #@35
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@37
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v10

    #@3b
    .line 211
    if-eqz v10, :cond_4

    #@3d
    .line 213
    add-int/lit8 v6, v6, 0x1

    #@3f
    .line 214
    const/4 v3, 0x1

    #@40
    .line 218
    :cond_3
    if-nez v3, :cond_5

    #@42
    return v9

    #@43
    .line 210
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@45
    goto :goto_2

    #@46
    .line 206
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_1

    #@49
    .line 220
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "good":Z
    .end local v5    # "j":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    if-ne v6, v1, :cond_7

    #@4b
    :goto_3
    return v8

    #@4c
    :cond_7
    move v8, v9

    #@4d
    goto :goto_3
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .locals 10
    .param p1, "comps"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 224
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@3
    if-nez v8, :cond_0

    #@5
    return v7

    #@6
    .line 225
    :cond_0
    array-length v0, p1

    #@7
    .line 226
    .local v0, "NQ":I
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@9
    array-length v1, v8

    #@a
    .line 227
    .local v1, "NS":I
    const/4 v6, 0x0

    #@b
    .line 228
    .local v6, "numMatch":I
    const/4 v4, 0x0

    #@c
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    #@e
    .line 229
    aget-object v2, p1, v4

    #@10
    .line 230
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v3, 0x0

    #@11
    .line 231
    .local v3, "good":Z
    const/4 v5, 0x0

    #@12
    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    #@14
    .line 232
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    #@16
    aget-object v8, v8, v5

    #@18
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_2

    #@22
    .line 233
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@24
    aget-object v8, v8, v5

    #@26
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v9

    #@2a
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v8

    #@2e
    .line 232
    if-eqz v8, :cond_2

    #@30
    .line 234
    add-int/lit8 v6, v6, 0x1

    #@32
    .line 235
    const/4 v3, 0x1

    #@33
    .line 239
    :cond_1
    if-nez v3, :cond_3

    #@35
    return v7

    #@36
    .line 231
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@38
    goto :goto_1

    #@39
    .line 228
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 241
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "good":Z
    .end local v5    # "j":I
    :cond_4
    if-ne v6, v1, :cond_5

    #@3e
    const/4 v7, 0x1

    #@3f
    :cond_5
    return v7
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 179
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@3
    if-eqz v2, :cond_1

    #@5
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    #@7
    array-length v0, v2

    #@8
    .line 180
    .local v0, "NS":I
    :goto_0
    const-string/jumbo v2, "name"

    #@b
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    #@d
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 181
    if-eqz p2, :cond_2

    #@12
    .line 182
    iget v2, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 183
    const-string/jumbo v2, "match"

    #@19
    iget v3, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    #@1b
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@22
    .line 185
    :cond_0
    const-string/jumbo v2, "always"

    #@25
    iget-boolean v3, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    #@27
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e
    .line 186
    const-string/jumbo v2, "set"

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@38
    .line 187
    const/4 v1, 0x0

    #@39
    .local v1, "s":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@3b
    .line 188
    const-string/jumbo v2, "set"

    #@3e
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 189
    const-string/jumbo v2, "name"

    #@44
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    #@46
    aget-object v3, v3, v1

    #@48
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b
    .line 190
    const-string/jumbo v2, "set"

    #@4e
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 187
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_1

    #@54
    .line 179
    .end local v0    # "NS":I
    .end local v1    # "s":I
    :cond_1
    const/4 v0, 0x0

    #@55
    .restart local v0    # "NS":I
    goto :goto_0

    #@56
    .line 178
    :cond_2
    return-void
.end method
