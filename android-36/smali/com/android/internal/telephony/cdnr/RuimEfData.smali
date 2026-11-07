.class public final Lcom/android/internal/telephony/cdnr/RuimEfData;
.super Ljava/lang/Object;
.source "RuimEfData.java"

# interfaces
.implements Lcom/android/internal/telephony/cdnr/EfData;


# instance fields
.field private final blacklist mRuim:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/RuimEfData;->mRuim:Lcom/android/internal/telephony/uicc/RuimRecords;

    return-void
.end method


# virtual methods
.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/RuimEfData;->mRuim:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return-object p0
.end method

.method public blacklist getServiceProviderNameDisplayCondition(Z)I
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/RuimEfData;->mRuim:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x2

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
