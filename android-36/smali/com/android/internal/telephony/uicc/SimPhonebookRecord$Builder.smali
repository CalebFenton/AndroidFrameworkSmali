.class public final Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
.super Ljava/lang/Object;
.source "SimPhonebookRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdditionalNumbers:[Ljava/lang/String;

.field private blacklist mAlphaTag:Ljava/lang/String;

.field private blacklist mEmails:[Ljava/lang/String;

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mRecordId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mRecordId:I

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mAlphaTag:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .registers 3

    .line 190
    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->-$$Nest$fputmAlphaTag(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Ljava/lang/String;)V

    .line 192
    iget v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mRecordId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->-$$Nest$fputmRecordId(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;I)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->-$$Nest$fputmNumber(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mEmails:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 195
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->-$$Nest$fputmEmails(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;[Ljava/lang/String;)V

    .line 197
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mAdditionalNumbers:[Ljava/lang/String;

    if-eqz p0, :cond_22

    .line 198
    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->-$$Nest$fputmAdditionalNumbers(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;[Ljava/lang/String;)V

    :cond_22
    return-object v0
.end method

.method public blacklist setAdditionalNumbers([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mAdditionalNumbers:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setAlphaTag(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mAlphaTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEmails([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mEmails:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setRecordId(I)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
    .registers 2

    .line 204
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->mRecordId:I

    return-object p0
.end method
