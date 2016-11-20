.class Ljava/util/logging/LogManager$LoggerContext;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggerContext"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final namedLoggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private final requiresDefaultLoggers:Z

.field private final root:Ljava/util/logging/LogManager$LogNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/logging/LogManager$LoggerContext;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/logging/LogManager$LoggerContext;->-assertionsDisabled:Z

    #@b
    .line 457
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 464
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Z)V

    #@4
    .line 463
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager$LoggerContext;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "requiresDefaultLoggers"    # Z

    #@0
    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 459
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@a
    .line 467
    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, v1, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    #@10
    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    #@12
    .line 468
    iput-boolean p1, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    #@14
    .line 466
    return-void
.end method

.method private ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V
    .locals 2
    .param p1, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 518
    iget-boolean v1, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 519
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 520
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 521
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@15
    move-result-object v1

    #@16
    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    #@19
    .line 523
    :cond_0
    const-string/jumbo v1, "global"

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 524
    sget-object v1, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@24
    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    #@27
    .line 517
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private ensureDefaultLogger(Ljava/util/logging/Logger;)V
    .locals 3
    .param p1, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 536
    iget-boolean v1, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    if-nez p1, :cond_2

    #@7
    .line 544
    :cond_0
    sget-boolean v1, Ljava/util/logging/LogManager$LoggerContext;->-assertionsDisabled:Z

    #@9
    if-nez v1, :cond_5

    #@b
    if-nez p1, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    :cond_1
    if-nez v0, :cond_5

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 537
    :cond_2
    sget-object v1, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@18
    if-eq p1, v1, :cond_3

    #@1a
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@21
    move-result-object v1

    #@22
    if-ne p1, v1, :cond_0

    #@24
    .line 550
    :cond_3
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@26
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_4

    #@30
    .line 557
    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    #@33
    .line 529
    :cond_4
    return-void

    #@34
    .line 546
    :cond_5
    return-void
.end method

.method private ensureInitialized()V
    .locals 1

    #@0
    .prologue
    .line 486
    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 488
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    #@f
    .line 489
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@11
    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    #@14
    .line 485
    :cond_0
    return-void
.end method

.method private processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .locals 8
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 665
    new-instance v3, Ljava/util/logging/LogManager$LoggerContext$1;

    #@4
    invoke-direct {v3, p0, p1, p2}, Ljava/util/logging/LogManager$LoggerContext$1;-><init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/lang/String;)V

    #@7
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@a
    .line 677
    const/4 v0, 0x1

    #@b
    .line 679
    .local v0, "ix":I
    :goto_0
    const-string/jumbo v3, "."

    #@e
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@11
    move-result v1

    #@12
    .line 680
    .local v1, "ix2":I
    if-gez v1, :cond_0

    #@14
    .line 664
    return-void

    #@15
    .line 683
    :cond_0
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 684
    .local v2, "pname":Ljava/lang/String;
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@1c
    move-result-object v3

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, ".level"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    if-nez v3, :cond_1

    #@37
    .line 685
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@3a
    move-result-object v3

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    const-string/jumbo v5, ".handlers"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    if-eqz v3, :cond_2

    #@55
    .line 688
    :cond_1
    invoke-virtual {p0, v2, v6}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    #@58
    .line 690
    :cond_2
    add-int/lit8 v0, v1, 0x1

    #@5a
    goto :goto_0
.end method


