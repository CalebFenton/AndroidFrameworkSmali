.class Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecKeycode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeycodeEntry"
.end annotation


# instance fields
.field private final mAndroidKeycode:I

.field private final mCecKeycodeAndParams:[B

.field private final mIsRepeatable:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B
    .locals 1
    .param p1, "androidKeycode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toCecKeycodeAndParamIfMatched(I)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I
    .locals 1
    .param p1, "cecKeycodeAndParams"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toAndroidKeycodeIfMatched([B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "androidKeycode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->isRepeatableIfMatched(I)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I

    #@0
    .prologue
    .line 204
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    #@6
    .line 203
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;)V
    .locals 0
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    #@3
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 1
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z

    #@0
    .prologue
    .line 196
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    #@5
    .line 195
    return-void
.end method

.method synthetic constructor <init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;)V
    .locals 0
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    #@3
    return-void
.end method

.method private constructor <init>(IIZ[B)V
    .locals 4
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z
    .param p4, "cecParams"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 188
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    #@6
    .line 189
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    #@8
    .line 190
    array-length v0, p4

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    #@f
    .line 191
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    #@11
    array-length v1, p4

    #@12
    const/4 v2, 0x1

    #@13
    invoke-static {p4, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 192
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    #@18
    and-int/lit16 v1, p2, 0xff

    #@1a
    int-to-byte v1, v1

    #@1b
    aput-byte v1, v0, v3

    #@1d
    .line 187
    return-void
.end method

.method synthetic constructor <init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;)V
    .locals 0
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z
    .param p4, "cecParams"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    #@3
    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 1
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "cecParams"    # [B

    #@0
    .prologue
    .line 200
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    #@4
    .line 199
    return-void
.end method

.method private isRepeatableIfMatched(I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "androidKeycode"    # I

    #@0
    .prologue
    .line 224
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 225
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    #@6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 227
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method private toAndroidKeycodeIfMatched([B)I
    .locals 1
    .param p1, "cecKeycodeAndParams"    # [B

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    #@2
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 217
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    #@a
    return v0

    #@b
    .line 219
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method private toCecKeycodeAndParamIfMatched(I)[B
    .locals 1
    .param p1, "androidKeycode"    # I

    #@0
    .prologue
    .line 208
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 209
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    #@6
    return-object v0

    #@7
    .line 211
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
