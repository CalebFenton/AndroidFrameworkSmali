.class public Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialSmsMsg"
.end annotation


# instance fields
.field public greylist-max-o msgCount:I

.field public greylist-max-o msgIndType:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 159
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 160
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 161
    .local v2, "that":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    .line 159
    .end local v2    # "that":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_24
    :goto_24
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 167
    iget v0, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
