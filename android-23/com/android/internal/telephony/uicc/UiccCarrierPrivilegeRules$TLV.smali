.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TLV"
.end annotation


# static fields
.field private static final SINGLE_BYTE_MAX_LENGTH:I = 0x80


# instance fields
.field private length:Ljava/lang/Integer;

.field private lengthBytes:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    #@5
    .line 163
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "shouldConsumeAll"    # Z

    #@0
    .prologue
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Parse TLV: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->-wrap0(Ljava/lang/String;)V

    #@19
    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 185
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v3, "Tags don\'t match."

    #@26
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    #@2c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2f
    move-result v0

    #@30
    .line 188
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x2

    #@32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@35
    move-result v3

    #@36
    if-le v2, v3, :cond_1

    #@38
    .line 189
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v3, "No length."

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 192
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    #@44
    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    #@46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@49
    move-result v2

    #@4a
    add-int/2addr v0, v2

    #@4b
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, "index="

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    const-string/jumbo v3, " length="

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    const-string/jumbo v3, "data.length="

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@72
    move-result v3

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->-wrap0(Ljava/lang/String;)V

    #@7e
    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@81
    move-result v2

    #@82
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@84
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@87
    move-result v3

    #@88
    add-int/2addr v3, v0

    #@89
    sub-int v1, v2, v3

    #@8b
    .line 197
    .local v1, "remainingLength":I
    if-gez v1, :cond_2

    #@8d
    .line 198
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8f
    const-string/jumbo v3, "Not enough data."

    #@92
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v2

    #@96
    .line 200
    :cond_2
    if-eqz p2, :cond_3

    #@98
    if-eqz v1, :cond_3

    #@9a
    .line 201
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9c
    const-string/jumbo v3, "Did not consume all."

    #@9f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v2

    #@a3
    .line 203
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@a5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@a8
    move-result v2

    #@a9
    add-int/2addr v2, v0

    #@aa
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ad
    move-result-object v2

    #@ae
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;

    #@b0
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v3, "Got TLV: "

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    const-string/jumbo v3, ","

    #@c5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v2

    #@c9
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    const-string/jumbo v3, ","

    #@d2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;

    #@d8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v2

    #@dc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v2

    #@e0
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->-wrap0(Ljava/lang/String;)V

    #@e3
    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@e5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@e8
    move-result v2

    #@e9
    add-int/2addr v2, v0

    #@ea
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ed
    move-result-object v2

    #@ee
    return-object v2
.end method

.method public parseLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    .line 168
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->tag:Ljava/lang/String;

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 169
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x2

    #@a
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 170
    .local v0, "firstByte":I
    const/16 v3, 0x80

    #@14
    if-ge v0, v3, :cond_0

    #@16
    .line 171
    mul-int/lit8 v3, v0, 0x2

    #@18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@1e
    .line 172
    add-int/lit8 v3, v2, 0x2

    #@20
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    #@26
    .line 178
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "TLV parseLength length="

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    const-string/jumbo v4, "lenghtBytes: "

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->-wrap0(Ljava/lang/String;)V

    #@4c
    .line 179
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    #@4e
    return-object v3

    #@4f
    .line 174
    :cond_0
    add-int/lit8 v1, v0, -0x80

    #@51
    .line 175
    .local v1, "numBytes":I
    add-int/lit8 v3, v2, 0x2

    #@53
    add-int/lit8 v4, v2, 0x2

    #@55
    mul-int/lit8 v5, v1, 0x2

    #@57
    add-int/2addr v4, v5

    #@58
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5f
    move-result v3

    #@60
    mul-int/lit8 v3, v3, 0x2

    #@62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v3

    #@66
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;

    #@68
    .line 176
    add-int/lit8 v3, v2, 0x2

    #@6a
    mul-int/lit8 v4, v1, 0x2

    #@6c
    add-int/2addr v3, v4

    #@6d
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->lengthBytes:Ljava/lang/String;

    #@73
    goto :goto_0
.end method
