.class public final Landroid/telephony/ims/SipDetails$Builder;
.super Ljava/lang/Object;
.source "SipDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCseq:I

.field private blacklist mMethod:I

.field private blacklist mReasonHeaderCause:I

.field private blacklist mReasonHeaderText:Ljava/lang/String;

.field private blacklist mResponseCode:I

.field private blacklist mResponsePhrase:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallId(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCseq(Landroid/telephony/ims/SipDetails$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mCseq:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMethod(Landroid/telephony/ims/SipDetails$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mMethod:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReasonHeaderCause(Landroid/telephony/ims/SipDetails$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReasonHeaderText(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponseCode(Landroid/telephony/ims/SipDetails$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponseCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponsePhrase(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponsePhrase:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "method"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/SipDetails$Builder;->mCseq:I

    .line 73
    iput v0, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponseCode:I

    .line 74
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponsePhrase:Ljava/lang/String;

    .line 75
    iput v0, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderCause:I

    .line 76
    iput-object v1, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderText:Ljava/lang/String;

    .line 85
    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mMethod:I

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/SipDetails;
    .registers 3

    .line 153
    new-instance v0, Landroid/telephony/ims/SipDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/telephony/ims/SipDetails$Builder;Landroid/telephony/ims/SipDetails-IA;)V

    return-object v0
.end method

.method public blacklist setCSeq(I)Landroid/telephony/ims/SipDetails$Builder;
    .registers 2
    .param p1, "cSeq"    # I

    .line 98
    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mCseq:I

    .line 99
    return-object p0
.end method

.method public blacklist setCallId(Ljava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mCallId:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public blacklist setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;
    .registers 3
    .param p1, "responseCode"    # I
    .param p2, "responsePhrase"    # Ljava/lang/String;

    .line 115
    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponseCode:I

    .line 116
    iput-object p2, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponsePhrase:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public blacklist setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;
    .registers 3
    .param p1, "reasonHeaderCause"    # I
    .param p2, "reasonHeaderText"    # Ljava/lang/String;

    .line 132
    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderCause:I

    .line 133
    iput-object p2, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderText:Ljava/lang/String;

    .line 134
    return-object p0
.end method
