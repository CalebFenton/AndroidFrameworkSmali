.class public Landroid/content/pm/PackageParser$Component;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field componentName:Landroid/content/ComponentName;

.field componentShortName:Ljava/lang/String;

.field public final intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TII;>;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public final owner:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Component",
            "<TII;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4618
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    .local p1, "clone":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4619
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@5
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@7
    .line 4620
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    #@9
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    #@b
    .line 4621
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@f
    .line 4622
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@11
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@13
    .line 4623
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    #@15
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    #@17
    .line 4618
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    #@1
    .line 4539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 4540
    iput-object p1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@6
    .line 4541
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    #@8
    .line 4542
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@a
    .line 4539
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "outInfo"    # Landroid/content/pm/ComponentInfo;

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v6, 0x0

    #@1
    .line 4590
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V

    #@4
    .line 4591
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    #@6
    aget-object v0, v0, v6

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4592
    return-void

    #@b
    .line 4595
    :cond_0
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 4597
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@11
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@15
    const/16 v1, 0x8

    #@17
    if-lt v0, v1, :cond_3

    #@19
    .line 4598
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@1b
    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    #@1d
    .line 4599
    const/16 v3, 0x400

    #@1f
    .line 4598
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 4606
    .local v2, "pname":Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@25
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@29
    .line 4607
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@2b
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@2f
    .line 4608
    iget v3, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    #@31
    iget-object v4, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    #@33
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    #@35
    .line 4606
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->-wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    #@3b
    .line 4611
    .end local v2    # "pname":Ljava/lang/CharSequence;
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    #@3d
    if-eqz v0, :cond_2

    #@3f
    .line 4612
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@41
    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    #@43
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@46
    move-result v0

    #@47
    iput v0, p2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    #@49
    .line 4615
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@4b
    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    #@4d
    const/4 v3, 0x1

    #@4e
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@51
    move-result v0

    #@52
    iput-boolean v0, p2, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@54
    .line 4589
    return-void

    #@55
    .line 4604
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    #@57
    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    #@59
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .restart local v2    # "pname":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V
    .locals 9
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParsePackageItemArgs;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 4545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4546
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    #@7
    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@9
    .line 4547
    new-instance v5, Ljava/util/ArrayList;

    #@b
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    #@10
    .line 4548
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@12
    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    #@14
    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 4549
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    #@1a
    .line 4550
    iput-object v7, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@1c
    .line 4551
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    #@1e
    new-instance v6, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    iget-object v7, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    const-string/jumbo v7, " does not specify android:name"

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    aput-object v6, v5, v8

    #@36
    .line 4552
    return-void

    #@37
    .line 4556
    :cond_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@39
    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3d
    iget-object v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    #@3f
    invoke-static {v5, v3, v6}, Landroid/content/pm/PackageParser;->-wrap0(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 4555
    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@45
    .line 4557
    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@47
    if-nez v5, :cond_1

    #@49
    .line 4558
    iput-object v7, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@4b
    .line 4559
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    #@4d
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    iget-object v7, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    const-string/jumbo v7, " does not have valid android:name"

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    aput-object v6, v5, v8

    #@65
    .line 4560
    return-void

    #@66
    .line 4563
    :cond_1
    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@68
    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@6a
    .line 4565
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@6c
    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    #@6e
    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@71
    move-result v1

    #@72
    .line 4566
    .local v1, "iconVal":I
    if-eqz v1, :cond_2

    #@74
    .line 4567
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    #@76
    .line 4568
    iput-object v7, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@78
    .line 4571
    :cond_2
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@7a
    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    #@7c
    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7f
    move-result v2

    #@80
    .line 4572
    .local v2, "logoVal":I
    if-eqz v2, :cond_3

    #@82
    .line 4573
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    #@84
    .line 4576
    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@86
    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    #@88
    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8b
    move-result v0

    #@8c
    .line 4577
    .local v0, "bannerVal":I
    if-eqz v0, :cond_4

    #@8e
    .line 4578
    iput v0, p2, Landroid/content/pm/PackageItemInfo;->banner:I

    #@90
    .line 4581
    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    #@92
    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    #@94
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@97
    move-result-object v4

    #@98
    .line 4582
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_5

    #@9a
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    #@9c
    iput v5, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    #@9e
    if-nez v5, :cond_5

    #@a0
    .line 4583
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@a3
    move-result-object v5

    #@a4
    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@a6
    .line 4586
    :cond_5
    iget-object v5, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@a8
    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@aa
    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@ac
    .line 4545
    return-void
.end method


# virtual methods
.method public appendComponentShortName(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 4638
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@8
    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 4637
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 4627
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4628
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@6
    return-object v0

    #@7
    .line 4630
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 4631
    new-instance v0, Landroid/content/ComponentName;

    #@d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@f
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@13
    .line 4632
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@15
    .line 4631
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@1a
    .line 4634
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@1c
    return-object v0
.end method

.method public printComponentShortName(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 4642
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    #@8
    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 4641
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    #@1
    .line 4646
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    #@3
    .line 4647
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    #@5
    .line 4645
    return-void
.end method
