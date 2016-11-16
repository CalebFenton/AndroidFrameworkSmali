.class public Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageFilter"
.end annotation


# instance fields
.field private mInvalidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@a
    .line 54
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@11
    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addInvalidPackages(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p1, "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 63
    return-void
.end method

.method public addValidPackages(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p1, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 59
    return-void
.end method

.method public checkEnteringPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 87
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@b
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 88
    return v1

    #@12
    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@14
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@17
    move-result v0

    #@18
    if-lez v0, :cond_1

    #@1a
    .line 91
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@1c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 92
    return v1

    #@23
    .line 95
    :cond_1
    const/4 v0, 0x1

    #@24
    return v0
.end method

.method public dump()V
    .locals 4

    #@0
    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@5
    move-result v1

    #@6
    if-lez v1, :cond_0

    #@8
    .line 100
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 101
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 102
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, ":AllowPackage: "

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/lang/String;

    #@28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 105
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@36
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@39
    move-result v1

    #@3a
    if-lez v1, :cond_1

    #@3c
    .line 106
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@3e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v0

    #@42
    .line 107
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 108
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, ":DisallowPackage: "

    #@52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v1

    #@5a
    check-cast v1, Ljava/lang/String;

    #@5c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@67
    goto :goto_1

    #@68
    .line 98
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public hasValidPackages()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 68
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isPackageInvalid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPackageValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
