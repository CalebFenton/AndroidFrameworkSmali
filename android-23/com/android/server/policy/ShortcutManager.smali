.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@a
    .line 56
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    #@c
    .line 57
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    #@f
    .line 55
    return-void
.end method

.method private loadShortcuts()V
    .locals 22

    #@0
    .prologue
    .line 96
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v19, v0

    #@6
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v11

    #@a
    .line 98
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    #@e
    move-object/from16 v19, v0

    #@10
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v19

    #@14
    .line 99
    const v20, 0x1110003

    #@17
    .line 98
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v14

    #@1b
    .line 100
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v19, "bookmarks"

    #@1e
    move-object/from16 v0, v19

    #@20
    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@23
    .line 103
    :goto_0
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@26
    .line 105
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@29
    move-result v19

    #@2a
    const/16 v20, 0x1

    #@2c
    move/from16 v0, v19

    #@2e
    move/from16 v1, v20

    #@30
    if-ne v0, v1, :cond_1

    #@32
    .line 95
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_1
    return-void

    #@33
    .line 109
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    const-string/jumbo v19, "bookmark"

    #@36
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v20

    #@3a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v19

    #@3e
    if-eqz v19, :cond_0

    #@40
    .line 113
    const-string/jumbo v19, "package"

    #@43
    const/16 v20, 0x0

    #@45
    move-object/from16 v0, v20

    #@47
    move-object/from16 v1, v19

    #@49
    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v12

    #@4d
    .line 114
    .local v12, "packageName":Ljava/lang/String;
    const-string/jumbo v19, "class"

    #@50
    const/16 v20, 0x0

    #@52
    move-object/from16 v0, v20

    #@54
    move-object/from16 v1, v19

    #@56
    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 115
    .local v3, "className":Ljava/lang/String;
    const-string/jumbo v19, "shortcut"

    #@5d
    const/16 v20, 0x0

    #@5f
    move-object/from16 v0, v20

    #@61
    move-object/from16 v1, v19

    #@63
    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v17

    #@67
    .line 116
    .local v17, "shortcutName":Ljava/lang/String;
    const-string/jumbo v19, "category"

    #@6a
    const/16 v20, 0x0

    #@6c
    move-object/from16 v0, v20

    #@6e
    move-object/from16 v1, v19

    #@70
    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    .line 118
    .local v2, "categoryName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@77
    move-result v19

    #@78
    if-eqz v19, :cond_2

    #@7a
    .line 119
    const-string/jumbo v19, "ShortcutManager"

    #@7d
    new-instance v20, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v21, "Unable to get shortcut for: "

    #@85
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v20

    #@89
    move-object/from16 v0, v20

    #@8b
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v20

    #@8f
    const-string/jumbo v21, "/"

    #@92
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v20

    #@96
    move-object/from16 v0, v20

    #@98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v20

    #@9c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v20

    #@a0
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@a3
    goto :goto_0

    #@a4
    .line 161
    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "shortcutName":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@a5
    .line 162
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v19, "ShortcutManager"

    #@a8
    const-string/jumbo v20, "Got exception parsing bookmarks."

    #@ab
    move-object/from16 v0, v19

    #@ad
    move-object/from16 v1, v20

    #@af
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b2
    goto :goto_1

    #@b3
    .line 123
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "categoryName":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "shortcutName":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    #@b5
    :try_start_1
    move-object/from16 v0, v17

    #@b7
    move/from16 v1, v19

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@bc
    move-result v16

    #@bd
    .line 127
    .local v16, "shortcutChar":I
    if-eqz v12, :cond_3

    #@bf
    if-eqz v3, :cond_3

    #@c1
    .line 128
    const/4 v9, 0x0

    #@c2
    .line 129
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@c4
    invoke-direct {v4, v12, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@c7
    .line 131
    .local v4, "componentName":Landroid/content/ComponentName;
    const/16 v19, 0x0

    #@c9
    :try_start_2
    move/from16 v0, v19

    #@cb
    invoke-virtual {v11, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@ce
    move-result-object v9

    #@cf
    .line 145
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    :goto_2
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    #@d1
    const-string/jumbo v19, "android.intent.action.MAIN"

    #@d4
    move-object/from16 v0, v19

    #@d6
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d9
    .line 146
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "android.intent.category.LAUNCHER"

    #@dc
    move-object/from16 v0, v19

    #@de
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e1
    .line 147
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e4
    .line 148
    invoke-virtual {v9, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@e7
    move-result-object v19

    #@e8
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@eb
    move-result-object v18

    #@ec
    .line 158
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .local v18, "title":Ljava/lang/String;
    :goto_3
    new-instance v15, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    #@ee
    move-object/from16 v0, v18

    #@f0
    invoke-direct {v15, v0, v10}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    #@f3
    .line 159
    .local v15, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@f7
    move-object/from16 v19, v0

    #@f9
    move-object/from16 v0, v19

    #@fb
    move/from16 v1, v16

    #@fd
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@100
    goto/16 :goto_0

    #@102
    .line 163
    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v16    # "shortcutChar":I
    .end local v17    # "shortcutName":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@103
    .line 164
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v19, "ShortcutManager"

    #@106
    const-string/jumbo v20, "Got exception parsing bookmarks."

    #@109
    move-object/from16 v0, v19

    #@10b
    move-object/from16 v1, v20

    #@10d
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@110
    goto/16 :goto_1

    #@112
    .line 132
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "categoryName":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "shortcutChar":I
    .restart local v17    # "shortcutName":Ljava/lang/String;
    :catch_2
    move-exception v5

    #@113
    .line 134
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v19, 0x1

    #@115
    :try_start_4
    move/from16 v0, v19

    #@117
    new-array v0, v0, [Ljava/lang/String;

    #@119
    move-object/from16 v19, v0

    #@11b
    const/16 v20, 0x0

    #@11d
    aput-object v12, v19, v20

    #@11f
    .line 133
    move-object/from16 v0, v19

    #@121
    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@124
    move-result-object v13

    #@125
    .line 135
    .local v13, "packages":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    #@127
    .end local v4    # "componentName":Landroid/content/ComponentName;
    const/16 v19, 0x0

    #@129
    aget-object v19, v13, v19

    #@12b
    move-object/from16 v0, v19

    #@12d
    invoke-direct {v4, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@130
    .line 137
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    const/16 v19, 0x0

    #@132
    :try_start_5
    move/from16 v0, v19

    #@134
    invoke-virtual {v11, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@137
    move-result-object v9

    #@138
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_2

    #@139
    .line 138
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    :catch_3
    move-exception v8

    #@13a
    .line 139
    .local v8, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v19, "ShortcutManager"

    #@13d
    new-instance v20, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v21, "Unable to add bookmark: "

    #@145
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v20

    #@149
    move-object/from16 v0, v20

    #@14b
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v20

    #@14f
    .line 140
    const-string/jumbo v21, "/"

    #@152
    .line 139
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v20

    #@156
    move-object/from16 v0, v20

    #@158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v20

    #@15c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v20

    #@160
    move-object/from16 v0, v19

    #@162
    move-object/from16 v1, v20

    #@164
    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@167
    goto/16 :goto_0

    #@169
    .line 149
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v13    # "packages":[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    #@16b
    .line 150
    const-string/jumbo v19, "android.intent.action.MAIN"

    #@16e
    move-object/from16 v0, v19

    #@170
    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@173
    move-result-object v10

    #@174
    .line 151
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, ""

    #@177
    .restart local v18    # "title":Ljava/lang/String;
    goto/16 :goto_3

    #@179
    .line 153
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/String;
    :cond_4
    const-string/jumbo v19, "ShortcutManager"

    #@17c
    new-instance v20, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v21, "Unable to add bookmark for shortcut "

    #@184
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v20

    #@188
    move-object/from16 v0, v20

    #@18a
    move-object/from16 v1, v17

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v20

    #@190
    .line 154
    const-string/jumbo v21, ": missing package/class or category attributes"

    #@193
    .line 153
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v20

    #@197
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v20

    #@19b
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@19e
    goto/16 :goto_0
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 4
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    const/4 v0, 0x0

    #@2
    .line 79
    .local v0, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    #@5
    move-result v1

    #@6
    .line 80
    .local v1, "shortcutChar":I
    if-eqz v1, :cond_0

    #@8
    .line 81
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .end local v0    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    #@10
    .line 85
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    #@15
    move-result v3

    #@16
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    #@19
    move-result v1

    #@1a
    .line 87
    if-eqz v1, :cond_1

    #@1c
    .line 88
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    #@24
    .line 92
    :cond_1
    if-eqz v0, :cond_2

    #@26
    iget-object v2, v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    #@28
    :cond_2
    return-object v2
.end method
