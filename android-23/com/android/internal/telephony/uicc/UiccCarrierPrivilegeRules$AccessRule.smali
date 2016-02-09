.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessRule"
.end annotation


# instance fields
.field public accessType:J

.field public certificateHash:[B

.field public packageName:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;J)V
    .locals 1
    .param p1, "certificateHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accessType"    # J

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->certificateHash:[B

    #@5
    .line 134
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    #@7
    .line 135
    iput-wide p3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->accessType:J

    #@9
    .line 132
    return-void
.end method


# virtual methods
.method matches([BLjava/lang/String;)Z
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    if-eqz p1, :cond_1

    #@2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->certificateHash:[B

    #@4
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 139
    :goto_0
    return v0

    #@15
    .line 140
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 139
    :cond_1
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "cert: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->certificateHash:[B

    #@e
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " pkg: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    #@1f
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 146
    const-string/jumbo v1, " access: "

    #@26
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 146
    iget-wide v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->accessType:J

    #@2c
    .line 145
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method
