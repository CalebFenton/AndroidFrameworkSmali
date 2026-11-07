.class public Lcom/android/internal/telephony/SmsHeader$ConcatRef;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcatRef"
.end annotation


# instance fields
.field public greylist-max-o isEightBits:Z

.field public greylist msgCount:I

.field public greylist refNumber:I

.field public greylist seqNumber:I


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 139
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 140
    .local v2, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-ne v3, v4, :cond_2e

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 138
    .end local v2    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 148
    iget v0, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
