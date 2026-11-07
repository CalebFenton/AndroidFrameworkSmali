.class public final Landroid/media/AudioPresentation$Builder;
.super Ljava/lang/Object;
.source "AudioPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioDescriptionAvailable:Z

.field private blacklist mDialogueEnhancementAvailable:Z

.field private blacklist mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLanguage:Landroid/icu/util/ULocale;

.field private blacklist mMasteringIndication:I

.field private final blacklist mPresentationId:I

.field private blacklist mProgramId:I

.field private blacklist mSpokenSubtitlesAvailable:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "presentationId"    # I

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioPresentation$Builder;->mProgramId:I

    .line 358
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioPresentation$Builder;->mLanguage:Landroid/icu/util/ULocale;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPresentation$Builder;->mMasteringIndication:I

    .line 360
    iput-boolean v0, p0, Landroid/media/AudioPresentation$Builder;->mAudioDescriptionAvailable:Z

    .line 361
    iput-boolean v0, p0, Landroid/media/AudioPresentation$Builder;->mSpokenSubtitlesAvailable:Z

    .line 362
    iput-boolean v0, p0, Landroid/media/AudioPresentation$Builder;->mDialogueEnhancementAvailable:Z

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    .line 372
    iput p1, p0, Landroid/media/AudioPresentation$Builder;->mPresentationId:I

    .line 373
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioPresentation;
    .registers 11

    .line 467
    new-instance v0, Landroid/media/AudioPresentation;

    iget v1, p0, Landroid/media/AudioPresentation$Builder;->mPresentationId:I

    iget v2, p0, Landroid/media/AudioPresentation$Builder;->mProgramId:I

    iget-object v3, p0, Landroid/media/AudioPresentation$Builder;->mLanguage:Landroid/icu/util/ULocale;

    iget v4, p0, Landroid/media/AudioPresentation$Builder;->mMasteringIndication:I

    iget-boolean v5, p0, Landroid/media/AudioPresentation$Builder;->mAudioDescriptionAvailable:Z

    iget-boolean v6, p0, Landroid/media/AudioPresentation$Builder;->mSpokenSubtitlesAvailable:Z

    iget-boolean v7, p0, Landroid/media/AudioPresentation$Builder;->mDialogueEnhancementAvailable:Z

    iget-object v8, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/AudioPresentation;-><init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;Landroid/media/AudioPresentation-IA;)V

    return-object v0
.end method

.method public whitelist setHasAudioDescription(Z)Landroid/media/AudioPresentation$Builder;
    .registers 2
    .param p1, "audioDescriptionAvailable"    # Z

    .line 437
    iput-boolean p1, p0, Landroid/media/AudioPresentation$Builder;->mAudioDescriptionAvailable:Z

    .line 438
    return-object p0
.end method

.method public whitelist setHasDialogueEnhancement(Z)Landroid/media/AudioPresentation$Builder;
    .registers 2
    .param p1, "dialogueEnhancementAvailable"    # Z

    .line 457
    iput-boolean p1, p0, Landroid/media/AudioPresentation$Builder;->mDialogueEnhancementAvailable:Z

    .line 458
    return-object p0
.end method

.method public whitelist setHasSpokenSubtitles(Z)Landroid/media/AudioPresentation$Builder;
    .registers 2
    .param p1, "spokenSubtitlesAvailable"    # Z

    .line 447
    iput-boolean p1, p0, Landroid/media/AudioPresentation$Builder;->mSpokenSubtitlesAvailable:Z

    .line 448
    return-object p0
.end method

.method public whitelist setLabels(Ljava/util/Map;)Landroid/media/AudioPresentation$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/media/AudioPresentation$Builder;"
        }
    .end annotation

    .line 424
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 425
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 426
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Landroid/media/AudioPresentation$Builder;->mLabels:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/CharSequence;>;"
    goto :goto_d

    .line 428
    :cond_2f
    return-object p0
.end method

.method public whitelist setLocale(Landroid/icu/util/ULocale;)Landroid/media/AudioPresentation$Builder;
    .registers 2
    .param p1, "language"    # Landroid/icu/util/ULocale;

    .line 389
    iput-object p1, p0, Landroid/media/AudioPresentation$Builder;->mLanguage:Landroid/icu/util/ULocale;

    .line 390
    return-object p0
.end method

.method public whitelist setMasteringIndication(I)Landroid/media/AudioPresentation$Builder;
    .registers 5
    .param p1, "masteringIndication"    # I

    .line 406
    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 411
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mastering indication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_28
    :goto_28
    iput p1, p0, Landroid/media/AudioPresentation$Builder;->mMasteringIndication:I

    .line 415
    return-object p0
.end method

.method public whitelist setProgramId(I)Landroid/media/AudioPresentation$Builder;
    .registers 2
    .param p1, "programId"    # I

    .line 380
    iput p1, p0, Landroid/media/AudioPresentation$Builder;->mProgramId:I

    .line 381
    return-object p0
.end method
