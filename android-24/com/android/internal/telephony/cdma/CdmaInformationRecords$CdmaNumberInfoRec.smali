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
.field public id:I

.field public number:Ljava/lang/String;

.field public numberPlan:B

.field public numberType:B

.field public pi:B

.field public si:B


# direct methods
.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "numberType"    # I
    .param p4, "numberPlan"    # I
    .param p5, "pi"    # I
    .param p6, "si"    # I

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->number:Ljava/lang/String;

    #@5
    .line 160
    int-to-byte v0, p3

    #@6
    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberType:B

    #@8
    .line 161
    int-to-byte v0, p4

    #@9
    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberPlan:B

    #@b
    .line 162
    int-to-byte v0, p5

    #@c
    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    #@e
    .line 163
    int-to-byte v0, p6

    #@f
    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->si:B

    #@11
    .line 158
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CdmaNumberInfoRec: { id: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 169
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->id:I

    #@e
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 170
    const-string/jumbo v1, ", number: <MASKED>"

    #@19
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 171
    const-string/jumbo v1, ", numberType: "

    #@20
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 171
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberType:B

    #@26
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 172
    const-string/jumbo v1, ", numberPlan: "

    #@2d
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 172
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberPlan:B

    #@33
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 173
    const-string/jumbo v1, ", pi: "

    #@3a
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 173
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    #@40
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 174
    const-string/jumbo v1, ", si: "

    #@47
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 174
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->si:B

    #@4d
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 175
    const-string/jumbo v1, " }"

    #@54
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    return-object v0
.end method
