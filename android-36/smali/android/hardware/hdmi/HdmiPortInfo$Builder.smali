.class public final Landroid/hardware/hdmi/HdmiPortInfo$Builder;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:I

.field private blacklist mArcSupported:Z

.field private blacklist mCecSupported:Z

.field private blacklist mEarcSupported:Z

.field private blacklist mId:I

.field private blacklist mMhlSupported:Z

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArcSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mArcSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCecSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mCecSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEarcSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mEarcSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMhlSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mMhlSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mType:I

    return p0
.end method

.method public constructor whitelist <init>(III)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "address"    # I

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    if-eqz p2, :cond_11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    goto :goto_11

    .line 272
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type should be 0 or 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_11
    :goto_11
    if-ltz p3, :cond_1a

    .line 278
    iput p1, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mId:I

    .line 279
    iput p2, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mType:I

    .line 280
    iput p3, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mAddress:I

    .line 281
    return-void

    .line 276
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address should be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPortInfo;)V
    .registers 3
    .param p1, "hdmiPortInfo"    # Landroid/hardware/hdmi/HdmiPortInfo;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmId(Landroid/hardware/hdmi/HdmiPortInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mId:I

    .line 285
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmType(Landroid/hardware/hdmi/HdmiPortInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mType:I

    .line 286
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmAddress(Landroid/hardware/hdmi/HdmiPortInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mAddress:I

    .line 287
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmCecSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mCecSupported:Z

    .line 288
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmArcSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mArcSupported:Z

    .line 289
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmEarcSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mEarcSupported:Z

    .line 290
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->-$$Nest$fgetmMhlSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mMhlSupported:Z

    .line 291
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPortInfo;Landroid/hardware/hdmi/HdmiPortInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiPortInfo;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3

    .line 298
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;Landroid/hardware/hdmi/HdmiPortInfo-IA;)V

    return-object v0
.end method

.method public whitelist setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 315
    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mArcSupported:Z

    .line 316
    return-object p0
.end method

.method public whitelist setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 306
    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mCecSupported:Z

    .line 307
    return-object p0
.end method

.method public whitelist setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 324
    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mEarcSupported:Z

    .line 325
    return-object p0
.end method

.method public whitelist setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 333
    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->mMhlSupported:Z

    .line 334
    return-object p0
.end method
