.class public Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoDumper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final NAF_EXCLUDED_CLASSES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 38
    const-class v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    #@8
    .line 39
    const/4 v0, 0x4

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    .line 40
    const-class v1, Landroid/widget/GridView;

    #@d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    const-class v1, Landroid/widget/GridLayout;

    #@16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 41
    const-class v1, Landroid/widget/ListView;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x2

    #@24
    aput-object v1, v0, v2

    #@26
    const-class v1, Landroid/widget/TableLayout;

    #@28
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    const/4 v2, 0x3

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 39
    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    #@31
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 196
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 197
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@6
    .local v2, "x":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@8
    .line 198
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@b
    move-result-object v1

    #@c
    .line 200
    .local v1, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 201
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 204
    invoke-static {v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 205
    return v4

    #@2f
    .line 202
    :cond_0
    return v4

    #@30
    .line 197
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 207
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    const/4 v3, 0x0

    #@34
    return v3
.end method

.method private static dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V
    .locals 10
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 103
    const-string/jumbo v3, ""

    #@5
    const-string/jumbo v4, "node"

    #@8
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 104
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 106
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    #@1a
    const-string/jumbo v4, "index"

    #@1d
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 107
    const-string/jumbo v3, ""

    #@27
    const-string/jumbo v4, "text"

    #@2a
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 108
    const-string/jumbo v3, ""

    #@38
    const-string/jumbo v4, "resource-id"

    #@3b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@46
    .line 109
    const-string/jumbo v3, ""

    #@49
    const-string/jumbo v4, "class"

    #@4c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 110
    const-string/jumbo v3, ""

    #@5a
    const-string/jumbo v4, "package"

    #@5d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@60
    move-result-object v5

    #@61
    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@68
    .line 111
    const-string/jumbo v3, ""

    #@6b
    const-string/jumbo v4, "content-desc"

    #@6e
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@71
    move-result-object v5

    #@72
    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@79
    .line 112
    const-string/jumbo v3, ""

    #@7c
    const-string/jumbo v4, "checkable"

    #@7f
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    #@82
    move-result v5

    #@83
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8a
    .line 113
    const-string/jumbo v3, ""

    #@8d
    const-string/jumbo v4, "checked"

    #@90
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    #@93
    move-result v5

    #@94
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9b
    .line 114
    const-string/jumbo v3, ""

    #@9e
    const-string/jumbo v4, "clickable"

    #@a1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    #@a4
    move-result v5

    #@a5
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ac
    .line 115
    const-string/jumbo v3, ""

    #@af
    const-string/jumbo v4, "enabled"

    #@b2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    #@b5
    move-result v5

    #@b6
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bd
    .line 116
    const-string/jumbo v3, ""

    #@c0
    const-string/jumbo v4, "focusable"

    #@c3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    #@c6
    move-result v5

    #@c7
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 117
    const-string/jumbo v3, ""

    #@d1
    const-string/jumbo v4, "focused"

    #@d4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@d7
    move-result v5

    #@d8
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@db
    move-result-object v5

    #@dc
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@df
    .line 118
    const-string/jumbo v3, ""

    #@e2
    const-string/jumbo v4, "scrollable"

    #@e5
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    #@e8
    move-result v5

    #@e9
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@ec
    move-result-object v5

    #@ed
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f0
    .line 119
    const-string/jumbo v3, ""

    #@f3
    const-string/jumbo v4, "long-clickable"

    #@f6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    #@f9
    move-result v5

    #@fa
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@fd
    move-result-object v5

    #@fe
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@101
    .line 120
    const-string/jumbo v3, ""

    #@104
    const-string/jumbo v4, "password"

    #@107
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    #@10a
    move-result v5

    #@10b
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@10e
    move-result-object v5

    #@10f
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@112
    .line 121
    const-string/jumbo v3, ""

    #@115
    const-string/jumbo v4, "selected"

    #@118
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    #@11b
    move-result v5

    #@11c
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@11f
    move-result-object v5

    #@120
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@123
    .line 122
    const-string/jumbo v3, ""

    #@126
    const-string/jumbo v4, "bounds"

    #@129
    invoke-static {p0, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    #@12c
    move-result-object v5

    #@12d
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@130
    move-result-object v5

    #@131
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@134
    .line 124
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@137
    move-result v1

    #@138
    .line 125
    .local v1, "count":I
    const/4 v2, 0x0

    #@139
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    #@13b
    .line 126
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@13e
    move-result-object v0

    #@13f
    .line 127
    .local v0, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_3

    #@141
    .line 128
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    #@144
    move-result v3

    #@145
    if-eqz v3, :cond_2

    #@147
    .line 129
    invoke-static {v0, p1, v2, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    #@14a
    .line 130
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@14d
    .line 125
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@14f
    goto :goto_1

    #@150
    .line 105
    .end local v0    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v3, ""

    #@153
    const-string/jumbo v4, "NAF"

    #@156
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@159
    move-result-object v5

    #@15a
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15d
    goto/16 :goto_0

    #@15f
    .line 132
    .restart local v0    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    sget-object v3, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    #@161
    const-string/jumbo v4, "Skipping invisible child: %s"

    #@164
    new-array v5, v8, [Ljava/lang/Object;

    #@166
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    #@169
    move-result-object v6

    #@16a
    aput-object v6, v5, v9

    #@16c
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16f
    move-result-object v4

    #@170
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@173
    goto :goto_2

    #@174
    .line 135
    :cond_3
    sget-object v3, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    #@176
    const-string/jumbo v4, "Null child %d/%d, parent: %s"

    #@179
    const/4 v5, 0x3

    #@17a
    new-array v5, v5, [Ljava/lang/Object;

    #@17c
    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17f
    move-result-object v6

    #@180
    aput-object v6, v5, v9

    #@182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@185
    move-result-object v6

    #@186
    aput-object v6, v5, v8

    #@188
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    #@18b
    move-result-object v6

    #@18c
    const/4 v7, 0x2

    #@18d
    aput-object v6, v5, v7

    #@18f
    .line 135
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@192
    move-result-object v4

    #@193
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@196
    goto :goto_2

    #@197
    .line 139
    .end local v0    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    const-string/jumbo v3, ""

    #@19a
    const-string/jumbo v4, "node"

    #@19d
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a0
    .line 102
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;III)V
    .locals 5
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 54
    new-instance v0, Ljava/io/File;

    #@4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "local"

    #@b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    .line 55
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@17
    .line 57
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    #@1a
    .line 58
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    #@1d
    .line 59
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    #@20
    .line 62
    :cond_0
    new-instance v1, Ljava/io/File;

    #@22
    new-instance v2, Ljava/io/File;

    #@24
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, "local"

    #@2b
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2e
    const-string/jumbo v3, "window_dump.xml"

    #@31
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@34
    .line 61
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    #@37
    .line 53
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    .locals 14
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "dumpFile"    # Ljava/io/File;
    .param p2, "rotation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 77
    if-nez p0, :cond_0

    #@2
    .line 78
    return-void

    #@3
    .line 80
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v6

    #@7
    .line 82
    .local v6, "startTime":J
    :try_start_0
    new-instance v9, Ljava/io/FileWriter;

    #@9
    invoke-direct {v9, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #@c
    .line 83
    .local v9, "writer":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@f
    move-result-object v3

    #@10
    .line 84
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    #@12
    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    #@15
    .line 85
    .local v8, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    #@18
    .line 86
    const-string/jumbo v10, "UTF-8"

    #@1b
    const/4 v11, 0x1

    #@1c
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v11

    #@20
    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@23
    .line 87
    const-string/jumbo v10, ""

    #@26
    const-string/jumbo v11, "hierarchy"

    #@29
    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c
    .line 88
    const-string/jumbo v10, ""

    #@2f
    const-string/jumbo v11, "rotation"

    #@32
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@35
    move-result-object v12

    #@36
    invoke-interface {v3, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 89
    const/4 v10, 0x0

    #@3a
    move/from16 v0, p3

    #@3c
    move/from16 v1, p4

    #@3e
    invoke-static {p0, v3, v10, v0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    #@41
    .line 90
    const-string/jumbo v10, ""

    #@44
    const-string/jumbo v11, "hierarchy"

    #@47
    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 91
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@4d
    .line 92
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    #@54
    .line 93
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 97
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "stringWriter":Ljava/io/StringWriter;
    .end local v9    # "writer":Ljava/io/FileWriter;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5a
    move-result-wide v4

    #@5b
    .line 98
    .local v4, "endTime":J
    sget-object v10, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    #@5d
    new-instance v11, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v12, "Fetch time: "

    #@65
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v11

    #@69
    sub-long v12, v4, v6

    #@6b
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v11

    #@6f
    const-string/jumbo v12, "ms"

    #@72
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 76
    return-void

    #@7e
    .line 94
    .end local v4    # "endTime":J
    :catch_0
    move-exception v2

    #@7f
    .line 95
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    #@81
    const-string/jumbo v11, "failed to dump window to file"

    #@84
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@87
    goto :goto_0
.end method

.method private static nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 171
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v1

    #@18
    .line 170
    if-eqz v1, :cond_0

    #@1a
    .line 172
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v0

    #@26
    .line 174
    :goto_0
    if-nez v0, :cond_1

    #@28
    .line 175
    const/4 v1, 0x1

    #@29
    return v1

    #@2a
    .line 170
    :cond_0
    const/4 v0, 0x0

    #@2b
    .local v0, "isNaf":Z
    goto :goto_0

    #@2c
    .line 180
    .end local v0    # "isNaf":Z
    :cond_1
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method private static nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 7
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    #@4
    move-result-object v2

    #@5
    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 152
    .local v0, "className":Ljava/lang/String;
    sget-object v4, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    #@b
    array-length v5, v4

    #@c
    move v2, v3

    #@d
    :goto_0
    if-ge v2, v5, :cond_1

    #@f
    aget-object v1, v4, v2

    #@11
    .line 153
    .local v1, "excludedClassName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 154
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 156
    .end local v1    # "excludedClassName":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private static safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 211
    if-nez p0, :cond_0

    #@2
    .line 212
    const-string/jumbo v0, ""

    #@5
    return-object v0

    #@6
    .line 214
    :cond_0
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private static stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 230
    .local v2, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_17

    #@c
    .line 231
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 233
    .local v0, "ch":C
    const/4 v3, 0x1

    #@11
    if-lt v0, v3, :cond_1

    #@13
    const/16 v3, 0x8

    #@15
    if-gt v0, v3, :cond_1

    #@17
    .line 244
    :cond_0
    const-string/jumbo v3, "."

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 230
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 233
    :cond_1
    const/16 v3, 0xb

    #@22
    if-lt v0, v3, :cond_2

    #@24
    const/16 v3, 0xc

    #@26
    if-le v0, v3, :cond_0

    #@28
    :cond_2
    const/16 v3, 0xe

    #@2a
    if-lt v0, v3, :cond_3

    #@2c
    const/16 v3, 0x1f

    #@2e
    if-le v0, v3, :cond_0

    #@30
    .line 234
    :cond_3
    const/16 v3, 0x7f

    #@32
    if-lt v0, v3, :cond_4

    #@34
    const/16 v3, 0x84

    #@36
    if-le v0, v3, :cond_0

    #@38
    :cond_4
    const/16 v3, 0x86

    #@3a
    if-lt v0, v3, :cond_5

    #@3c
    const/16 v3, 0x9f

    #@3e
    if-le v0, v3, :cond_0

    #@40
    .line 235
    :cond_5
    const v3, 0xfdd0

    #@43
    if-lt v0, v3, :cond_6

    #@45
    const v3, 0xfddf

    #@48
    if-le v0, v3, :cond_0

    #@4a
    :cond_6
    const v3, 0x1fffe

    #@4d
    if-lt v0, v3, :cond_7

    #@4f
    const v3, 0x1ffff

    #@52
    if-le v0, v3, :cond_0

    #@54
    .line 236
    :cond_7
    const v3, 0x2fffe

    #@57
    if-lt v0, v3, :cond_8

    #@59
    const v3, 0x2ffff

    #@5c
    if-le v0, v3, :cond_0

    #@5e
    :cond_8
    const v3, 0x3fffe

    #@61
    if-lt v0, v3, :cond_9

    #@63
    const v3, 0x3ffff

    #@66
    if-le v0, v3, :cond_0

    #@68
    .line 237
    :cond_9
    const v3, 0x4fffe

    #@6b
    if-lt v0, v3, :cond_a

    #@6d
    const v3, 0x4ffff

    #@70
    if-le v0, v3, :cond_0

    #@72
    :cond_a
    const v3, 0x5fffe

    #@75
    if-lt v0, v3, :cond_b

    #@77
    const v3, 0x5ffff

    #@7a
    if-le v0, v3, :cond_0

    #@7c
    .line 238
    :cond_b
    const v3, 0x6fffe

    #@7f
    if-lt v0, v3, :cond_c

    #@81
    const v3, 0x6ffff

    #@84
    if-le v0, v3, :cond_0

    #@86
    :cond_c
    const v3, 0x7fffe

    #@89
    if-lt v0, v3, :cond_d

    #@8b
    const v3, 0x7ffff

    #@8e
    if-le v0, v3, :cond_0

    #@90
    .line 239
    :cond_d
    const v3, 0x8fffe

    #@93
    if-lt v0, v3, :cond_e

    #@95
    const v3, 0x8ffff

    #@98
    if-le v0, v3, :cond_0

    #@9a
    :cond_e
    const v3, 0x9fffe

    #@9d
    if-lt v0, v3, :cond_f

    #@9f
    const v3, 0x9ffff

    #@a2
    if-le v0, v3, :cond_0

    #@a4
    .line 240
    :cond_f
    const v3, 0xafffe

    #@a7
    if-lt v0, v3, :cond_10

    #@a9
    const v3, 0xaffff

    #@ac
    if-le v0, v3, :cond_0

    #@ae
    :cond_10
    const v3, 0xbfffe

    #@b1
    if-lt v0, v3, :cond_11

    #@b3
    const v3, 0xbffff

    #@b6
    if-le v0, v3, :cond_0

    #@b8
    .line 241
    :cond_11
    const v3, 0xcfffe

    #@bb
    if-lt v0, v3, :cond_12

    #@bd
    const v3, 0xcffff

    #@c0
    if-le v0, v3, :cond_0

    #@c2
    :cond_12
    const v3, 0xdfffe

    #@c5
    if-lt v0, v3, :cond_13

    #@c7
    const v3, 0xdffff

    #@ca
    if-le v0, v3, :cond_0

    #@cc
    .line 242
    :cond_13
    const v3, 0xefffe

    #@cf
    if-lt v0, v3, :cond_14

    #@d1
    const v3, 0xeffff

    #@d4
    if-le v0, v3, :cond_0

    #@d6
    :cond_14
    const v3, 0xffffe

    #@d9
    if-lt v0, v3, :cond_15

    #@db
    const v3, 0xfffff

    #@de
    if-le v0, v3, :cond_0

    #@e0
    .line 243
    :cond_15
    const v3, 0x10fffe

    #@e3
    if-lt v0, v3, :cond_16

    #@e5
    const v3, 0x10ffff

    #@e8
    if-le v0, v3, :cond_0

    #@ea
    .line 246
    :cond_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@ed
    goto/16 :goto_1

    #@ef
    .line 248
    .end local v0    # "ch":C
    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    return-object v3
.end method
