.class final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@a
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    #@d
    .line 57
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 93
    const/4 v7, 0x0

    #@1
    .line 95
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v9

    #@5
    const v10, 0x1110006

    #@8
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@b
    move-result-object v7

    #@c
    .line 96
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v9, "global_keys"

    #@f
    invoke-static {v7, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@12
    .line 97
    const-string/jumbo v9, "version"

    #@15
    const/4 v10, 0x0

    #@16
    const/4 v11, 0x0

    #@17
    invoke-interface {v7, v10, v9, v11}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@1a
    move-result v8

    #@1b
    .line 98
    .local v8, "version":I
    const/4 v9, 0x1

    #@1c
    if-ne v9, v8, :cond_1

    #@1e
    .line 100
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@21
    .line 101
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v4

    #@25
    .line 102
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_3

    #@27
    .line 123
    .end local v4    # "element":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    #@29
    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@2c
    .line 92
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "version":I
    :cond_2
    :goto_1
    return-void

    #@2d
    .line 105
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "version":I
    :cond_3
    :try_start_1
    const-string/jumbo v9, "key"

    #@30
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_0

    #@36
    .line 106
    const-string/jumbo v9, "keyCode"

    #@39
    const/4 v10, 0x0

    #@3a
    invoke-interface {v7, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    .line 107
    .local v6, "keyCodeName":Ljava/lang/String;
    const-string/jumbo v9, "component"

    #@41
    const/4 v10, 0x0

    #@42
    invoke-interface {v7, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 108
    .local v0, "componentName":Ljava/lang/String;
    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    #@49
    move-result v5

    #@4a
    .line 109
    .local v5, "keyCode":I
    if-eqz v5, :cond_0

    #@4c
    .line 110
    iget-object v9, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@4e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v9, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 116
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "keyCode":I
    .end local v6    # "keyCodeName":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "version":I
    :catch_0
    move-exception v1

    #@57
    .line 117
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string/jumbo v9, "GlobalKeyManager"

    #@5a
    const-string/jumbo v10, "global keys file not found"

    #@5d
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    .line 123
    if-eqz v7, :cond_2

    #@62
    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@65
    goto :goto_1

    #@66
    .line 120
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    #@67
    .line 121
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v9, "GlobalKeyManager"

    #@6a
    const-string/jumbo v10, "I/O exception reading global keys file"

    #@6d
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@70
    .line 123
    if-eqz v7, :cond_2

    #@72
    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@75
    goto :goto_1

    #@76
    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@77
    .line 119
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string/jumbo v9, "GlobalKeyManager"

    #@7a
    const-string/jumbo v10, "XML parser exception reading global keys file"

    #@7d
    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@80
    .line 123
    if-eqz v7, :cond_2

    #@82
    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@85
    goto :goto_1

    #@86
    .line 122
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    #@87
    .line 123
    if-eqz v7, :cond_4

    #@89
    .line 124
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@8c
    .line 122
    :cond_4
    throw v9
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    .line 131
    .local v1, "numKeys":I
    if-nez v1, :cond_0

    #@8
    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string/jumbo v2, "mKeyMapping.size=0"

    #@e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 133
    return-void

    #@12
    .line 135
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    const-string/jumbo v2, "mKeyMapping={"

    #@18
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 136
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1e
    .line 137
    const-string/jumbo v2, "  "

    #@21
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    .line 139
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2c
    move-result v2

    #@2d
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 140
    const-string/jumbo v2, "="

    #@37
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 141
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/content/ComponentName;

    #@42
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 143
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    const-string/jumbo v2, "}"

    #@52
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 129
    return-void
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 71
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v2

    #@8
    if-lez v2, :cond_0

    #@a
    .line 72
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/content/ComponentName;

    #@12
    .line 73
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@14
    .line 74
    new-instance v2, Landroid/content/Intent;

    #@16
    const-string/jumbo v3, "android.intent.action.GLOBAL_BUTTON"

    #@19
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1f
    move-result-object v2

    #@20
    .line 76
    const/high16 v3, 0x10000000

    #@22
    .line 74
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@25
    move-result-object v2

    #@26
    .line 77
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    #@29
    .line 74
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2c
    move-result-object v1

    #@2d
    .line 78
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@2f
    invoke-virtual {p1, v1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@32
    .line 79
    const/4 v2, 0x1

    #@33
    return v2

    #@34
    .line 82
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method

.method shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
