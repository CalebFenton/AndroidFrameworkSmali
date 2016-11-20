.class Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
.super Ljava/lang/Object;
.source "X509KeyManagerImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final alias:Ljava/lang/String;

.field final builderIndex:I

.field final checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field final keyIndex:I


# direct methods
.method constructor <init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lsun/security/ssl/X509KeyManagerImpl$CheckResult;)V
    .locals 0
    .param p1, "builderIndex"    # I
    .param p2, "keyIndex"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .param p5, "checkResult"    # Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@0
    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 450
    iput p1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    #@5
    .line 451
    iput p2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    #@7
    .line 452
    iput-object p3, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    #@9
    .line 453
    iput-object p5, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@b
    .line 449
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 456
    check-cast p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->compareTo(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)I
    .locals 3
    .param p1, "other"    # Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    #@0
    .prologue
    .line 457
    iget-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@2
    iget-object v2, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@7
    move-result v0

    #@8
    .line 458
    .local v0, "result":I
    if-nez v0, :cond_0

    #@a
    iget v1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    #@c
    iget v2, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    #@e
    sub-int v0, v1, v2

    #@10
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " (verified: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ")"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 463
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    #@25
    if-nez v1, :cond_0

    #@27
    .line 464
    return-object v0

    #@28
    .line 466
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Builder #"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget v2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, ", alias: "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method
