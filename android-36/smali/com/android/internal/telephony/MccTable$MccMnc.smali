.class public Lcom/android/internal/telephony/MccTable$MccMnc;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MccMnc"
.end annotation


# instance fields
.field public final blacklist mcc:Ljava/lang/String;

.field public final blacklist mnc:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    return-void
.end method

.method public static blacklist fromOperatorNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/MccTable$MccMnc;
    .registers 4

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 114
    :try_start_6
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_a} :catch_14

    .line 121
    :try_start_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a .. :try_end_e} :catch_e

    .line 125
    :catch_e
    new-instance p0, Lcom/android/internal/telephony/MccTable$MccMnc;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MccTable$MccMnc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_14
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 144
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/MccTable$MccMnc;

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object p0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    .line 146
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MccMnc{mcc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mnc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
