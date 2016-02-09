.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultStanza:Z

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeinfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/Policy$PolicyBuilder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mDefaultStanza:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 674
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    #@b
    .line 675
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    #@12
    .line 673
    return-void
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 784
    if-nez p1, :cond_0

    #@3
    .line 785
    return v1

    #@4
    .line 788
    :cond_0
    const-string/jumbo v0, "\\A[\\.\\w]+\\z"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 789
    return v1

    #@e
    .line 792
    :cond_1
    const/4 v0, 0x1

    #@f
    return v0
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Invalid package name "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 759
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 761
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_1

    #@26
    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Invalid seinfo value "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 763
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3c
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 766
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    #@42
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Ljava/lang/String;

    #@48
    .line 767
    .local v1, "pkgValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_3

    #@50
    .line 772
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    #@52
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 773
    return-object p0

    #@56
    .line 768
    :cond_3
    const-string/jumbo v0, "Conflicting seinfo value found"

    #@59
    .line 769
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@5b
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "cert"    # Ljava/lang/String;

    #@0
    .prologue
    .line 702
    if-nez p1, :cond_0

    #@2
    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid signature value "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 704
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 707
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    #@1e
    new-instance v2, Landroid/content/pm/Signature;

    #@20
    invoke-direct {v2, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    #@23
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 708
    return-object p0
.end method

.method public build()Lcom/android/server/pm/Policy;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 822
    new-instance v1, Lcom/android/server/pm/Policy;

    #@4
    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy;)V

    #@7
    .line 824
    .local v1, "p":Lcom/android/server/pm/Policy;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get1(Lcom/android/server/pm/Policy;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 825
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get3(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 826
    const-string/jumbo v0, "Missing global seinfo tag with default stanza."

    #@16
    .line 827
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@18
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 829
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get0(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 830
    const-string/jumbo v0, "Certs not allowed with default stanza."

    #@29
    .line 831
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2b
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 833
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get2(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    #@32
    move-result-object v2

    #@33
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_5

    #@39
    .line 834
    const-string/jumbo v0, "Inner package mappings not allowed with default stanza."

    #@3c
    .line 835
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3e
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 838
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get0(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    #@45
    move-result-object v3

    #@46
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@49
    move-result v3

    #@4a
    if-nez v3, :cond_3

    #@4c
    .line 839
    const-string/jumbo v0, "Missing certs with signer tag. Expecting at least one."

    #@4f
    .line 840
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@51
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    throw v2

    #@55
    .line 842
    .end local v0    # "err":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get3(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    if-nez v3, :cond_4

    #@5b
    const/4 v2, 0x1

    #@5c
    :cond_4
    invoke-static {v1}, Lcom/android/server/pm/Policy;->-get2(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    #@5f
    move-result-object v3

    #@60
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@63
    move-result v3

    #@64
    xor-int/2addr v2, v3

    #@65
    if-nez v2, :cond_5

    #@67
    .line 843
    const-string/jumbo v0, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    #@6a
    .line 845
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6c
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v2

    #@70
    .line 849
    .end local v0    # "err":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method public setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 1

    #@0
    .prologue
    .line 687
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mDefaultStanza:Z

    #@3
    .line 688
    return-object p0
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "seinfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid seinfo value "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 728
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 731
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    #@22
    if-eqz v1, :cond_1

    #@24
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 736
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    #@2e
    .line 737
    return-object p0

    #@2f
    .line 732
    :cond_2
    const-string/jumbo v0, "Duplicate seinfo tag found"

    #@32
    .line 733
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@34
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method
