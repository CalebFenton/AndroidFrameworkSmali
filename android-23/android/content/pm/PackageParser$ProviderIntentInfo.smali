.class public final Landroid/content/pm/PackageParser$ProviderIntentInfo;
.super Landroid/content/pm/PackageParser$IntentInfo;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderIntentInfo"
.end annotation


# instance fields
.field public final provider:Landroid/content/pm/PackageParser$Provider;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageParser$Provider;

    #@0
    .prologue
    .line 5081
    invoke-direct {p0}, Landroid/content/pm/PackageParser$IntentInfo;-><init>()V

    #@3
    .line 5082
    iput-object p1, p0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@5
    .line 5081
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 5086
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 5087
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProviderIntentInfo{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 5088
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
    .line 5089
    const/16 v1, 0x20

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 5090
    iget-object v1, p0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@1f
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$Provider;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    #@22
    .line 5091
    const/16 v1, 0x7d

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 5092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
