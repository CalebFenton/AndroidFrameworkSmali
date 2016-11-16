.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaRedirectingNumberInfoRec"
.end annotation


# static fields
.field public static final REASON_CALLED_DTE_OUT_OF_ORDER:I = 0x9

.field public static final REASON_CALL_FORWARDING_BUSY:I = 0x1

.field public static final REASON_CALL_FORWARDING_BY_THE_CALLED_DTE:I = 0xa

.field public static final REASON_CALL_FORWARDING_NO_REPLY:I = 0x2

.field public static final REASON_CALL_FORWARDING_UNCONDITIONAL:I = 0xf

.field public static final REASON_UNKNOWN:I


# instance fields
.field public numberInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

.field public redirectingReason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I
    .param p3, "numberPlan"    # I
    .param p4, "pi"    # I
    .param p5, "si"    # I
    .param p6, "reason"    # I

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 192
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    #@5
    const/4 v1, 0x5

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->numberInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    #@10
    .line 194
    iput p6, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->redirectingReason:I

    #@12
    .line 191
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CdmaNumberInfoRec: { numberInfoRec: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->numberInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    #@e
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 201
    const-string/jumbo v1, ", redirectingReason: "

    #@15
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 201
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->redirectingReason:I

    #@1b
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 202
    const-string/jumbo v1, " }"

    #@22
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
