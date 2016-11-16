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

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@a
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    #@11
    .line 61
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    #@13
    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    #@16
    .line 60
    return-void
.end method

.method private loadShortcuts()V
    .locals 25

    #@0
    .prologue
    .line 105
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v22, v0

    #@6
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v13

    #@a
    .line 107
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    #@e
    move-object/from16 v22, v0

    #@10
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v22

    #@14
    .line 108
    const v23, 0x1110003

    #@17
    .line 107
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v16

    #@1b
    .line 109
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v22, "bookmarks"

    #@1e
    move-object/from16 v0, v16

    #@20
    move-object/from16 v1, v22

    #@22
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@25
    .line 112
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@28
    .line 114
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@2b
    move-result v22

    #@2c
    const/16 v23, 0x1

    #@2e
    move/from16 v0, v22

    #@30
    move/from16 v1, v23

    #@32
    if-ne v0, v1, :cond_1

    #@34
    .line 104
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_1
    return-void

    #@35
    .line 118
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    const-string/jumbo v22, "bookmark"

    #@38
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@3b
    move-result-object v23

    #@3c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v22

    #@40
    if-eqz v22, :cond_0

    #@42
    .line 122
    const-string/jumbo v22, "package"

    #@45
    const/16 v23, 0x0

    #@47
    move-object/from16 v0, v16

    #@49
    move-object/from16 v1, v23

    #@4b
    move-object/from16 v2, v22

    #@4d
    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v14

    #@51
    .line 123
    .local v14, "packageName":Ljava/lang/String;
    const-string/jumbo v22, "class"

    #@54
    const/16 v23, 0x0

    #@56
    move-object/from16 v0, v16

    #@58
    move-object/from16 v1, v23

    #@5a
    move-object/from16 v2, v22

    #@5c
    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 124
    .local v4, "className":Ljava/lang/String;
    const-string/jumbo v22, "shortcut"

    #@63
    const/16 v23, 0x0

    #@65
    move-object/from16 v0, v16

    #@67
    move-object/from16 v1, v23

    #@69
    move-object/from16 v2, v22

    #@6b
    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v20

    #@6f
    .line 125
    .local v20, "shortcutName":Ljava/lang/String;
    const-string/jumbo v22, "category"

    #@72
    const/16 v23, 0x0

    #@74
    move-object/from16 v0, v16

    #@76
    move-object/from16 v1, v23

    #@78
    move-object/from16 v2, v22

    #@7a
    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    .line 126
    .local v3, "categoryName":Ljava/lang/String;
    const-string/jumbo v22, "shift"

    #@81
    const/16 v23, 0x0

    #@83
    move-object/from16 v0, v16

    #@85
    move-object/from16 v1, v23

    #@87
    move-object/from16 v2, v22

    #@89
    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v17

    #@8d
    .line 128
    .local v17, "shiftName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@90
    move-result v22

    #@91
    if-eqz v22, :cond_2

    #@93
    .line 129
    const-string/jumbo v22, "ShortcutManager"

    #@96
    new-instance v23, Ljava/lang/StringBuilder;

    #@98
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v24, "Unable to get shortcut for: "

    #@9e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v23

    #@a2
    move-object/from16 v0, v23

    #@a4
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v23

    #@a8
    const-string/jumbo v24, "/"

    #@ab
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v23

    #@af
    move-object/from16 v0, v23

    #@b1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v23

    #@b5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v23

    #@b9
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@bc
    goto/16 :goto_0

    #@be
    .line 182
    .end local v3    # "categoryName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "shiftName":Ljava/lang/String;
    .end local v20    # "shortcutName":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@bf
    .line 183
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v22, "ShortcutManager"

    #@c2
    const-string/jumbo v23, "Got exception parsing bookmarks."

    #@c5
    move-object/from16 v0, v22

    #@c7
    move-object/from16 v1, v23

    #@c9
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cc
    goto/16 :goto_1

    #@ce
    .line 133
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "categoryName":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "shiftName":Ljava/lang/String;
    .restart local v20    # "shortcutName":Ljava/lang/String;
    :cond_2
    const/16 v22, 0x0

    #@d0
    :try_start_1
    move-object/from16 v0, v20

    #@d2
    move/from16 v1, v22

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@d7
    move-result v19

    #@d8
    .line 134
    .local v19, "shortcutChar":I
    if-eqz v17, :cond_3

    #@da
    const-string/jumbo v22, "true"

    #@dd
    move-object/from16 v0, v17

    #@df
    move-object/from16 v1, v22

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v12

    #@e5
    .line 138
    :goto_2
    if-eqz v14, :cond_4

    #@e7
    if-eqz v4, :cond_4

    #@e9
    .line 139
    const/4 v10, 0x0

    #@ea
    .line 140
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    #@ec
    invoke-direct {v5, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@ef
    .line 143
    .local v5, "componentName":Landroid/content/ComponentName;
    const v22, 0xc2000

    #@f2
    .line 142
    :try_start_2
    move/from16 v0, v22

    #@f4
    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@f7
    move-result-object v10

    #@f8
    .line 162
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    #@fa
    const-string/jumbo v22, "android.intent.action.MAIN"

    #@fd
    move-object/from16 v0, v22

    #@ff
    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@102
    .line 163
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "android.intent.category.LAUNCHER"

    #@105
    move-object/from16 v0, v22

    #@107
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@10a
    .line 164
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@10d
    .line 165
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@110
    move-result-object v22

    #@111
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@114
    move-result-object v21

    #@115
    .line 175
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v21, "title":Ljava/lang/String;
    :goto_4
    new-instance v18, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    #@117
    move-object/from16 v0, v18

    #@119
    move-object/from16 v1, v21

    #@11b
    invoke-direct {v0, v1, v11}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    #@11e
    .line 176
    .local v18, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    if-eqz v12, :cond_6

    #@120
    .line 177
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    #@124
    move-object/from16 v22, v0

    #@126
    move-object/from16 v0, v22

    #@128
    move/from16 v1, v19

    #@12a
    move-object/from16 v2, v18

    #@12c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@12f
    goto/16 :goto_0

    #@131
    .line 184
    .end local v3    # "categoryName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "shiftName":Ljava/lang/String;
    .end local v18    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v19    # "shortcutChar":I
    .end local v20    # "shortcutName":Ljava/lang/String;
    .end local v21    # "title":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@132
    .line 185
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v22, "ShortcutManager"

    #@135
    const-string/jumbo v23, "Got exception parsing bookmarks."

    #@138
    move-object/from16 v0, v22

    #@13a
    move-object/from16 v1, v23

    #@13c
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13f
    goto/16 :goto_1

    #@141
    .line 134
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "categoryName":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "shiftName":Ljava/lang/String;
    .restart local v19    # "shortcutChar":I
    .restart local v20    # "shortcutName":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    #@142
    .local v12, "isShiftShortcut":Z
    goto :goto_2

    #@143
    .line 146
    .end local v12    # "isShiftShortcut":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :catch_2
    move-exception v6

    #@144
    .line 148
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    #@146
    :try_start_4
    move/from16 v0, v22

    #@148
    new-array v0, v0, [Ljava/lang/String;

    #@14a
    move-object/from16 v22, v0

    #@14c
    const/16 v23, 0x0

    #@14e
    aput-object v14, v22, v23

    #@150
    .line 147
    move-object/from16 v0, v22

    #@152
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@155
    move-result-object v15

    #@156
    .line 149
    .local v15, "packages":[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    #@158
    .end local v5    # "componentName":Landroid/content/ComponentName;
    const/16 v22, 0x0

    #@15a
    aget-object v22, v15, v22

    #@15c
    move-object/from16 v0, v22

    #@15e
    invoke-direct {v5, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@161
    .line 152
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    const v22, 0xc2000

    #@164
    .line 151
    :try_start_5
    move/from16 v0, v22

    #@166
    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@169
    move-result-object v10

    #@16a
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_3

    #@16b
    .line 155
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :catch_3
    move-exception v9

    #@16c
    .line 156
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v22, "ShortcutManager"

    #@16f
    new-instance v23, Ljava/lang/StringBuilder;

    #@171
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v24, "Unable to add bookmark: "

    #@177
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v23

    #@17b
    move-object/from16 v0, v23

    #@17d
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v23

    #@181
    .line 157
    const-string/jumbo v24, "/"

    #@184
    .line 156
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v23

    #@188
    move-object/from16 v0, v23

    #@18a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v23

    #@18e
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v23

    #@192
    move-object/from16 v0, v22

    #@194
    move-object/from16 v1, v23

    #@196
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@199
    goto/16 :goto_0

    #@19b
    .line 166
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v15    # "packages":[Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    #@19d
    .line 167
    const-string/jumbo v22, "android.intent.action.MAIN"

    #@1a0
    move-object/from16 v0, v22

    #@1a2
    invoke-static {v0, v3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1a5
    move-result-object v11

    #@1a6
    .line 168
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, ""

    #@1a9
    .restart local v21    # "title":Ljava/lang/String;
    goto/16 :goto_4

    #@1ab
    .line 170
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v21    # "title":Ljava/lang/String;
    :cond_5
    const-string/jumbo v22, "ShortcutManager"

    #@1ae
    new-instance v23, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v24, "Unable to add bookmark for shortcut "

    #@1b6
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v23

    #@1ba
    move-object/from16 v0, v23

    #@1bc
    move-object/from16 v1, v20

    #@1be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v23

    #@1c2
    .line 171
    const-string/jumbo v24, ": missing package/class or category attributes"

    #@1c5
    .line 170
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v23

    #@1c9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v23

    #@1cd
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 179
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v18    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .restart local v21    # "title":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@1d6
    move-object/from16 v22, v0

    #@1d8
    move-object/from16 v0, v22

    #@1da
    move/from16 v1, v19

    #@1dc
    move-object/from16 v2, v18

    #@1de
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@1e1
    goto/16 :goto_0
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 7
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 81
    const/4 v1, 0x0

    #@4
    .line 84
    .local v1, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    and-int/lit8 v6, p3, 0x1

    #@6
    if-ne v6, v0, :cond_3

    #@8
    .line 85
    .local v0, "isShiftOn":Z
    :goto_0
    if-eqz v0, :cond_4

    #@a
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    #@c
    .line 88
    .local v3, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    #@f
    move-result v2

    #@10
    .line 89
    .local v2, "shortcutChar":I
    if-eqz v2, :cond_0

    #@12
    .line 90
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    .end local v1    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    check-cast v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    #@18
    .line 94
    :cond_0
    if-nez v1, :cond_1

    #@1a
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    #@1d
    move-result v5

    #@1e
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    #@21
    move-result v2

    #@22
    .line 96
    if-eqz v2, :cond_1

    #@24
    .line 97
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    #@2a
    .line 101
    :cond_1
    if-eqz v1, :cond_2

    #@2c
    iget-object v4, v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    #@2e
    :cond_2
    return-object v4

    #@2f
    .end local v0    # "isShiftOn":Z
    .end local v2    # "shortcutChar":I
    .end local v3    # "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    .restart local v1    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    :cond_3
    move v0, v5

    #@30
    .line 84
    goto :goto_0

    #@31
    .line 85
    .restart local v0    # "isShiftOn":Z
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    #@33
    .restart local v3    # "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    goto :goto_1
.end method
