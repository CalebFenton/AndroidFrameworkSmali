.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/view/textservice/TextServicesManager;

.field private static sService:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 65
    const-class v0, Landroid/view/textservice/TextServicesManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@8
    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 73
    const-string/jumbo v1, "textservices"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 74
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@14
    .line 71
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 2

    #@0
    .prologue
    .line 83
    const-class v1, Landroid/view/textservice/TextServicesManager;

    #@2
    monitor-enter v1

    #@3
    .line 84
    :try_start_0
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 85
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Landroid/view/textservice/TextServicesManager;

    #@d
    invoke-direct {v0}, Landroid/view/textservice/TextServicesManager;-><init>()V

    #@10
    sput-object v0, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 89
    sget-object v0, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    #@15
    return-object v0

    #@16
    .line 83
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 96
    const/16 v1, 0x5f

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 97
    .local v0, "idx":I
    if-gez v0, :cond_0

    #@9
    .line 98
    return-object p0

    #@a
    .line 100
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 206
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 207
    :catch_0
    move-exception v0

    #@a
    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 5
    .param p1, "allowImplicitlySelectedSubtype"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 232
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 235
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@7
    const-string/jumbo v2, "sService is null."

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 236
    return-object v4

    #@e
    .line 239
    :cond_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-interface {v1, v2, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 240
    :catch_0
    move-exception v0

    #@17
    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Error in getCurrentSpellCheckerSubtype: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 242
    return-object v4
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 5

    #@0
    .prologue
    .line 189
    :try_start_0
    sget-object v2, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@2
    invoke-interface {v2}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 193
    .local v1, "retval":[Landroid/view/textservice/SpellCheckerInfo;
    return-object v1

    #@7
    .line 194
    .end local v1    # "retval":[Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v0

    #@8
    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Error in getEnabledSpellCheckers: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 196
    const/4 v2, 0x0

    #@22
    return-object v2
.end method

.method public isSpellCheckerEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 279
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@2
    invoke-interface {v1}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 280
    :catch_0
    move-exception v0

    #@8
    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Error in isSpellCheckerEnabled:"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 282
    const/4 v1, 0x0

    #@22
    return v1
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 18
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "referToSpellCheckerLanguageSettings"    # Z

    #@0
    .prologue
    .line 120
    if-nez p3, :cond_0

    #@2
    .line 121
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 123
    :cond_0
    if-nez p4, :cond_1

    #@a
    if-nez p2, :cond_1

    #@c
    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "Locale should not be null if you don\'t refer settings."

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 128
    :cond_1
    if-eqz p4, :cond_2

    #@17
    invoke-virtual/range {p0 .. p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 134
    :cond_2
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v10

    #@24
    .line 138
    .local v10, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v10, :cond_4

    #@26
    .line 139
    const/4 v1, 0x0

    #@27
    return-object v1

    #@28
    .line 129
    .end local v10    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    const/4 v1, 0x0

    #@29
    return-object v1

    #@2a
    .line 135
    :catch_0
    move-exception v7

    #@2b
    .line 136
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@2c
    return-object v1

    #@2d
    .line 141
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v10    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_4
    const/4 v13, 0x0

    #@2e
    .line 142
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz p4, :cond_8

    #@30
    .line 143
    const/4 v1, 0x1

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    #@36
    move-result-object v13

    #@37
    .line 144
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v13, :cond_5

    #@39
    .line 145
    const/4 v1, 0x0

    #@3a
    return-object v1

    #@3b
    .line 147
    :cond_5
    if-eqz p2, :cond_6

    #@3d
    .line 148
    invoke-virtual {v13}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@40
    move-result-object v15

    #@41
    .line 149
    .local v15, "subtypeLocale":Ljava/lang/String;
    invoke-static {v15}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v14

    #@45
    .line 150
    .local v14, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@48
    move-result v1

    #@49
    const/4 v2, 0x2

    #@4a
    if-lt v1, v2, :cond_7

    #@4c
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_7

    #@56
    .line 169
    .end local v13    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v14    # "subtypeLanguage":Ljava/lang/String;
    .end local v15    # "subtypeLocale":Ljava/lang/String;
    :cond_6
    :goto_0
    if-nez v13, :cond_b

    #@58
    .line 170
    const/4 v1, 0x0

    #@59
    return-object v1

    #@5a
    .line 151
    .restart local v13    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v14    # "subtypeLanguage":Ljava/lang/String;
    .restart local v15    # "subtypeLocale":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    #@5b
    return-object v1

    #@5c
    .line 155
    .end local v14    # "subtypeLanguage":Ljava/lang/String;
    .end local v15    # "subtypeLocale":Ljava/lang/String;
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    .line 156
    .local v9, "localeStr":Ljava/lang/String;
    const/4 v8, 0x0

    #@61
    .end local v13    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .local v8, "i":I
    :goto_1
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@64
    move-result v1

    #@65
    if-ge v8, v1, :cond_6

    #@67
    .line 157
    invoke-virtual {v10, v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@6a
    move-result-object v12

    #@6b
    .line 158
    .local v12, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@6e
    move-result-object v17

    #@6f
    .line 159
    .local v17, "tempSubtypeLocale":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v16

    #@73
    .line 160
    .local v16, "tempSubtypeLanguage":Ljava/lang/String;
    move-object/from16 v0, v17

    #@75
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v1

    #@79
    if-eqz v1, :cond_9

    #@7b
    .line 161
    move-object v13, v12

    #@7c
    .line 162
    .local v13, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    goto :goto_0

    #@7d
    .line 163
    .end local v13    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@80
    move-result v1

    #@81
    const/4 v2, 0x2

    #@82
    if-lt v1, v2, :cond_a

    #@84
    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    move-object/from16 v0, v16

    #@8a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v1

    #@8e
    .line 163
    if-eqz v1, :cond_a

    #@90
    .line 165
    move-object v13, v12

    #@91
    .line 156
    :cond_a
    add-int/lit8 v8, v8, 0x1

    #@93
    goto :goto_1

    #@94
    .line 172
    .end local v8    # "i":I
    .end local v9    # "localeStr":Ljava/lang/String;
    .end local v12    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v16    # "tempSubtypeLanguage":Ljava/lang/String;
    .end local v17    # "tempSubtypeLocale":Ljava/lang/String;
    :cond_b
    new-instance v11, Landroid/view/textservice/SpellCheckerSession;

    #@96
    .line 173
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@98
    .line 172
    move-object/from16 v0, p3

    #@9a
    invoke-direct {v11, v10, v1, v0, v13}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Landroid/view/textservice/SpellCheckerSubtype;)V

    #@9d
    .line 175
    .local v11, "session":Landroid/view/textservice/SpellCheckerSession;
    :try_start_1
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@9f
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v13}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    .line 176
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    #@aa
    move-result-object v4

    #@ab
    .line 177
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@ae
    move-result-object v5

    #@af
    move-object/from16 v6, p1

    #@b1
    .line 175
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b4
    .line 181
    return-object v11

    #@b5
    .line 178
    :catch_1
    move-exception v7

    #@b6
    .line 179
    .restart local v7    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b7
    return-object v1
.end method

.method public setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 4
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    #@0
    .prologue
    .line 217
    if-nez p1, :cond_0

    #@2
    .line 218
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "SpellCheckerInfo is null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 221
    :catch_0
    move-exception v0

    #@c
    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Error in setCurrentSpellChecker: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@26
    .line 220
    :cond_0
    :try_start_1
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@28
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-interface {v1, v3, v2}, Lcom/android/internal/textservice/ITextServicesManager;->setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    goto :goto_0
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 268
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->setSpellCheckerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 266
    :goto_0
    return-void

    #@6
    .line 269
    :catch_0
    move-exception v0

    #@7
    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Error in setSpellCheckerEnabled:"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    goto :goto_0
.end method

.method public setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V
    .locals 5
    .param p1, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    #@0
    .prologue
    .line 252
    if-nez p1, :cond_0

    #@2
    .line 253
    const/4 v1, 0x0

    #@3
    .line 257
    .local v1, "hashCode":I
    :goto_0
    :try_start_0
    sget-object v2, Landroid/view/textservice/TextServicesManager;->sService:Lcom/android/internal/textservice/ITextServicesManager;

    #@5
    const/4 v3, 0x0

    #@6
    invoke-interface {v2, v3, v1}, Lcom/android/internal/textservice/ITextServicesManager;->setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V

    #@9
    .line 249
    .end local v1    # "hashCode":I
    :goto_1
    return-void

    #@a
    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    .restart local v1    # "hashCode":I
    goto :goto_0

    #@f
    .line 258
    .end local v1    # "hashCode":I
    :catch_0
    move-exception v0

    #@10
    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Error in setSpellCheckerSubtype:"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    goto :goto_1
.end method
