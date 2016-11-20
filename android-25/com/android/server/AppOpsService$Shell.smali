.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mode:I

.field modeStr:Ljava/lang/String;

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .locals 1
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    #@0
    .prologue
    .line 1655
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 1647
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@6
    .line 1656
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    #@8
    .line 1657
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@a
    .line 1655
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1673
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v2

    #@4
    return v2

    #@5
    .line 1674
    :catch_0
    move-exception v0

    #@6
    .line 1677
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 1678
    :catch_1
    move-exception v1

    #@c
    .line 1681
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 1682
    :catch_2
    move-exception v0

    #@12
    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Error: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d
    .line 1684
    const/4 v2, -0x1

    #@2e
    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1662
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onHelp()V
    .locals 1

    #@0
    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 1668
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    #@7
    .line 1666
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 5
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1708
    const/4 v1, -0x2

    #@4
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@6
    .line 1709
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@8
    .line 1710
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    #@a
    .line 1711
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@10
    .line 1712
    const-string/jumbo v1, "--user"

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1713
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@23
    goto :goto_0

    #@24
    .line 1715
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@26
    if-nez v1, :cond_2

    #@28
    .line 1716
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@2a
    goto :goto_0

    #@2b
    .line 1717
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 1718
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    #@31
    .line 1723
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@33
    if-nez v1, :cond_4

    #@35
    .line 1724
    const-string/jumbo v1, "Error: Operation not specified."

    #@38
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 1725
    return v3

    #@3c
    .line 1727
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@3e
    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    #@41
    move-result v1

    #@42
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@44
    .line 1728
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@46
    if-gez v1, :cond_5

    #@48
    .line 1729
    return v3

    #@49
    .line 1731
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    #@4b
    if-eqz v1, :cond_6

    #@4d
    .line 1732
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    #@4f
    invoke-virtual {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    #@52
    move-result v1

    #@53
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    #@55
    if-gez v1, :cond_7

    #@57
    .line 1733
    return v3

    #@58
    .line 1736
    :cond_6
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    #@5a
    .line 1738
    :cond_7
    return v4
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 7
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 1742
    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@6
    .line 1743
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@8
    .line 1744
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@a
    .line 1745
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@10
    .line 1746
    const-string/jumbo v1, "--user"

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1747
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@23
    goto :goto_0

    #@24
    .line 1749
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@26
    if-nez v1, :cond_2

    #@28
    .line 1750
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@2a
    goto :goto_0

    #@2b
    .line 1751
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 1752
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@31
    .line 1757
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@33
    if-nez v1, :cond_4

    #@35
    .line 1758
    const-string/jumbo v1, "Error: Package name not specified."

    #@38
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 1759
    return v5

    #@3c
    .line 1760
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@3e
    if-nez v1, :cond_5

    #@40
    if-eqz p1, :cond_5

    #@42
    .line 1761
    const-string/jumbo v1, "Error: Operation not specified."

    #@45
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 1762
    return v5

    #@49
    .line 1764
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@4b
    if-eqz v1, :cond_6

    #@4d
    .line 1765
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    #@4f
    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    #@52
    move-result v1

    #@53
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@55
    .line 1766
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@57
    if-gez v1, :cond_7

    #@59
    .line 1767
    return v5

    #@5a
    .line 1770
    :cond_6
    iput v5, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@5c
    .line 1772
    :cond_7
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@5e
    if-ne v1, v2, :cond_8

    #@60
    .line 1773
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@63
    move-result v1

    #@64
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@66
    .line 1775
    :cond_8
    const-string/jumbo v1, "root"

    #@69
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v1

    #@6f
    if-eqz v1, :cond_9

    #@71
    .line 1776
    iput v6, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    #@73
    .line 1781
    :goto_1
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    #@75
    if-gez v1, :cond_a

    #@77
    .line 1782
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v2, "Error: No UID for "

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    const-string/jumbo v2, " in user "

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 1783
    return v5

    #@9e
    .line 1778
    :cond_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@a1
    move-result-object v1

    #@a2
    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@a4
    .line 1779
    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    #@a6
    const/16 v4, 0x2000

    #@a8
    .line 1778
    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    #@ab
    move-result v1

    #@ac
    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    #@ae
    goto :goto_1

    #@af
    .line 1785
    :cond_a
    return v6
.end method

.method strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "modeStr"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1689
    const-string/jumbo v1, "allow"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1691
    const/4 v1, 0x0

    #@a
    return v1

    #@b
    .line 1689
    :cond_0
    const-string/jumbo v1, "deny"

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1693
    const/4 v1, 0x2

    #@15
    return v1

    #@16
    .line 1689
    :cond_1
    const-string/jumbo v1, "ignore"

    #@19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 1695
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 1689
    :cond_2
    const-string/jumbo v1, "default"

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 1697
    const/4 v1, 0x3

    #@2b
    return v1

    #@2c
    .line 1700
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result v1

    #@30
    return v1

    #@31
    .line 1701
    :catch_0
    move-exception v0

    #@32
    .line 1703
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Error: Mode "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, " is not valid"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 1704
    const/4 v1, -0x1

    #@51
    return v1
.end method
