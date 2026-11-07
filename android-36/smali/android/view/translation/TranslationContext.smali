.class public final Landroid/view/translation/TranslationContext;
.super Ljava/lang/Object;
.source "TranslationContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationContext$Builder;,
        Landroid/view/translation/TranslationContext$TranslationFlag;,
        Landroid/view/translation/TranslationContext$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DEFINITIONS:I = 0x4

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x1

.field public static final whitelist FLAG_TRANSLITERATION:I = 0x2


# instance fields
.field private final blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private final blacklist mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mTranslationFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultActivityId()Landroid/app/assist/ActivityId;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultActivityId()Landroid/app/assist/ActivityId;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationFlags()I
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultTranslationFlags()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 275
    new-instance v0, Landroid/view/translation/TranslationContext$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 251
    .local v0, "flg":B
    sget-object v1, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/translation/TranslationSpec;

    .line 252
    .local v1, "sourceSpec":Landroid/view/translation/TranslationSpec;
    sget-object v2, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationSpec;

    .line 253
    .local v2, "targetSpec":Landroid/view/translation/TranslationSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "translationFlags":I
    invoke-direct {p0, p1}, Landroid/view/translation/TranslationContext;->unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;

    move-result-object v4

    .line 256
    .local v4, "activityId":Landroid/app/assist/ActivityId;
    iput-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 257
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 259
    iput-object v2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 260
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 262
    iput v3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    .line 264
    iget v5, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 269
    iput-object v4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 272
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILandroid/app/assist/ActivityId;)V
    .registers 8
    .param p1, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p2, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "translationFlags"    # I
    .param p4, "activityId"    # Landroid/app/assist/ActivityId;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 169
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 171
    iput-object p2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 172
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 174
    iput p3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    .line 176
    iget v0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 181
    iput-object p4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 184
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    return-void
.end method

.method private static blacklist defaultActivityId()Landroid/app/assist/ActivityId;
    .registers 1

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTranslationFlags()I
    .registers 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parcelActivityId(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_13

    .line 87
    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :cond_13
    return-void
.end method

.method static blacklist singleTranslationFlagToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 151
    packed-switch p0, :pswitch_data_12

    .line 158
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :pswitch_8
    const-string v0, "FLAG_DEFINITIONS"

    return-object v0

    .line 155
    :pswitch_b
    const-string v0, "FLAG_TRANSLITERATION"

    return-object v0

    .line 153
    :pswitch_e
    const-string v0, "FLAG_LOW_LATENCY"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist translationFlagToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 145
    new-instance v0, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 94
    .local v0, "hasActivityId":Z
    if-eqz v0, :cond_c

    new-instance v1, Landroid/app/assist/ActivityId;

    invoke-direct {v1, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityId()Landroid/app/assist/ActivityId;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-object v0
.end method

.method public whitelist getSourceSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public whitelist getTargetSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public whitelist getTranslationFlags()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationContext { sourceSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    .line 219
    invoke-static {v1}, Landroid/view/translation/TranslationContext;->translationFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 232
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 233
    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 235
    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/view/translation/TranslationContext;->parcelActivityId(Landroid/os/Parcel;I)V

    .line 237
    return-void
.end method
