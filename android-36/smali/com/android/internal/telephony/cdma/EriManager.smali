.class public Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;,
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    }
.end annotation


# static fields
.field public static final blacklist ERI_FROM_XML:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private blacklist mEriFileSource:I

.field private blacklist mIsEriFileLoaded:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 107
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    return-void
.end method

.method private greylist getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .registers 11

    .line 317
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v0, :cond_16

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 321
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget p2, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    :cond_16
    const v0, 0x104093f

    const v1, 0x104093e

    const v2, 0x1040943

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_1bc

    .line 426
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    const-string v7, "EriManager"

    if-nez v6, :cond_81

    .line 428
    const-string p1, "ERI File not loaded"

    invoke-static {v7, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, v3, :cond_42

    .line 431
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 435
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v3, v4, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    :cond_42
    if-eqz p2, :cond_71

    if-eq p2, v4, :cond_61

    if-eq p2, v3, :cond_51

    .line 464
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string p2, "ERI text"

    const/4 v0, -0x1

    invoke-direct {p1, p0, v0, v0, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 456
    :cond_51
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 459
    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 460
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v3, v4, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 448
    :cond_61
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 451
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 452
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v4, v5, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 440
    :cond_71
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 444
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, v5, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 469
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object p1

    .line 470
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    if-nez p1, :cond_c2

    if-nez v0, :cond_b6

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERI defRoamInd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found in ERI file ...on"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 483
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, v5, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 489
    :cond_b6
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget p2, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 496
    :cond_c2
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v0, p1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, p1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 418
    :pswitch_ce
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040942

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 411
    :pswitch_e1
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040941

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 404
    :pswitch_f4
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040940

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 397
    :pswitch_107
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x104094a

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 390
    :pswitch_11a
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040949

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 383
    :pswitch_12d
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040948

    .line 386
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 376
    :pswitch_140
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040947

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 369
    :pswitch_153
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040946

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 362
    :pswitch_166
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040945

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 355
    :pswitch_179
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040944

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p2

    .line 346
    :pswitch_18c
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 349
    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v3, v4, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 339
    :pswitch_19c
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 342
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v4, v5, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    .line 332
    :pswitch_1ac
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, v5, p2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_1ac
        :pswitch_19c
        :pswitch_18c
        :pswitch_179
        :pswitch_166
        :pswitch_153
        :pswitch_140
        :pswitch_12d
        :pswitch_11a
        :pswitch_107
        :pswitch_f4
        :pswitch_e1
        :pswitch_ce
    .end packed-switch
.end method

.method private blacklist getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist loadEriFileFromFileSystem()V
    .registers 1

    .line 0
    return-void
.end method

.method private blacklist loadEriFileFromModem()V
    .registers 1

    .line 0
    return-void
.end method

.method private blacklist loadEriFileFromXml()V
    .registers 16

    .line 158
    const-string v1, "CallPromptId"

    const-string v2, "EriManager"

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x0

    .line 163
    :try_start_b
    const-string v4, "loadEriFileFromXml: check for alternate file"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v4, Ljava/io/FileInputStream;

    const v5, 0x104014b

    .line 165
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1c} :catch_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_2b

    .line 166
    :try_start_1c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 167
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 168
    const-string v5, "loadEriFileFromXml: opened alternate file"

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_28} :catch_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_28} :catch_2f

    move-object v5, v4

    move-object v4, v0

    goto :goto_3d

    :catch_2b
    move-object v4, v3

    goto :goto_2f

    :catch_2d
    move-object v4, v3

    goto :goto_37

    .line 173
    :catch_2f
    :goto_2f
    const-string v0, "loadEriFileFromXml: no parser for alternate file"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    move-object v5, v4

    move-object v4, v3

    goto :goto_3d

    .line 170
    :catch_37
    :goto_37
    const-string v0, "loadEriFileFromXml: no alternate file"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :goto_3d
    if-nez v4, :cond_af

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const-string v6, "carrier_config"

    .line 181
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_5f

    .line 183
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 185
    const-string v6, "carrier_eri_file_name_string"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_60

    :cond_5f
    move-object v6, v3

    .line 189
    :goto_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eriFile = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_7c

    .line 192
    const-string p0, "loadEriFileFromXml: Can\'t find ERI file to load"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_7c
    :try_start_7c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8d} :catch_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_8d} :catch_8e

    goto :goto_af

    :catch_8e
    move-exception v0

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadEriFileFromXml: no parser for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Exception = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_af
    :goto_af
    :try_start_af
    const-string v0, "EriFile"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v6, "VersionNumber"

    .line 208
    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v6, "NumberOfEriEntries"

    .line 210
    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v6, "EriFileType"

    .line 212
    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    const/4 v0, 0x0

    .line 216
    :cond_df
    :goto_df
    invoke-static {v4}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 217
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_153

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v1, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v0, v1, :cond_11c

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Parsing ERI file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " defined, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parsed!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    :catchall_114
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1f6

    :catch_118
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1e3

    .line 247
    :cond_11c
    :goto_11c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEriFileFromXml: eri parsing successful, file loaded. ver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v1, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", # of entries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v1, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_143} :catch_118
    .catchall {:try_start_af .. :try_end_143} :catchall_114

    .line 255
    instance-of p0, v4, Landroid/content/res/XmlResourceParser;

    if-eqz p0, :cond_14c

    .line 256
    check-cast v4, Landroid/content/res/XmlResourceParser;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14c
    if-eqz v5, :cond_1f5

    .line 260
    :goto_14e
    :try_start_14e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_1f5

    goto/16 :goto_1f5

    .line 223
    :cond_153
    :try_start_153
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_191

    .line 224
    const-string v6, "Id"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 225
    const-string v7, "CallPromptText"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-ltz v6, :cond_176

    const/4 v8, 0x2

    if-gt v6, v8, :cond_176

    .line 227
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v7, v8, v6

    goto/16 :goto_df

    .line 229
    :cond_176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error Parsing ERI file: found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CallPromptId"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_df

    .line 232
    :cond_191
    const-string v7, "EriInfo"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 233
    const-string v6, "RoamingIndicator"

    .line 234
    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 235
    const-string v6, "IconIndex"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 236
    const-string v6, "IconMode"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 237
    const-string v6, "EriText"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 240
    const-string v6, "AlertId"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v0, v0, 0x1

    .line 242
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v7, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v6, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_1e1} :catch_118
    .catchall {:try_start_153 .. :try_end_1e1} :catchall_114

    goto/16 :goto_df

    .line 253
    :goto_1e3
    :try_start_1e3
    const-string v0, "Got exception while loading ERI file."

    invoke-static {v2, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e8
    .catchall {:try_start_1e3 .. :try_end_1e8} :catchall_114

    .line 255
    instance-of p0, v4, Landroid/content/res/XmlResourceParser;

    if-eqz p0, :cond_1f1

    .line 256
    check-cast v4, Landroid/content/res/XmlResourceParser;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1f1
    if-eqz v5, :cond_1f5

    goto/16 :goto_14e

    :catch_1f5
    :cond_1f5
    :goto_1f5
    return-void

    .line 255
    :goto_1f6
    instance-of v0, v4, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_1ff

    .line 256
    check-cast v4, Landroid/content/res/XmlResourceParser;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1ff
    if-eqz v5, :cond_204

    .line 260
    :try_start_201
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_204} :catch_204

    .line 265
    :catch_204
    :cond_204
    throw p0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return-void
.end method

.method public blacklist getCdmaEriIconIndex(II)I
    .registers 3

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return p0
.end method

.method public blacklist getCdmaEriIconMode(II)I
    .registers 3

    .line 513
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return p0
.end method

.method public blacklist getCdmaEriText(II)Ljava/lang/String;
    .registers 3

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEriFileType()I
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return p0
.end method

.method public blacklist getEriFileVersion()I
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return p0
.end method

.method public blacklist getEriNumberOfEntries()I
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return p0
.end method

.method public blacklist isEriFileLoaded()Z
    .registers 1

    .line 297
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return p0
.end method

.method public blacklist loadEriFile()V
    .registers 3

    .line 117
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    return-void

    .line 119
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    return-void

    .line 123
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    return-void
.end method
