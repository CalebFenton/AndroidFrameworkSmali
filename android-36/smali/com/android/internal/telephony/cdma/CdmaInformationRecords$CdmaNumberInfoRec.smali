.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaNumberInfoRec"
.end annotation


# instance fields
.field public blacklist id:I

.field public blacklist number:Ljava/lang/String;

.field public blacklist numberPlan:B

.field public blacklist numberType:B

.field public blacklist pi:B

.field public blacklist si:B


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;IIII)V
    .registers 7

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->id:I

    .line 188
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->number:Ljava/lang/String;

    int-to-byte p1, p3

    .line 189
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberType:B

    int-to-byte p1, p4

    .line 190
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberPlan:B

    int-to-byte p1, p5

    .line 191
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    int-to-byte p1, p6

    .line 192
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->si:B

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaNumberInfoRec: { id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->id:I

    .line 198
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number: <MASKED>, numberType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberPlan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberPlan:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", si: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->si:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
