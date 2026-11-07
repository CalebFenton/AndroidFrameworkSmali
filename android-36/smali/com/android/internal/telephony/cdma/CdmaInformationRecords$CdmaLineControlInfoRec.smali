.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaLineControlInfoRec"
.end annotation


# instance fields
.field public blacklist lineCtrlPolarityIncluded:B

.field public blacklist lineCtrlPowerDenial:B

.field public blacklist lineCtrlReverse:B

.field public blacklist lineCtrlToggle:B


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 5

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    .line 243
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    int-to-byte p1, p2

    .line 244
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlToggle:B

    int-to-byte p1, p3

    .line 245
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlReverse:B

    int-to-byte p1, p4

    .line 246
    iput-byte p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPowerDenial:B

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaLineControlInfoRec: { lineCtrlPolarityIncluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lineCtrlToggle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlToggle:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lineCtrlReverse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlReverse:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lineCtrlPowerDenial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPowerDenial:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
