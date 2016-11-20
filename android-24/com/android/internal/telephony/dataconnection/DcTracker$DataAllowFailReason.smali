.class public Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAllowFailReason"
.end annotation


# instance fields
.field private mDataAllowFailReasonSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 183
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@a
    .line 182
    return-void
.end method


# virtual methods
.method public addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    .line 185
    return-void
.end method

.method public clearAllReasons()V
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@5
    .line 203
    return-void
.end method

.method public getDataAllowFailReason()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 191
    .local v0, "failureReason":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "isDataAllowed: No"

    #@8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 192
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "reason$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@1d
    .line 193
    .local v1, "reason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->mFailReasonStr:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    goto :goto_0

    #@23
    .line 195
    .end local v1    # "reason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method public isFailForSingleReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)Z
    .locals 2
    .param p1, "failReasonType"    # Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 199
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    #@3
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

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
