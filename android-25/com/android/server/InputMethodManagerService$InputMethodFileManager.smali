.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field private static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

.field private final mAdditionalSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "imiId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3687
    .local p1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3686
    new-instance v3, Ljava/util/HashMap;

    #@5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 3685
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@a
    .line 3688
    if-nez p1, :cond_0

    #@c
    .line 3689
    new-instance v3, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v4, "methodMap is null"

    #@11
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 3691
    :cond_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@17
    .line 3692
    if-nez p2, :cond_2

    #@19
    .line 3693
    new-instance v2, Ljava/io/File;

    #@1b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "system"

    #@22
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25
    .line 3695
    .local v2, "systemDir":Ljava/io/File;
    :goto_0
    new-instance v0, Ljava/io/File;

    #@27
    const-string/jumbo v3, "inputmethod"

    #@2a
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2d
    .line 3696
    .local v0, "inputMethodDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_1

    #@33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 3699
    :cond_1
    :goto_1
    new-instance v1, Ljava/io/File;

    #@3b
    const-string/jumbo v3, "subtypes.xml"

    #@3e
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@41
    .line 3700
    .local v1, "subtypeFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    #@43
    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@46
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@48
    .line 3701
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_4

    #@4e
    .line 3704
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@50
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@52
    .line 3703
    invoke-static {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    #@55
    .line 3687
    :goto_2
    return-void

    #@56
    .line 3694
    .end local v0    # "inputMethodDir":Ljava/io/File;
    .end local v1    # "subtypeFile":Ljava/io/File;
    .end local v2    # "systemDir":Ljava/io/File;
    :cond_2
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@59
    move-result-object v2

    #@5a
    .restart local v2    # "systemDir":Ljava/io/File;
    goto :goto_0

    #@5b
    .line 3697
    .restart local v0    # "inputMethodDir":Ljava/io/File;
    :cond_3
    const-string/jumbo v3, "InputMethodManagerService"

    #@5e
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "Couldn\'t create dir.: "

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    goto :goto_1

    #@7a
    .line 3707
    .restart local v1    # "subtypeFile":Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@7c
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@7e
    .line 3706
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    #@81
    goto :goto_2
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3712
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 3713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 3715
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@a
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@c
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@e
    .line 3714
    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 3711
    return-void

    #@13
    .line 3712
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .locals 27
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 3802
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    :cond_0
    return-void

    #@5
    .line 3803
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    #@8
    .line 3804
    const/16 v23, 0x0

    #@a
    const/4 v8, 0x0

    #@b
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@e
    move-result-object v8

    #@f
    .line 3805
    .local v8, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@12
    move-result-object v18

    #@13
    .line 3806
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v22, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15
    invoke-virtual/range {v22 .. v22}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v22

    #@19
    move-object/from16 v0, v18

    #@1b
    move-object/from16 v1, v22

    #@1d
    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@20
    .line 3807
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@23
    move-result v21

    #@24
    .line 3809
    .local v21, "type":I
    :cond_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@27
    move-result v21

    #@28
    const/16 v22, 0x2

    #@2a
    move/from16 v0, v21

    #@2c
    move/from16 v1, v22

    #@2e
    if-eq v0, v1, :cond_3

    #@30
    .line 3810
    const/16 v22, 0x1

    #@32
    move/from16 v0, v21

    #@34
    move/from16 v1, v22

    #@36
    if-ne v0, v1, :cond_2

    #@38
    .line 3811
    :cond_3
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 3812
    .local v7, "firstNodeName":Ljava/lang/String;
    const-string/jumbo v22, "subtypes"

    #@3f
    move-object/from16 v0, v22

    #@41
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v22

    #@45
    if-nez v22, :cond_5

    #@47
    .line 3813
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    #@49
    const-string/jumbo v24, "Xml doesn\'t start with subtypes"

    #@4c
    move-object/from16 v0, v22

    #@4e
    move-object/from16 v1, v24

    #@50
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@53
    throw v22
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@54
    .line 3872
    .end local v7    # "firstNodeName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_0
    move-exception v22

    #@55
    :try_start_1
    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    :catchall_0
    move-exception v23

    #@57
    move-object/from16 v26, v23

    #@59
    move-object/from16 v23, v22

    #@5b
    move-object/from16 v22, v26

    #@5d
    :goto_0
    if-eqz v8, :cond_4

    #@5f
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@62
    :cond_4
    :goto_1
    if-eqz v23, :cond_10

    #@64
    :try_start_3
    throw v23
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    #@65
    .line 3869
    :catch_1
    move-exception v6

    #@66
    .line 3870
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "InputMethodManagerService"

    #@69
    const-string/jumbo v23, "Error reading subtypes"

    #@6c
    move-object/from16 v0, v22

    #@6e
    move-object/from16 v1, v23

    #@70
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@73
    .line 3871
    return-void

    #@74
    .line 3815
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "firstNodeName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_5
    :try_start_4
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@77
    move-result v5

    #@78
    .line 3816
    .local v5, "depth":I
    const/4 v4, 0x0

    #@79
    .line 3817
    .local v4, "currentImiId":Ljava/lang/String;
    const/16 v20, 0x0

    #@7b
    .line 3818
    .end local v4    # "currentImiId":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7e
    move-result v21

    #@7f
    const/16 v22, 0x3

    #@81
    move/from16 v0, v21

    #@83
    move/from16 v1, v22

    #@85
    if-ne v0, v1, :cond_7

    #@87
    .line 3819
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8a
    move-result v22

    #@8b
    move/from16 v0, v22

    #@8d
    if-le v0, v5, :cond_d

    #@8f
    :cond_7
    const/16 v22, 0x1

    #@91
    move/from16 v0, v21

    #@93
    move/from16 v1, v22

    #@95
    if-eq v0, v1, :cond_d

    #@97
    .line 3820
    const/16 v22, 0x2

    #@99
    move/from16 v0, v21

    #@9b
    move/from16 v1, v22

    #@9d
    if-ne v0, v1, :cond_6

    #@9f
    .line 3822
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a2
    move-result-object v17

    #@a3
    .line 3823
    .local v17, "nodeName":Ljava/lang/String;
    const-string/jumbo v22, "imi"

    #@a6
    move-object/from16 v0, v22

    #@a8
    move-object/from16 v1, v17

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v22

    #@ae
    if-eqz v22, :cond_9

    #@b0
    .line 3824
    const-string/jumbo v22, "id"

    #@b3
    const/16 v24, 0x0

    #@b5
    move-object/from16 v0, v18

    #@b7
    move-object/from16 v1, v24

    #@b9
    move-object/from16 v2, v22

    #@bb
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v4

    #@bf
    .line 3825
    .local v4, "currentImiId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c2
    move-result v22

    #@c3
    if-eqz v22, :cond_8

    #@c5
    .line 3826
    const-string/jumbo v22, "InputMethodManagerService"

    #@c8
    const-string/jumbo v24, "Invalid imi id found in subtypes.xml"

    #@cb
    move-object/from16 v0, v22

    #@cd
    move-object/from16 v1, v24

    #@cf
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    goto :goto_2

    #@d3
    .line 3872
    .end local v4    # "currentImiId":Ljava/lang/String;
    .end local v5    # "depth":I
    .end local v7    # "firstNodeName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catchall_1
    move-exception v22

    #@d4
    goto :goto_0

    #@d5
    .line 3829
    .restart local v4    # "currentImiId":Ljava/lang/String;
    .restart local v5    # "depth":I
    .restart local v7    # "firstNodeName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "nodeName":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_8
    new-instance v20, Ljava/util/ArrayList;

    #@d7
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@da
    .line 3830
    .local v20, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    #@dc
    move-object/from16 v1, v20

    #@de
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    goto :goto_2

    #@e2
    .line 3831
    .end local v4    # "currentImiId":Ljava/lang/String;
    .end local v20    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    const-string/jumbo v22, "subtype"

    #@e5
    move-object/from16 v0, v22

    #@e7
    move-object/from16 v1, v17

    #@e9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v22

    #@ed
    if-eqz v22, :cond_6

    #@ef
    .line 3832
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f2
    move-result v22

    #@f3
    if-nez v22, :cond_a

    #@f5
    if-nez v20, :cond_b

    #@f7
    .line 3833
    :cond_a
    const-string/jumbo v22, "InputMethodManagerService"

    #@fa
    new-instance v24, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v25, "IME uninstalled or not valid.: "

    #@102
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v24

    #@106
    move-object/from16 v0, v24

    #@108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v24

    #@10c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v24

    #@110
    move-object/from16 v0, v22

    #@112
    move-object/from16 v1, v24

    #@114
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@117
    goto/16 :goto_2

    #@119
    .line 3837
    :cond_b
    const-string/jumbo v22, "icon"

    #@11c
    const/16 v24, 0x0

    #@11e
    move-object/from16 v0, v18

    #@120
    move-object/from16 v1, v24

    #@122
    move-object/from16 v2, v22

    #@124
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@127
    move-result-object v22

    #@128
    .line 3836
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12b
    move-result v9

    #@12c
    .line 3839
    .local v9, "icon":I
    const-string/jumbo v22, "label"

    #@12f
    const/16 v24, 0x0

    #@131
    move-object/from16 v0, v18

    #@133
    move-object/from16 v1, v24

    #@135
    move-object/from16 v2, v22

    #@137
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13a
    move-result-object v22

    #@13b
    .line 3838
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13e
    move-result v15

    #@13f
    .line 3841
    .local v15, "label":I
    const-string/jumbo v22, "imeSubtypeLocale"

    #@142
    const/16 v24, 0x0

    #@144
    move-object/from16 v0, v18

    #@146
    move-object/from16 v1, v24

    #@148
    move-object/from16 v2, v22

    #@14a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14d
    move-result-object v11

    #@14e
    .line 3843
    .local v11, "imeSubtypeLocale":Ljava/lang/String;
    const-string/jumbo v22, "languageTag"

    #@151
    const/16 v24, 0x0

    #@153
    move-object/from16 v0, v18

    #@155
    move-object/from16 v1, v24

    #@157
    move-object/from16 v2, v22

    #@159
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15c
    move-result-object v16

    #@15d
    .line 3845
    .local v16, "languageTag":Ljava/lang/String;
    const-string/jumbo v22, "imeSubtypeMode"

    #@160
    const/16 v24, 0x0

    #@162
    move-object/from16 v0, v18

    #@164
    move-object/from16 v1, v24

    #@166
    move-object/from16 v2, v22

    #@168
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16b
    move-result-object v12

    #@16c
    .line 3847
    .local v12, "imeSubtypeMode":Ljava/lang/String;
    const-string/jumbo v22, "imeSubtypeExtraValue"

    #@16f
    const/16 v24, 0x0

    #@171
    move-object/from16 v0, v18

    #@173
    move-object/from16 v1, v24

    #@175
    move-object/from16 v2, v22

    #@177
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17a
    move-result-object v10

    #@17b
    .line 3848
    .local v10, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string/jumbo v22, "1"

    #@17e
    .line 3849
    const-string/jumbo v24, "isAuxiliary"

    #@181
    const/16 v25, 0x0

    #@183
    move-object/from16 v0, v18

    #@185
    move-object/from16 v1, v25

    #@187
    move-object/from16 v2, v24

    #@189
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18c
    move-result-object v24

    #@18d
    .line 3848
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@190
    move-result-object v24

    #@191
    move-object/from16 v0, v22

    #@193
    move-object/from16 v1, v24

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@198
    move-result v14

    #@199
    .line 3850
    .local v14, "isAuxiliary":Z
    const-string/jumbo v22, "1"

    #@19c
    .line 3851
    const-string/jumbo v24, "isAsciiCapable"

    #@19f
    const/16 v25, 0x0

    #@1a1
    move-object/from16 v0, v18

    #@1a3
    move-object/from16 v1, v25

    #@1a5
    move-object/from16 v2, v24

    #@1a7
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1aa
    move-result-object v24

    #@1ab
    .line 3850
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1ae
    move-result-object v24

    #@1af
    move-object/from16 v0, v22

    #@1b1
    move-object/from16 v1, v24

    #@1b3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v13

    #@1b7
    .line 3852
    .local v13, "isAsciiCapable":Z
    new-instance v22, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1b9
    invoke-direct/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    #@1bc
    move-object/from16 v0, v22

    #@1be
    invoke-virtual {v0, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1c1
    move-result-object v22

    #@1c2
    move-object/from16 v0, v22

    #@1c4
    invoke-virtual {v0, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1c7
    move-result-object v22

    #@1c8
    move-object/from16 v0, v22

    #@1ca
    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1cd
    move-result-object v22

    #@1ce
    move-object/from16 v0, v22

    #@1d0
    move-object/from16 v1, v16

    #@1d2
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1d5
    move-result-object v22

    #@1d6
    move-object/from16 v0, v22

    #@1d8
    invoke-virtual {v0, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1db
    move-result-object v22

    #@1dc
    move-object/from16 v0, v22

    #@1de
    invoke-virtual {v0, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1e1
    move-result-object v22

    #@1e2
    move-object/from16 v0, v22

    #@1e4
    invoke-virtual {v0, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1e7
    move-result-object v22

    #@1e8
    move-object/from16 v0, v22

    #@1ea
    invoke-virtual {v0, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1ed
    move-result-object v3

    #@1ee
    .line 3862
    .local v3, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    const-string/jumbo v22, "subtypeId"

    #@1f1
    const/16 v24, 0x0

    #@1f3
    move-object/from16 v0, v18

    #@1f5
    move-object/from16 v1, v24

    #@1f7
    move-object/from16 v2, v22

    #@1f9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1fc
    move-result-object v19

    #@1fd
    .line 3863
    .local v19, "subtypeIdString":Ljava/lang/String;
    if-eqz v19, :cond_c

    #@1ff
    .line 3864
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@202
    move-result v22

    #@203
    move/from16 v0, v22

    #@205
    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@208
    .line 3866
    :cond_c
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    #@20b
    move-result-object v22

    #@20c
    move-object/from16 v0, v20

    #@20e
    move-object/from16 v1, v22

    #@210
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@213
    goto/16 :goto_2

    #@215
    .line 3872
    .end local v3    # "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .end local v9    # "icon":I
    .end local v10    # "imeSubtypeExtraValue":Ljava/lang/String;
    .end local v11    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v12    # "imeSubtypeMode":Ljava/lang/String;
    .end local v13    # "isAsciiCapable":Z
    .end local v14    # "isAuxiliary":Z
    .end local v15    # "label":I
    .end local v16    # "languageTag":Ljava/lang/String;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v19    # "subtypeIdString":Ljava/lang/String;
    :cond_d
    if-eqz v8, :cond_e

    #@217
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    #@21a
    :cond_e
    :goto_3
    if-eqz v23, :cond_11

    #@21c
    :try_start_6
    throw v23

    #@21d
    :catch_2
    move-exception v23

    #@21e
    goto :goto_3

    #@21f
    .end local v5    # "depth":I
    .end local v7    # "firstNodeName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_3
    move-exception v24

    #@220
    if-nez v23, :cond_f

    #@222
    move-object/from16 v23, v24

    #@224
    goto/16 :goto_1

    #@226
    :cond_f
    move-object/from16 v0, v23

    #@228
    move-object/from16 v1, v24

    #@22a
    if-eq v0, v1, :cond_4

    #@22c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@22f
    goto/16 :goto_1

    #@231
    :cond_10
    throw v22
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    #@232
    .line 3801
    .restart local v5    # "depth":I
    .restart local v7    # "firstNodeName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_11
    return-void
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3749
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p2, :cond_2

    #@2
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    #@5
    move-result v10

    #@6
    if-lez v10, :cond_2

    #@8
    const/4 v6, 0x1

    #@9
    .line 3750
    .local v6, "isSetMethodMap":Z
    :goto_0
    const/4 v2, 0x0

    #@a
    .line 3752
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v2

    #@e
    .line 3753
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    #@10
    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@13
    .line 3754
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1c
    .line 3755
    const/4 v10, 0x1

    #@1d
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v10

    #@21
    const/4 v11, 0x0

    #@22
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@25
    .line 3756
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@28
    const/4 v11, 0x1

    #@29
    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@2c
    .line 3757
    const-string/jumbo v10, "subtypes"

    #@2f
    const/4 v11, 0x0

    #@30
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 3758
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@36
    move-result-object v10

    #@37
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v5

    #@3b
    .local v5, "imiId$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v10

    #@3f
    if-eqz v10, :cond_8

    #@41
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Ljava/lang/String;

    #@47
    .line 3759
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@49
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4c
    move-result v10

    #@4d
    if-eqz v10, :cond_3

    #@4f
    .line 3763
    :cond_0
    const-string/jumbo v10, "imi"

    #@52
    const/4 v11, 0x0

    #@53
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 3764
    const-string/jumbo v10, "id"

    #@59
    const/4 v11, 0x0

    #@5a
    invoke-interface {v7, v11, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 3765
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v9

    #@61
    check-cast v9, Ljava/util/List;

    #@63
    .line 3766
    .local v9, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@66
    move-result v0

    #@67
    .line 3767
    .local v0, "N":I
    const/4 v3, 0x0

    #@68
    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_7

    #@6a
    .line 3768
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v8

    #@6e
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    #@70
    .line 3769
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v10, "subtype"

    #@73
    const/4 v11, 0x0

    #@74
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@77
    .line 3770
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    #@7a
    move-result v10

    #@7b
    if-eqz v10, :cond_1

    #@7d
    .line 3771
    const-string/jumbo v10, "subtypeId"

    #@80
    .line 3772
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    #@83
    move-result v11

    #@84
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    .line 3771
    const/4 v12, 0x0

    #@89
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8c
    .line 3774
    :cond_1
    const-string/jumbo v10, "icon"

    #@8f
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    #@92
    move-result v11

    #@93
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@96
    move-result-object v11

    #@97
    const/4 v12, 0x0

    #@98
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9b
    .line 3775
    const-string/jumbo v10, "label"

    #@9e
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    #@a1
    move-result v11

    #@a2
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    const/4 v12, 0x0

    #@a7
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@aa
    .line 3776
    const-string/jumbo v10, "imeSubtypeLocale"

    #@ad
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@b0
    move-result-object v11

    #@b1
    const/4 v12, 0x0

    #@b2
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b5
    .line 3777
    const-string/jumbo v10, "languageTag"

    #@b8
    .line 3778
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    #@bb
    move-result-object v11

    #@bc
    .line 3777
    const/4 v12, 0x0

    #@bd
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c0
    .line 3779
    const-string/jumbo v10, "imeSubtypeMode"

    #@c3
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@c6
    move-result-object v11

    #@c7
    const/4 v12, 0x0

    #@c8
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cb
    .line 3780
    const-string/jumbo v10, "imeSubtypeExtraValue"

    #@ce
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    #@d1
    move-result-object v11

    #@d2
    const/4 v12, 0x0

    #@d3
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d6
    .line 3781
    const-string/jumbo v11, "isAuxiliary"

    #@d9
    .line 3782
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@dc
    move-result v10

    #@dd
    if-eqz v10, :cond_5

    #@df
    const/4 v10, 0x1

    #@e0
    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e3
    move-result-object v10

    #@e4
    .line 3781
    const/4 v12, 0x0

    #@e5
    invoke-interface {v7, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e8
    .line 3783
    const-string/jumbo v11, "isAsciiCapable"

    #@eb
    .line 3784
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    #@ee
    move-result v10

    #@ef
    if-eqz v10, :cond_6

    #@f1
    const/4 v10, 0x1

    #@f2
    :goto_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f5
    move-result-object v10

    #@f6
    .line 3783
    const/4 v12, 0x0

    #@f7
    invoke-interface {v7, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fa
    .line 3785
    const-string/jumbo v10, "subtype"

    #@fd
    const/4 v11, 0x0

    #@fe
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@101
    .line 3767
    add-int/lit8 v3, v3, 0x1

    #@103
    goto/16 :goto_2

    #@105
    .line 3749
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v5    # "imiId$iterator":Ljava/util/Iterator;
    .end local v6    # "isSetMethodMap":Z
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_2
    const/4 v6, 0x0

    #@106
    .restart local v6    # "isSetMethodMap":Z
    goto/16 :goto_0

    #@108
    .line 3760
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v5    # "imiId$iterator":Ljava/util/Iterator;
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const-string/jumbo v10, "InputMethodManagerService"

    #@10b
    new-instance v11, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v12, "IME uninstalled or not valid.: "

    #@113
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v11

    #@117
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v11

    #@11b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v11

    #@11f
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@122
    goto/16 :goto_1

    #@124
    .line 3792
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v5    # "imiId$iterator":Ljava/util/Iterator;
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    #@125
    .line 3793
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "InputMethodManagerService"

    #@128
    const-string/jumbo v11, "Error writing subtypes"

    #@12b
    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12e
    .line 3794
    if-eqz v2, :cond_4

    #@130
    .line 3795
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@133
    .line 3747
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    return-void

    #@134
    .line 3782
    .restart local v0    # "N":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v5    # "imiId$iterator":Ljava/util/Iterator;
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v10, 0x0

    #@135
    goto :goto_3

    #@136
    .line 3784
    :cond_6
    const/4 v10, 0x0

    #@137
    goto :goto_4

    #@138
    .line 3787
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    :try_start_1
    const-string/jumbo v10, "imi"

    #@13b
    const/4 v11, 0x0

    #@13c
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13f
    goto/16 :goto_1

    #@141
    .line 3789
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_8
    const-string/jumbo v10, "subtypes"

    #@144
    const/4 v11, 0x0

    #@145
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@148
    .line 3790
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@14b
    .line 3791
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@14e
    goto :goto_5
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 8
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "additionalSubtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 3721
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 3722
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3723
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, p2

    #@9
    .line 3724
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 3725
    aget-object v2, p2, v1

    #@e
    .line 3726
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 3727
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 3724
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3729
    :cond_0
    const-string/jumbo v4, "InputMethodManagerService"

    #@1d
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v7, "Duplicated subtype definition found: "

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    .line 3730
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    .line 3729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    .line 3730
    const-string/jumbo v7, ", "

    #@34
    .line 3729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 3730
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 3729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    goto :goto_1

    #@48
    .line 3721
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v4

    #@49
    monitor-exit v5

    #@4a
    throw v4

    #@4b
    .line 3733
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@4d
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 3735
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@56
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@58
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@5a
    .line 3734
    invoke-static {v4, v6, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    monitor-exit v5

    #@5e
    .line 3720
    return-void
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3740
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 3741
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 3740
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
