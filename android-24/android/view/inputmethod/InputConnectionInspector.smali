.class public final Landroid/view/inputmethod/InputConnectionInspector;
.super Ljava/lang/Object;
.source "InputConnectionInspector.java"


# static fields
.field private static final sMissingMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@5
    .line 83
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    #@b
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .locals 2
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    if-nez p0, :cond_0

    #@3
    .line 89
    return v1

    #@4
    .line 92
    :cond_0
    instance-of v0, p0, Landroid/view/inputmethod/BaseInputConnection;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 93
    return v1

    #@9
    .line 96
    :cond_1
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 97
    check-cast p0, Landroid/view/inputmethod/InputConnectionWrapper;

    #@f
    .end local p0    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 99
    .restart local p0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 200
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@6
    .line 201
    .local v0, "isEmpty":Z
    and-int/lit8 v2, p0, 0x1

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 202
    const-string/jumbo v2, "getSelectedText(int)"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 203
    const/4 v0, 0x0

    #@11
    .line 205
    :cond_0
    and-int/lit8 v2, p0, 0x2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 206
    if-nez v0, :cond_1

    #@17
    .line 207
    const-string/jumbo v2, ","

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 209
    :cond_1
    const-string/jumbo v2, "setComposingRegion(int, int)"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 210
    const/4 v0, 0x0

    #@24
    .line 212
    :cond_2
    and-int/lit8 v2, p0, 0x4

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 213
    if-nez v0, :cond_3

    #@2a
    .line 214
    const-string/jumbo v2, ","

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 216
    :cond_3
    const-string/jumbo v2, "commitCorrection(CorrectionInfo)"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 217
    const/4 v0, 0x0

    #@37
    .line 219
    :cond_4
    and-int/lit8 v2, p0, 0x8

    #@39
    if-eqz v2, :cond_6

    #@3b
    .line 220
    if-nez v0, :cond_5

    #@3d
    .line 221
    const-string/jumbo v2, ","

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 223
    :cond_5
    const-string/jumbo v2, "requestCursorUpdate(int)"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 224
    const/4 v0, 0x0

    #@4a
    .line 226
    :cond_6
    and-int/lit8 v2, p0, 0x10

    #@4c
    if-eqz v2, :cond_8

    #@4e
    .line 227
    if-nez v0, :cond_7

    #@50
    .line 228
    const-string/jumbo v2, ","

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 230
    :cond_7
    const-string/jumbo v2, "deleteSurroundingTextInCodePoints(int, int)"

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 231
    const/4 v0, 0x0

    #@5d
    .line 233
    :cond_8
    and-int/lit8 v2, p0, 0x20

    #@5f
    if-eqz v2, :cond_a

    #@61
    .line 234
    if-nez v0, :cond_9

    #@63
    .line 235
    const-string/jumbo v2, ","

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 237
    :cond_9
    const-string/jumbo v2, "getHandler()"

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 239
    :cond_a
    and-int/lit8 v2, p0, 0x40

    #@71
    if-eqz v2, :cond_c

    #@73
    .line 240
    if-nez v0, :cond_b

    #@75
    .line 241
    const-string/jumbo v2, ","

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 243
    :cond_b
    const-string/jumbo v2, "closeConnection()"

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 245
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    return-object v2
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 104
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    #@2
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 105
    .local v0, "cachedFlags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 108
    :cond_0
    const/4 v1, 0x0

    #@10
    .line 109
    .local v1, "flags":I
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 110
    const/4 v1, 0x1

    #@17
    .line 112
    :cond_1
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 113
    or-int/lit8 v1, v1, 0x2

    #@1f
    .line 115
    :cond_2
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_3

    #@25
    .line 116
    or-int/lit8 v1, v1, 0x4

    #@27
    .line 118
    :cond_3
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_4

    #@2d
    .line 119
    or-int/lit8 v1, v1, 0x8

    #@2f
    .line 121
    :cond_4
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_5

    #@35
    .line 122
    or-int/lit8 v1, v1, 0x10

    #@37
    .line 124
    :cond_5
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_6

    #@3d
    .line 125
    or-int/lit8 v1, v1, 0x20

    #@3f
    .line 127
    :cond_6
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    #@42
    move-result v2

    #@43
    if-nez v2, :cond_7

    #@45
    .line 128
    or-int/lit8 v1, v1, 0x40

    #@47
    .line 130
    :cond_7
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v3

    #@4d
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 131
    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 191
    :try_start_0
    const-string/jumbo v3, "closeConnection"

    #@4
    const/4 v4, 0x0

    #@5
    new-array v4, v4, [Ljava/lang/Class;

    #@7
    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a
    move-result-object v1

    #@b
    .line 192
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@e
    move-result v3

    #@f
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    :goto_0
    return v2

    #@16
    :cond_0
    const/4 v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 193
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@19
    .line 194
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 154
    :try_start_0
    const-string/jumbo v4, "commitCorrection"

    #@5
    const/4 v5, 0x1

    #@6
    new-array v5, v5, [Ljava/lang/Class;

    #@8
    const-class v6, Landroid/view/inputmethod/CorrectionInfo;

    #@a
    const/4 v7, 0x0

    #@b
    aput-object v6, v5, v7

    #@d
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@10
    move-result-object v1

    #@11
    .line 155
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    :goto_0
    return v2

    #@1c
    :cond_0
    move v2, v3

    #@1d
    goto :goto_0

    #@1e
    .line 156
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@1f
    .line 157
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 172
    :try_start_0
    const-string/jumbo v4, "deleteSurroundingTextInCodePoints"

    #@5
    const/4 v5, 0x2

    #@6
    new-array v5, v5, [Ljava/lang/Class;

    #@8
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    const/4 v7, 0x0

    #@b
    aput-object v6, v5, v7

    #@d
    .line 173
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f
    const/4 v7, 0x1

    #@10
    aput-object v6, v5, v7

    #@12
    .line 172
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v1

    #@16
    .line 174
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@19
    move-result v4

    #@1a
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    :goto_0
    return v2

    #@21
    :cond_0
    move v2, v3

    #@22
    goto :goto_0

    #@23
    .line 175
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@24
    .line 176
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 182
    :try_start_0
    const-string/jumbo v3, "getHandler"

    #@4
    const/4 v4, 0x0

    #@5
    new-array v4, v4, [Ljava/lang/Class;

    #@7
    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a
    move-result-object v1

    #@b
    .line 183
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@e
    move-result v3

    #@f
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    :goto_0
    return v2

    #@16
    :cond_0
    const/4 v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 184
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@19
    .line 185
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 136
    :try_start_0
    const-string/jumbo v4, "getSelectedText"

    #@5
    const/4 v5, 0x1

    #@6
    new-array v5, v5, [Ljava/lang/Class;

    #@8
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    const/4 v7, 0x0

    #@b
    aput-object v6, v5, v7

    #@d
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@10
    move-result-object v1

    #@11
    .line 137
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    :goto_0
    return v2

    #@1c
    :cond_0
    move v2, v3

    #@1d
    goto :goto_0

    #@1e
    .line 138
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@1f
    .line 139
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 163
    :try_start_0
    const-string/jumbo v4, "requestCursorUpdates"

    #@5
    const/4 v5, 0x1

    #@6
    new-array v5, v5, [Ljava/lang/Class;

    #@8
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    const/4 v7, 0x0

    #@b
    aput-object v6, v5, v7

    #@d
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@10
    move-result-object v1

    #@11
    .line 164
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    :goto_0
    return v2

    #@1c
    :cond_0
    move v2, v3

    #@1d
    goto :goto_0

    #@1e
    .line 165
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@1f
    .line 166
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 145
    :try_start_0
    const-string/jumbo v4, "setComposingRegion"

    #@5
    const/4 v5, 0x2

    #@6
    new-array v5, v5, [Ljava/lang/Class;

    #@8
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    const/4 v7, 0x0

    #@b
    aput-object v6, v5, v7

    #@d
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f
    const/4 v7, 0x1

    #@10
    aput-object v6, v5, v7

    #@12
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v1

    #@16
    .line 146
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@19
    move-result v4

    #@1a
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    :goto_0
    return v2

    #@21
    :cond_0
    move v2, v3

    #@22
    goto :goto_0

    #@23
    .line 147
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@24
    .line 148
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method
