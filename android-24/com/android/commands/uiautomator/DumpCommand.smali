.class public Lcom/android/commands/uiautomator/DumpCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "DumpCommand.java"


# static fields
.field private static final DEFAULT_DUMP_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    #@2
    .line 41
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "window_dump.xml"

    #@9
    .line 40
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    sput-object v0, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    #@e
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, "dump"

    #@3
    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    #@6
    .line 43
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "    dump [--verbose][file]\n      [--compressed]: dumps compressed layout information.\n      [file]: the location where the dumped XML should be stored, default is\n      "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 57
    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    #@e
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 57
    const-string/jumbo v1, "\n"

    #@19
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 17
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 62
    sget-object v5, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    #@2
    .line 63
    .local v5, "dumpFile":Ljava/io/File;
    const/4 v11, 0x1

    #@3
    .line 65
    .local v11, "verboseMode":Z
    const/4 v12, 0x0

    #@4
    move-object/from16 v0, p1

    #@6
    array-length v13, v0

    #@7
    :goto_0
    if-ge v12, v13, :cond_2

    #@9
    aget-object v2, p1, v12

    #@b
    .line 66
    .local v2, "arg":Ljava/lang/String;
    const-string/jumbo v14, "--compressed"

    #@e
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v14

    #@12
    if-eqz v14, :cond_1

    #@14
    .line 67
    const/4 v11, 0x0

    #@15
    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@17
    goto :goto_0

    #@18
    .line 68
    :cond_1
    const-string/jumbo v14, "-"

    #@1b
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v14

    #@1f
    if-nez v14, :cond_0

    #@21
    .line 69
    new-instance v5, Ljava/io/File;

    #@23
    .end local v5    # "dumpFile":Ljava/io/File;
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@26
    .restart local v5    # "dumpFile":Ljava/io/File;
    goto :goto_1

    #@27
    .line 73
    .end local v2    # "arg":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    #@29
    invoke-direct {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    #@2c
    .line 74
    .local v3, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    #@2f
    .line 75
    if-eqz v11, :cond_3

    #@31
    .line 77
    const/4 v12, 0x0

    #@32
    invoke-virtual {v3, v12}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setCompressedLayoutHierarchy(Z)V

    #@35
    .line 86
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    #@38
    move-result-object v10

    #@39
    .line 87
    .local v10, "uiAutomation":Landroid/app/UiAutomation;
    const-wide/16 v12, 0x3e8

    #@3b
    const-wide/16 v14, 0x2710

    #@3d
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/app/UiAutomation;->waitForIdle(JJ)V

    #@40
    .line 88
    invoke-virtual {v10}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@43
    move-result-object v6

    #@44
    .line 89
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_4

    #@46
    .line 90
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    const-string/jumbo v13, "ERROR: null root node returned by UiTestAutomationBridge."

    #@4b
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 104
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@51
    .line 91
    return-void

    #@52
    .line 79
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "uiAutomation":Landroid/app/UiAutomation;
    :cond_3
    const/4 v12, 0x1

    #@53
    invoke-virtual {v3, v12}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setCompressedLayoutHierarchy(Z)V

    #@56
    goto :goto_2

    #@57
    .line 95
    .restart local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v10    # "uiAutomation":Landroid/app/UiAutomation;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@5a
    move-result-object v12

    #@5b
    const/4 v13, 0x0

    #@5c
    invoke-virtual {v12, v13}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    #@5f
    move-result-object v4

    #@60
    .line 96
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    #@63
    move-result v8

    #@64
    .line 97
    .local v8, "rotation":I
    new-instance v9, Landroid/graphics/Point;

    #@66
    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    #@69
    .line 98
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@6c
    .line 99
    iget v12, v9, Landroid/graphics/Point;->x:I

    #@6e
    iget v13, v9, Landroid/graphics/Point;->y:I

    #@70
    invoke-static {v6, v5, v8, v12, v13}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    .line 104
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@76
    .line 106
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@78
    .line 107
    const-string/jumbo v13, "UI hierchary dumped to: %s"

    #@7b
    const/4 v14, 0x1

    #@7c
    new-array v14, v14, [Ljava/lang/Object;

    #@7e
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@81
    move-result-object v15

    #@82
    const/16 v16, 0x0

    #@84
    aput-object v15, v14, v16

    #@86
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v13

    #@8a
    .line 106
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8d
    .line 61
    return-void

    #@8e
    .line 100
    .end local v4    # "display":Landroid/view/Display;
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "rotation":I
    .end local v9    # "size":Landroid/graphics/Point;
    .end local v10    # "uiAutomation":Landroid/app/UiAutomation;
    :catch_0
    move-exception v7

    #@8f
    .line 101
    .local v7, "re":Ljava/util/concurrent/TimeoutException;
    :try_start_2
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@91
    const-string/jumbo v13, "ERROR: could not get idle state."

    #@94
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    .line 104
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@9a
    .line 102
    return-void

    #@9b
    .line 103
    .end local v7    # "re":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v12

    #@9c
    .line 104
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    #@9f
    .line 103
    throw v12
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "creates an XML dump of current UI hierarchy"

    #@3
    return-object v0
.end method