# virtual methods
.method addLocalLogger(Ljava/util/logging/Logger;)Z
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 563
    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method addLocalLogger(Ljava/util/logging/Logger;Ljava/util/logging/LogManager;)Z
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "manager"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 568
    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    #@2
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method addLocalLogger(Ljava/util/logging/Logger;Z)Z
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "addDefaultLoggersIfNeeded"    # Z

    #@0
    .prologue
    .line 572
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method declared-synchronized addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z
    .locals 9
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "addDefaultLoggersIfNeeded"    # Z
    .param p3, "manager"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 588
    if-eqz p2, :cond_0

    #@3
    .line 589
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;->ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V

    #@6
    .line 592
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 593
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    #@c
    .line 594
    new-instance v7, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@13
    monitor-exit p0

    #@14
    throw v7

    #@15
    .line 597
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v7, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@17
    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@1d
    .line 598
    .local v6, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v6, :cond_2

    #@1f
    .line 599
    invoke-virtual {v6}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    if-nez v7, :cond_6

    #@25
    .line 603
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->removeLogger(Ljava/lang/String;)V

    #@28
    .line 612
    :cond_2
    new-instance v6, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@2a
    .end local v6    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    invoke-direct {v6, p3, p1}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V

    #@30
    .line 613
    .restart local v6    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    iget-object v7, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@32
    invoke-virtual {v7, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 616
    new-instance v7, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    const-string/jumbo v8, ".level"

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    const/4 v8, 0x0

    #@4a
    invoke-virtual {p3, v7, v8}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@4d
    move-result-object v0

    #@4e
    .line 617
    .local v0, "level":Ljava/util/logging/Level;
    if-eqz v0, :cond_3

    #@50
    .line 618
    invoke-static {p1, v0}, Ljava/util/logging/LogManager;->-wrap2(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    #@53
    .line 621
    :cond_3
    invoke-direct {p0, p1, v1}, Ljava/util/logging/LogManager$LoggerContext;->processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V

    #@56
    .line 624
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;

    #@59
    move-result-object v2

    #@5a
    .line 625
    .local v2, "node":Ljava/util/logging/LogManager$LogNode;
    iput-object v6, v2, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    #@5c
    .line 626
    const/4 v5, 0x0

    #@5d
    .line 627
    .local v5, "parent":Ljava/util/logging/Logger;
    iget-object v4, v2, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    #@5f
    .line 628
    .end local v5    # "parent":Ljava/util/logging/Logger;
    .local v4, "nodep":Ljava/util/logging/LogManager$LogNode;
    :goto_0
    if-eqz v4, :cond_4

    #@61
    .line 629
    iget-object v3, v4, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    #@63
    .line 630
    .local v3, "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v3, :cond_7

    #@65
    .line 631
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    #@68
    move-result-object v5

    #@69
    check-cast v5, Ljava/util/logging/Logger;

    #@6b
    .line 632
    .local v5, "parent":Ljava/util/logging/Logger;
    if-eqz v5, :cond_7

    #@6d
    .line 639
    .end local v3    # "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    .end local v5    # "parent":Ljava/util/logging/Logger;
    :cond_4
    if-eqz v5, :cond_5

    #@6f
    .line 640
    invoke-static {p1, v5}, Ljava/util/logging/LogManager;->-wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@72
    .line 643
    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    #@75
    .line 645
    invoke-virtual {v6, v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->setNode(Ljava/util/logging/LogManager$LogNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .line 646
    const/4 v7, 0x1

    #@79
    monitor-exit p0

    #@7a
    return v7

    #@7b
    .line 606
    .end local v0    # "level":Ljava/util/logging/Level;
    .end local v2    # "node":Ljava/util/logging/LogManager$LogNode;
    .end local v4    # "nodep":Ljava/util/logging/LogManager$LogNode;
    :cond_6
    const/4 v7, 0x0

    #@7c
    monitor-exit p0

    #@7d
    return v7

    #@7e
    .line 636
    .restart local v0    # "level":Ljava/util/logging/Level;
    .restart local v2    # "node":Ljava/util/logging/LogManager$LogNode;
    .restart local v3    # "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v4    # "nodep":Ljava/util/logging/LogManager$LogNode;
    :cond_7
    :try_start_2
    iget-object v4, v4, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@80
    goto :goto_0
.end method

.method demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 474
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method declared-synchronized findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 497
    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    #@5
    .line 498
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 499
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v1, :cond_0

    #@f
    monitor-exit p0

    #@10
    .line 500
    return-object v3

    #@11
    .line 502
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/logging/Logger;

    #@17
    .line 503
    .local v0, "logger":Ljava/util/logging/Logger;
    if-nez v0, :cond_1

    #@19
    .line 506
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;->removeLogger(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_1
    monitor-exit p0

    #@1d
    .line 508
    return-object v0

    #@1e
    .end local v0    # "logger":Ljava/util/logging/Logger;
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 658
    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    #@4
    .line 659
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 697
    if-eqz p1, :cond_0

    #@3
    const-string/jumbo v4, ""

    #@6
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 698
    :cond_0
    iget-object v4, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    #@e
    return-object v4

    #@f
    .line 700
    :cond_1
    iget-object v3, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    #@11
    .line 701
    .local v3, "node":Ljava/util/logging/LogManager$LogNode;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v4

    #@15
    if-lez v4, :cond_5

    #@17
    .line 702
    const-string/jumbo v4, "."

    #@1a
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1d
    move-result v2

    #@1e
    .line 704
    .local v2, "ix":I
    if-lez v2, :cond_4

    #@20
    .line 705
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 706
    .local v1, "head":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    #@26
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    .line 711
    :goto_1
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    #@2c
    if-nez v4, :cond_2

    #@2e
    .line 712
    new-instance v4, Ljava/util/HashMap;

    #@30
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@33
    iput-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    #@35
    .line 714
    :cond_2
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    #@37
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Ljava/util/logging/LogManager$LogNode;

    #@3d
    .line 715
    .local v0, "child":Ljava/util/logging/LogManager$LogNode;
    if-nez v0, :cond_3

    #@3f
    .line 716
    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    #@41
    .end local v0    # "child":Ljava/util/logging/LogManager$LogNode;
    invoke-direct {v0, v3, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    #@44
    .line 717
    .restart local v0    # "child":Ljava/util/logging/LogManager$LogNode;
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    #@46
    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 719
    :cond_3
    move-object v3, v0

    #@4a
    goto :goto_0

    #@4b
    .line 708
    .end local v0    # "child":Ljava/util/logging/LogManager$LogNode;
    .end local v1    # "head":Ljava/lang/String;
    :cond_4
    move-object v1, p1

    #@4c
    .line 709
    .restart local v1    # "head":Ljava/lang/String;
    const-string/jumbo p1, ""

    #@4f
    goto :goto_1

    #@50
    .line 721
    .end local v1    # "head":Ljava/lang/String;
    .end local v2    # "ix":I
    :cond_5
    return-object v3
.end method

.method removeLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 651
    return-void
.end method
