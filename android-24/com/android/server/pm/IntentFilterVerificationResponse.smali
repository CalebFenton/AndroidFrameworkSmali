.class Lcom/android/server/pm/IntentFilterVerificationResponse;
.super Ljava/lang/Object;
.source "IntentFilterVerificationResponse.java"


# instance fields
.field public final callerUid:I

.field public final code:I

.field public final failedDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "callerUid"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 27
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    #@5
    .line 29
    iput p2, p0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    #@7
    .line 30
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationResponse;->failedDomains:Ljava/util/List;

    #@9
    .line 27
    return-void
.end method


# virtual methods
.method public getFailedDomainsString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 35
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationResponse;->failedDomains:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "domain$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 36
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1a
    move-result v3

    #@1b
    if-lez v3, :cond_0

    #@1d
    .line 37
    const-string/jumbo v3, " "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 39
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 41
    .end local v0    # "domain":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method
