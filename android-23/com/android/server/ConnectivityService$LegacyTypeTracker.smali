.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CSLegacyTypeTracker"

.field private static final VDBG:Z


# instance fields
.field private mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    #@0
    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 467
    const/16 v0, 0x12

    #@7
    new-array v0, v0, [Ljava/util/ArrayList;

    #@9
    .line 466
    iput-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@b
    .line 465
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 606
    const-string/jumbo v0, "CSLegacyTypeTracker"

    #@3
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 605
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I
    .param p4, "isDefaultNetwork"    # Z

    #@0
    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Sending "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 494
    const-string/jumbo v1, " broadcast for type "

    #@13
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 494
    const-string/jumbo v1, " "

    #@1e
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 494
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 495
    const-string/jumbo v1, " isDefaultNetwork="

    #@2d
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->log(Ljava/lang/String;)V

    #@3c
    .line 491
    return-void
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 576
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 577
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@11
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, "/"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@22
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 580
    .local v1, "state":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, " "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    return-object v2

    #@47
    .line 576
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "null"

    #@4a
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 579
    :cond_1
    const-string/jumbo v1, "???/???"

    #@4e
    .restart local v1    # "state":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 502
    return-void

    #@7
    .line 506
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@9
    aget-object v1, v2, p1

    #@b
    .line 507
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Attempting to register duplicate agent for type "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, ": "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@33
    .line 509
    return-void

    #@34
    .line 512
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 515
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@39
    invoke-static {v2, p2}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@3c
    move-result v0

    #@3d
    .line 516
    .local v0, "isDefaultNetwork":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v2

    #@41
    const/4 v3, 0x1

    #@42
    if-eq v2, v3, :cond_2

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 517
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@48
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    #@4b
    .line 518
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@4d
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@4f
    invoke-static {v2, p2, v3, p1}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    #@52
    .line 500
    :cond_3
    return-void
.end method

.method public addSupportedType(I)V
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@2
    aget-object v0, v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "legacy list for type "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "already initialized"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 472
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@29
    new-instance v1, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2e
    aput-object v1, v0, p1

    #@30
    .line 470
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 584
    const-string/jumbo v3, "mLegacyTypeTracker:"

    #@3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 585
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9
    .line 586
    const-string/jumbo v3, "Supported types:"

    #@c
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 587
    const/4 v2, 0x0

    #@10
    .local v2, "type":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@12
    array-length v3, v3

    #@13
    if-ge v2, v3, :cond_1

    #@15
    .line 588
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@17
    aget-object v3, v3, v2

    #@19
    if-eqz v3, :cond_0

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, " "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 587
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 590
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@38
    .line 591
    const-string/jumbo v3, "Current state:"

    #@3b
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 592
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@41
    .line 593
    const/4 v2, 0x0

    #@42
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@44
    array-length v3, v3

    #@45
    if-ge v2, v3, :cond_4

    #@47
    .line 594
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@49
    aget-object v3, v3, v2

    #@4b
    if-eqz v3, :cond_2

    #@4d
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@4f
    aget-object v3, v3, v2

    #@51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v3

    #@55
    if-nez v3, :cond_3

    #@57
    .line 593
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 595
    :cond_3
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@5c
    aget-object v3, v3, v2

    #@5e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v1

    #@62
    .local v1, "nai$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v3

    #@66
    if-eqz v3, :cond_2

    #@68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@6e
    .line 596
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    const-string/jumbo v4, " "

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8d
    goto :goto_2

    #@8e
    .line 599
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "nai$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@91
    .line 600
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@94
    .line 601
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@97
    .line 583
    return-void
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@8
    aget-object v0, v0, p1

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 486
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0

    #@12
    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@14
    aget-object v0, v0, p1

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1d
    return-object v0
.end method

.method public isTypeSupported(I)Z
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 479
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@9
    aget-object v1, v1, p1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "wasDefault"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 524
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@3
    aget-object v0, v4, p1

    #@5
    .line 525
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 526
    :cond_0
    return-void

    #@e
    .line 529
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@14
    invoke-virtual {v4, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    .line 531
    .local v3, "wasFirstNetwork":Z
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_2

    #@1e
    .line 532
    return-void

    #@1f
    .line 535
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@21
    .line 537
    .local v2, "state":Landroid/net/NetworkInfo$DetailedState;
    if-nez v3, :cond_3

    #@23
    if-eqz p3, :cond_4

    #@25
    .line 538
    :cond_3
    invoke-direct {p0, p2, v2, p1, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    #@28
    .line 539
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@2a
    invoke-static {v4, p2, v2, p1}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    #@2d
    .line 542
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_5

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Other network available for type "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 544
    const-string/jumbo v5, ", sending connected broadcast"

    #@48
    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->log(Ljava/lang/String;)V

    #@53
    .line 545
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@59
    .line 546
    .local v1, "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@5b
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@5e
    move-result v4

    #@5f
    invoke-direct {p0, v1, v2, p1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    #@62
    .line 547
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@64
    invoke-static {v4, v1, v2, p1}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    #@67
    .line 523
    .end local v1    # "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    return-void
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "wasDefault"    # Z

    #@0
    .prologue
    .line 554
    const/4 v0, 0x0

    #@1
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 555
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@9
    .line 554
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 552
    :cond_0
    return-void
.end method

.method public update(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 562
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@3
    invoke-static {v6, p1}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@6
    move-result v1

    #@7
    .line 563
    .local v1, "isDefault":Z
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@9
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@c
    move-result-object v4

    #@d
    .line 564
    .local v4, "state":Landroid/net/NetworkInfo$DetailedState;
    const/4 v5, 0x0

    #@e
    .local v5, "type":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@10
    array-length v6, v6

    #@11
    if-ge v5, v6, :cond_4

    #@13
    .line 565
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    #@15
    aget-object v3, v6, v5

    #@17
    .line 566
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v3, :cond_2

    #@19
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    .line 567
    :goto_1
    if-eqz v3, :cond_3

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v6

    #@23
    if-lez v6, :cond_3

    #@25
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    if-ne p1, v6, :cond_3

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 568
    .local v2, "isFirst":Z
    :goto_2
    if-nez v2, :cond_0

    #@2e
    if-eqz v0, :cond_1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 569
    :cond_0
    invoke-direct {p0, p1, v4, v5, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    #@35
    .line 570
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    #@37
    invoke-static {v6, p1, v4, v5}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    #@3a
    .line 564
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 566
    .end local v2    # "isFirst":Z
    :cond_2
    const/4 v0, 0x0

    #@3e
    .local v0, "contains":Z
    goto :goto_1

    #@3f
    .line 567
    .end local v0    # "contains":Z
    :cond_3
    const/4 v2, 0x0

    #@40
    .restart local v2    # "isFirst":Z
    goto :goto_2

    #@41
    .line 561
    .end local v2    # "isFirst":Z
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_4
    return-void
.end method
