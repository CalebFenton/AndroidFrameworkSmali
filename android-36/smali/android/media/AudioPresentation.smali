.class public final Landroid/media/AudioPresentation;
.super Ljava/lang/Object;
.source "AudioPresentation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPresentation$Builder;,
        Landroid/media/AudioPresentation$MasteringIndicationType;,
        Landroid/media/AudioPresentation$ContentClassifier;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_COMMENTARY:I = 0x5

.field public static final whitelist CONTENT_DIALOG:I = 0x4

.field public static final whitelist CONTENT_EMERGENCY:I = 0x6

.field public static final whitelist CONTENT_HEARING_IMPAIRED:I = 0x3

.field public static final whitelist CONTENT_MAIN:I = 0x0

.field public static final whitelist CONTENT_MUSIC_AND_EFFECTS:I = 0x1

.field public static final whitelist CONTENT_UNKNOWN:I = -0x1

.field public static final whitelist CONTENT_VISUALLY_IMPAIRED:I = 0x2

.field public static final whitelist CONTENT_VOICEOVER:I = 0x7

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MASTERED_FOR_3D:I = 0x3

.field public static final whitelist MASTERED_FOR_HEADPHONE:I = 0x4

.field public static final whitelist MASTERED_FOR_STEREO:I = 0x1

.field public static final whitelist MASTERED_FOR_SURROUND:I = 0x2

.field public static final whitelist MASTERING_NOT_INDICATED:I = 0x0

.field public static final whitelist PRESENTATION_ID_UNKNOWN:I = -0x1

.field public static final whitelist PROGRAM_ID_UNKNOWN:I = -0x1


# instance fields
.field private final greylist-max-o mAudioDescriptionAvailable:Z

.field private final greylist-max-o mDialogueEnhancementAvailable:Z

.field private final blacklist mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLanguage:Landroid/icu/util/ULocale;

.field private final greylist-max-o mMasteringIndication:I

.field private final greylist-max-o mPresentationId:I

.field private final greylist-max-o mProgramId:I

.field private final greylist-max-o mSpokenSubtitlesAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 492
    new-instance v0, Landroid/media/AudioPresentation$1;

    invoke-direct {v0}, Landroid/media/AudioPresentation$1;-><init>()V

    sput-object v0, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;)V
    .registers 10
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I
    .param p3, "language"    # Landroid/icu/util/ULocale;
    .param p4, "masteringIndication"    # I
    .param p5, "audioDescriptionAvailable"    # Z
    .param p6, "spokenSubtitlesAvailable"    # Z
    .param p7, "dialogueEnhancementAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/icu/util/ULocale;",
            "IZZZ",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p8, "labels":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    .line 204
    iput p2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 205
    iput-object p3, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 206
    iput p4, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 207
    iput-boolean p5, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 208
    iput-boolean p6, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 209
    iput-boolean p7, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    .line 211
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;Landroid/media/AudioPresentation-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/AudioPresentation;-><init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 216
    const-class v0, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 221
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    .line 222
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPresentation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioPresentation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getULabels()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method private blacklist getULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 265
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 307
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 308
    return v0

    .line 310
    :cond_4
    instance-of v1, p1, Landroid/media/AudioPresentation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 311
    return v2

    .line 313
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/AudioPresentation;

    .line 314
    .local v1, "obj":Landroid/media/AudioPresentation;
    iget v3, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget v3, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 315
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 316
    invoke-direct {v1}, Landroid/media/AudioPresentation;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget v3, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 317
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getMasteringIndication()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 318
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasAudioDescription()Z

    move-result v4

    if-ne v3, v4, :cond_56

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 319
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasSpokenSubtitles()Z

    move-result v4

    if-ne v3, v4, :cond_56

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 320
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasDialogueEnhancement()Z

    move-result v4

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    .line 321
    invoke-direct {v1}, Landroid/media/AudioPresentation;->getULabels()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    move v0, v2

    .line 314
    :goto_57
    return v0
.end method

.method public whitelist getLabels()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 247
    .local v0, "localeLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/String;>;"
    goto :goto_15

    .line 250
    :cond_35
    return-object v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMasteringIndication()I
    .registers 2

    .line 278
    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    return v0
.end method

.method public whitelist getPresentationId()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    return v0
.end method

.method public whitelist getProgramId()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    return v0
.end method

.method public whitelist hasAudioDescription()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    return v0
.end method

.method public whitelist hasDialogueEnhancement()Z
    .registers 2

    .line 302
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    return v0
.end method

.method public whitelist hasSpokenSubtitles()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 326
    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 330
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 331
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 332
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    .line 333
    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 326
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ presentation id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", program id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", labels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mastering indication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", audio description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", spoken subtitles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dialogue enhancement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 481
    invoke-virtual {p0}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {p0}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    invoke-direct {p0}, Landroid/media/AudioPresentation;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 484
    invoke-virtual {p0}, Landroid/media/AudioPresentation;->getMasteringIndication()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {p0}, Landroid/media/AudioPresentation;->hasAudioDescription()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    invoke-virtual {p0}, Landroid/media/AudioPresentation;->hasSpokenSubtitles()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    invoke-virtual {p0}, Landroid/media/AudioPresentation;->hasDialogueEnhancement()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 488
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 489
    return-void
.end method
