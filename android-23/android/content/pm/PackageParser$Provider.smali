.class public final Landroid/content/pm/PackageParser$Provider;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ProviderInfo;

.field public syncable:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "_info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 4948
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V

    #@3
    .line 4949
    iput-object p2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@5
    .line 4950
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@7
    iget-object v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->owner:Landroid/content/pm/PackageParser$Package;

    #@9
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    .line 4951
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    #@10
    .line 4947
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Provider;)V
    .locals 1
    .param p1, "existingProvider"    # Landroid/content/pm/PackageParser$Provider;

    #@0
    .prologue
    .line 4955
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Component;)V

    #@3
    .line 4956
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@5
    iput-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@7
    .line 4957
    iget-boolean v0, p1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    #@9
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    #@b
    .line 4954
    return-void
.end method


# virtual methods
.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4961
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    #@3
    .line 4962
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@5
    iput-object p1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@7
    .line 4960
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4966
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 4967
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Provider{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 4968
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 4969
    const/16 v1, 0x20

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 4970
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$Provider;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    #@20
    .line 4971
    const/16 v1, 0x7d

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 4972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method
