.class public final Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;
.super Ljava/lang/Object;
.source "IccRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlmnNetworkName"
.end annotation


# instance fields
.field public final blacklist fullName:Ljava/lang/String;

.field public final blacklist shortName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    .line 1594
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1617
    :cond_4
    instance-of v1, p1, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1619
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    .line 1620
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    .line 1621
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1603
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    return-object p0

    .line 1605
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{fullName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shortName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->shortName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
