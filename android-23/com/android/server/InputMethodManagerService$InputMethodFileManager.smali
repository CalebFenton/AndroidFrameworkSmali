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

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

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
    .line 3549
    .local p1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3548
    new-instance v3, Ljava/util/HashMap;

    #@5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 3547
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@a
    .line 3550
    if-nez p1, :cond_0

    #@c
    .line 3551
    new-instance v3, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v4, "methodMap is null"

    #@11
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 3553
    :cond_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@17
    .line 3554
    if-nez p2, :cond_2

    #@19
    .line 3555
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
    .line 3557
    .local v2, "systemDir":Ljava/io/File;
    :goto_0
    new-instance v0, Ljava/io/File;

    #@27
    const-string/jumbo v3, "inputmethod"

    #@2a
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2d
    .line 3558
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
    .line 3561
    :cond_1
    :goto_1
    new-instance v1, Ljava/io/File;

    #@3b
    const-string/jumbo v3, "subtypes.xml"

    #@3e
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@41
    .line 3562
    .local v1, "subtypeFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    #@43
    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@46
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@48
    .line 3563
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_4

    #@4e
    .line 3566
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@50
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@52
    .line 3565
    invoke-static {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    #@55
    .line 3549
    :goto_2
    return-void

    #@56
    .line 3556
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
    .line 3559
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
    .line 3569
    .restart local v1    # "subtypeFile":Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@7c
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@7e
    .line 3568
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    #@81
    goto :goto_2
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3574
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 3575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 3577
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@a
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@c
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@e
    .line 3576
    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 3573
    return-void

    #@13
    .line 3574
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .locals 25
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
    .line 3656
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    :cond_0
    return-void

    #@5
    .line 3657
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    #@8
    .line 3658
    const/4 v10, 0x0

    #@9
    .line 3660
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@c
    move-result-object v10

    #@d
    .line 3661
    .local v10, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@10
    move-result-object v18

    #@11
    .line 3662
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v22, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@13
    invoke-virtual/range {v22 .. v22}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@16
    move-result-object v22

    #@17
    move-object/from16 v0, v18

    #@19
    move-object/from16 v1, v22

    #@1b
    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1e
    .line 3663
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@21
    move-result v21

    #@22
    .line 3665
    .local v21, "type":I
    :cond_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@25
    move-result v21

    #@26
    const/16 v22, 0x2

    #@28
    move/from16 v0, v21

    #@2a
    move/from16 v1, v22

    #@2c
    if-eq v0, v1, :cond_3

    #@2e
    .line 3666
    const/16 v22, 0x1

    #@30
    move/from16 v0, v21

    #@32
    move/from16 v1, v22

    #@34
    if-ne v0, v1, :cond_2

    #@36
    .line 3667
    :cond_3
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v9

    #@3a
    .line 3668
    .local v9, "firstNodeName":Ljava/lang/String;
    const-string/jumbo v22, "subtypes"

    #@3d
    move-object/from16 v0, v22

    #@3f
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v22

    #@43
    if-nez v22, :cond_5

    #@45
    .line 3669
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    #@47
    const-string/jumbo v23, "Xml doesn\'t start with subtypes"

    #@4a
    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v22
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 3715
    .end local v9    # "firstNodeName":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_0
    move-exception v7

    #@4f
    .line 3716
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string/jumbo v22, "InputMethodManagerService"

    #@52
    new-instance v23, Ljava/lang/StringBuilder;

    #@54
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v24, "Error reading subtypes: "

    #@5a
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v23

    #@5e
    move-object/from16 v0, v23

    #@60
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v23

    #@64
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v23

    #@68
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    .line 3725
    if-eqz v10, :cond_4

    #@6d
    .line 3727
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    #@70
    .line 3717
    :cond_4
    :goto_0
    return-void

    #@71
    .line 3671
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "firstNodeName":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_5
    :try_start_3
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@74
    move-result v4

    #@75
    .line 3672
    .local v4, "depth":I
    const/4 v3, 0x0

    #@76
    .line 3673
    .local v3, "currentImiId":Ljava/lang/String;
    const/16 v20, 0x0

    #@78
    .line 3674
    .end local v3    # "currentImiId":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7b
    move-result v21

    #@7c
    const/16 v22, 0x3

    #@7e
    move/from16 v0, v21

    #@80
    move/from16 v1, v22

    #@82
    if-ne v0, v1, :cond_7

    #@84
    .line 3675
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@87
    move-result v22

    #@88
    move/from16 v0, v22

    #@8a
    if-le v0, v4, :cond_f

    #@8c
    :cond_7
    const/16 v22, 0x1

    #@8e
    move/from16 v0, v21

    #@90
    move/from16 v1, v22

    #@92
    if-eq v0, v1, :cond_f

    #@94
    .line 3676
    const/16 v22, 0x2

    #@96
    move/from16 v0, v21

    #@98
    move/from16 v1, v22

    #@9a
    if-ne v0, v1, :cond_6

    #@9c
    .line 3678
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9f
    move-result-object v17

    #@a0
    .line 3679
    .local v17, "nodeName":Ljava/lang/String;
    const-string/jumbo v22, "imi"

    #@a3
    move-object/from16 v0, v22

    #@a5
    move-object/from16 v1, v17

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v22

    #@ab
    if-eqz v22, :cond_b

    #@ad
    .line 3680
    const-string/jumbo v22, "id"

    #@b0
    const/16 v23, 0x0

    #@b2
    move-object/from16 v0, v18

    #@b4
    move-object/from16 v1, v23

    #@b6
    move-object/from16 v2, v22

    #@b8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    .line 3681
    .local v3, "currentImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@bf
    move-result v22

    #@c0
    if-eqz v22, :cond_9

    #@c2
    .line 3682
    const-string/jumbo v22, "InputMethodManagerService"

    #@c5
    const-string/jumbo v23, "Invalid imi id found in subtypes.xml"

    #@c8
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cb
    goto :goto_1

    #@cc
    .line 3718
    .end local v3    # "currentImiId":Ljava/lang/String;
    .end local v4    # "depth":I
    .end local v9    # "firstNodeName":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_1
    move-exception v5

    #@cd
    .line 3719
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v22, "InputMethodManagerService"

    #@d0
    new-instance v23, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v24, "Error reading subtypes: "

    #@d8
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v23

    #@dc
    move-object/from16 v0, v23

    #@de
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v23

    #@e2
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v23

    #@e6
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e9
    .line 3725
    if-eqz v10, :cond_8

    #@eb
    .line 3727
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@ee
    .line 3720
    :cond_8
    :goto_2
    return-void

    #@ef
    .line 3685
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "currentImiId":Ljava/lang/String;
    .restart local v4    # "depth":I
    .restart local v9    # "firstNodeName":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "nodeName":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_9
    :try_start_6
    new-instance v20, Ljava/util/ArrayList;

    #@f1
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@f4
    .line 3686
    .local v20, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v20

    #@f8
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@fb
    goto/16 :goto_1

    #@fd
    .line 3721
    .end local v3    # "currentImiId":Ljava/lang/String;
    .end local v4    # "depth":I
    .end local v9    # "firstNodeName":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v21    # "type":I
    :catch_2
    move-exception v6

    #@fe
    .line 3722
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string/jumbo v22, "InputMethodManagerService"

    #@101
    new-instance v23, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v24, "Error reading subtypes: "

    #@109
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v23

    #@10d
    move-object/from16 v0, v23

    #@10f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v23

    #@113
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v23

    #@117
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@11a
    .line 3725
    if-eqz v10, :cond_a

    #@11c
    .line 3727
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@11f
    .line 3723
    :cond_a
    :goto_3
    return-void

    #@120
    .line 3687
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "depth":I
    .restart local v9    # "firstNodeName":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "nodeName":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_b
    :try_start_9
    const-string/jumbo v22, "subtype"

    #@123
    move-object/from16 v0, v22

    #@125
    move-object/from16 v1, v17

    #@127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12a
    move-result v22

    #@12b
    if-eqz v22, :cond_6

    #@12d
    .line 3688
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@130
    move-result v22

    #@131
    if-nez v22, :cond_c

    #@133
    if-nez v20, :cond_e

    #@135
    .line 3689
    :cond_c
    const-string/jumbo v22, "InputMethodManagerService"

    #@138
    new-instance v23, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v24, "IME uninstalled or not valid.: "

    #@140
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v23

    #@144
    move-object/from16 v0, v23

    #@146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v23

    #@14a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v23

    #@14e
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@151
    goto/16 :goto_1

    #@153
    .line 3724
    .end local v4    # "depth":I
    .end local v9    # "firstNodeName":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catchall_0
    move-exception v22

    #@154
    .line 3725
    if-eqz v10, :cond_d

    #@156
    .line 3727
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@159
    .line 3724
    :cond_d
    :goto_4
    throw v22

    #@15a
    .line 3693
    .restart local v4    # "depth":I
    .restart local v9    # "firstNodeName":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "nodeName":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_e
    :try_start_b
    const-string/jumbo v22, "icon"

    #@15d
    const/16 v23, 0x0

    #@15f
    move-object/from16 v0, v18

    #@161
    move-object/from16 v1, v23

    #@163
    move-object/from16 v2, v22

    #@165
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@168
    move-result-object v22

    #@169
    .line 3692
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@16c
    move-result-object v22

    #@16d
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    #@170
    move-result v11

    #@171
    .line 3695
    .local v11, "icon":I
    const-string/jumbo v22, "label"

    #@174
    const/16 v23, 0x0

    #@176
    move-object/from16 v0, v18

    #@178
    move-object/from16 v1, v23

    #@17a
    move-object/from16 v2, v22

    #@17c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17f
    move-result-object v22

    #@180
    .line 3694
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@183
    move-result-object v22

    #@184
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    #@187
    move-result v16

    #@188
    .line 3697
    .local v16, "label":I
    const-string/jumbo v22, "imeSubtypeLocale"

    #@18b
    const/16 v23, 0x0

    #@18d
    move-object/from16 v0, v18

    #@18f
    move-object/from16 v1, v23

    #@191
    move-object/from16 v2, v22

    #@193
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@196
    move-result-object v13

    #@197
    .line 3699
    .local v13, "imeSubtypeLocale":Ljava/lang/String;
    const-string/jumbo v22, "imeSubtypeMode"

    #@19a
    const/16 v23, 0x0

    #@19c
    move-object/from16 v0, v18

    #@19e
    move-object/from16 v1, v23

    #@1a0
    move-object/from16 v2, v22

    #@1a2
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a5
    move-result-object v14

    #@1a6
    .line 3701
    .local v14, "imeSubtypeMode":Ljava/lang/String;
    const-string/jumbo v22, "imeSubtypeExtraValue"

    #@1a9
    const/16 v23, 0x0

    #@1ab
    move-object/from16 v0, v18

    #@1ad
    move-object/from16 v1, v23

    #@1af
    move-object/from16 v2, v22

    #@1b1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b4
    move-result-object v12

    #@1b5
    .line 3702
    .local v12, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string/jumbo v22, "1"

    #@1b8
    .line 3703
    const-string/jumbo v23, "isAuxiliary"

    #@1bb
    const/16 v24, 0x0

    #@1bd
    move-object/from16 v0, v18

    #@1bf
    move-object/from16 v1, v24

    #@1c1
    move-object/from16 v2, v23

    #@1c3
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c6
    move-result-object v23

    #@1c7
    .line 3702
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1ca
    move-result-object v23

    #@1cb
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ce
    move-result v15

    #@1cf
    .line 3704
    .local v15, "isAuxiliary":Z
    new-instance v22, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1d1
    invoke-direct/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    #@1d4
    move-object/from16 v0, v22

    #@1d6
    move/from16 v1, v16

    #@1d8
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1db
    move-result-object v22

    #@1dc
    move-object/from16 v0, v22

    #@1de
    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1e1
    move-result-object v22

    #@1e2
    move-object/from16 v0, v22

    #@1e4
    invoke-virtual {v0, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1e7
    move-result-object v22

    #@1e8
    move-object/from16 v0, v22

    #@1ea
    invoke-virtual {v0, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1ed
    move-result-object v22

    #@1ee
    move-object/from16 v0, v22

    #@1f0
    invoke-virtual {v0, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1f3
    move-result-object v22

    #@1f4
    move-object/from16 v0, v22

    #@1f6
    invoke-virtual {v0, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1f9
    move-result-object v22

    #@1fa
    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    #@1fd
    move-result-object v19

    #@1fe
    .line 3712
    .local v19, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, v20

    #@200
    move-object/from16 v1, v19

    #@202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@205
    goto/16 :goto_1

    #@207
    .line 3725
    .end local v11    # "icon":I
    .end local v12    # "imeSubtypeExtraValue":Ljava/lang/String;
    .end local v13    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v14    # "imeSubtypeMode":Ljava/lang/String;
    .end local v15    # "isAuxiliary":Z
    .end local v16    # "label":I
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v19    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_f
    if-eqz v10, :cond_10

    #@209
    .line 3727
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    #@20c
    .line 3655
    :cond_10
    :goto_5
    return-void

    #@20d
    .line 3728
    :catch_3
    move-exception v8

    #@20e
    .line 3729
    .local v8, "e1":Ljava/io/IOException;
    const-string/jumbo v22, "InputMethodManagerService"

    #@211
    const-string/jumbo v23, "Failed to close."

    #@214
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@217
    goto :goto_5

    #@218
    .line 3728
    .end local v4    # "depth":I
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "firstNodeName":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v8

    #@219
    .line 3729
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string/jumbo v22, "InputMethodManagerService"

    #@21c
    const-string/jumbo v23, "Failed to close."

    #@21f
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@222
    goto/16 :goto_3

    #@224
    .line 3728
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@225
    .line 3729
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string/jumbo v22, "InputMethodManagerService"

    #@228
    const-string/jumbo v23, "Failed to close."

    #@22b
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22e
    goto/16 :goto_2

    #@230
    .line 3728
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v8

    #@231
    .line 3729
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string/jumbo v22, "InputMethodManagerService"

    #@234
    const-string/jumbo v23, "Failed to close."

    #@237
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23a
    goto/16 :goto_0

    #@23c
    .line 3728
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_7
    move-exception v8

    #@23d
    .line 3729
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string/jumbo v23, "InputMethodManagerService"

    #@240
    const-string/jumbo v24, "Failed to close."

    #@243
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@246
    goto/16 :goto_4
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
    .line 3611
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p2, :cond_1

    #@2
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    #@5
    move-result v10

    #@6
    if-lez v10, :cond_1

    #@8
    const/4 v6, 0x1

    #@9
    .line 3612
    .local v6, "isSetMethodMap":Z
    :goto_0
    const/4 v2, 0x0

    #@a
    .line 3614
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v2

    #@e
    .line 3615
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    #@10
    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@13
    .line 3616
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1c
    .line 3617
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
    .line 3618
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@28
    const/4 v11, 0x1

    #@29
    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@2c
    .line 3619
    const-string/jumbo v10, "subtypes"

    #@2f
    const/4 v11, 0x0

    #@30
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 3620
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
    if-eqz v10, :cond_6

    #@41
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Ljava/lang/String;

    #@47
    .line 3621
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@49
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4c
    move-result v10

    #@4d
    if-eqz v10, :cond_2

    #@4f
    .line 3625
    :cond_0
    const-string/jumbo v10, "imi"

    #@52
    const/4 v11, 0x0

    #@53
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 3626
    const-string/jumbo v10, "id"

    #@59
    const/4 v11, 0x0

    #@5a
    invoke-interface {v7, v11, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 3627
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v9

    #@61
    check-cast v9, Ljava/util/List;

    #@63
    .line 3628
    .local v9, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@66
    move-result v0

    #@67
    .line 3629
    .local v0, "N":I
    const/4 v3, 0x0

    #@68
    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    #@6a
    .line 3630
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v8

    #@6e
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    #@70
    .line 3631
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v10, "subtype"

    #@73
    const/4 v11, 0x0

    #@74
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@77
    .line 3632
    const-string/jumbo v10, "icon"

    #@7a
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    #@7d
    move-result v11

    #@7e
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@81
    move-result-object v11

    #@82
    const/4 v12, 0x0

    #@83
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@86
    .line 3633
    const-string/jumbo v10, "label"

    #@89
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    #@8c
    move-result v11

    #@8d
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    const/4 v12, 0x0

    #@92
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@95
    .line 3634
    const-string/jumbo v10, "imeSubtypeLocale"

    #@98
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@9b
    move-result-object v11

    #@9c
    const/4 v12, 0x0

    #@9d
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a0
    .line 3635
    const-string/jumbo v10, "imeSubtypeMode"

    #@a3
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    const/4 v12, 0x0

    #@a8
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ab
    .line 3636
    const-string/jumbo v10, "imeSubtypeExtraValue"

    #@ae
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    #@b1
    move-result-object v11

    #@b2
    const/4 v12, 0x0

    #@b3
    invoke-interface {v7, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b6
    .line 3637
    const-string/jumbo v11, "isAuxiliary"

    #@b9
    .line 3638
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@bc
    move-result v10

    #@bd
    if-eqz v10, :cond_4

    #@bf
    const/4 v10, 0x1

    #@c0
    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@c3
    move-result-object v10

    #@c4
    .line 3637
    const/4 v12, 0x0

    #@c5
    invoke-interface {v7, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c8
    .line 3639
    const-string/jumbo v10, "subtype"

    #@cb
    const/4 v11, 0x0

    #@cc
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cf
    .line 3629
    add-int/lit8 v3, v3, 0x1

    #@d1
    goto :goto_2

    #@d2
    .line 3611
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v5    # "imiId$iterator":Ljava/util/Iterator;
    .end local v6    # "isSetMethodMap":Z
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    const/4 v6, 0x0

    #@d3
    .restart local v6    # "isSetMethodMap":Z
    goto/16 :goto_0

    #@d5
    .line 3622
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v5    # "imiId$iterator":Ljava/util/Iterator;
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const-string/jumbo v10, "InputMethodManagerService"

    #@d8
    new-instance v11, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v12, "IME uninstalled or not valid.: "

    #@e0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v11

    #@e4
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v11

    #@e8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v11

    #@ec
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ef
    goto/16 :goto_1

    #@f1
    .line 3646
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v5    # "imiId$iterator":Ljava/util/Iterator;
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    #@f2
    .line 3647
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "InputMethodManagerService"

    #@f5
    const-string/jumbo v11, "Error writing subtypes"

    #@f8
    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fb
    .line 3648
    if-eqz v2, :cond_3

    #@fd
    .line 3649
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@100
    .line 3609
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-void

    #@101
    .line 3638
    .restart local v0    # "N":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v5    # "imiId$iterator":Ljava/util/Iterator;
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    const/4 v10, 0x0

    #@102
    goto :goto_3

    #@103
    .line 3641
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    :try_start_1
    const-string/jumbo v10, "imi"

    #@106
    const/4 v11, 0x0

    #@107
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10a
    goto/16 :goto_1

    #@10c
    .line 3643
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    const-string/jumbo v10, "subtypes"

    #@10f
    const/4 v11, 0x0

    #@110
    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@113
    .line 3644
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@116
    .line 3645
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@119
    goto :goto_4
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 8
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "additionalSubtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 3583
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 3584
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3585
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, p2

    #@9
    .line 3586
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 3587
    aget-object v2, p2, v1

    #@e
    .line 3588
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 3589
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 3586
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3591
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
    .line 3592
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    .line 3591
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    .line 3592
    const-string/jumbo v7, ", "

    #@34
    .line 3591
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 3592
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 3591
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
    .line 3583
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
    .line 3595
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
    .line 3597
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    #@56
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    #@58
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@5a
    .line 3596
    invoke-static {v4, v6, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    monitor-exit v5

    #@5e
    .line 3582
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
    .line 3602
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 3603
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 3602
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
