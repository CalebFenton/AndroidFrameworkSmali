.class public final Landroid/view/translation/TranslationRequest;
.super Ljava/lang/Object;
.source "TranslationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationRequest$Builder;,
        Landroid/view/translation/TranslationRequest$RequestFlags;,
        Landroid/view/translation/TranslationRequest$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DICTIONARY_RESULT:I = 0x2

.field public static final whitelist FLAG_PARTIAL_RESPONSES:I = 0x8

.field public static final whitelist FLAG_TRANSLATION_RESULT:I = 0x1

.field public static final whitelist FLAG_TRANSLITERATION_RESULT:I = 0x4


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mTranslationRequestValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewTranslationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultFlags()I
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->defaultFlags()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationRequestValues()Ljava/util/List;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->defaultTranslationRequestValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultViewTranslationRequests()Ljava/util/List;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->defaultViewTranslationRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Landroid/view/translation/TranslationRequest$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequest$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p2, "translationRequestValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/TranslationRequestValue;>;"
    .local p3, "viewTranslationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    .line 177
    iget v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 183
    iput-object p2, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    .line 184
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 186
    iput-object p3, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    .line 187
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, "flags":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "translationRequestValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/TranslationRequestValue;>;"
    const-class v2, Landroid/view/translation/TranslationRequestValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/view/translation/TranslationRequestValue;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, "viewTranslationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    const-class v3, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 262
    iput v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    .line 264
    iget v3, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 270
    iput-object v1, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    .line 271
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 273
    iput-object v2, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    .line 274
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    return-void
.end method

.method private static blacklist defaultFlags()I
    .registers 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist defaultTranslationRequestValues()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist defaultViewTranslationRequests()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist requestFlagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 151
    new-instance v0, Landroid/view/translation/TranslationRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist singleRequestFlagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 157
    sparse-switch p0, :sswitch_data_14

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :sswitch_8
    const-string v0, "FLAG_PARTIAL_RESPONSES"

    return-object v0

    .line 163
    :sswitch_b
    const-string v0, "FLAG_TRANSLITERATION_RESULT"

    return-object v0

    .line 161
    :sswitch_e
    const-string v0, "FLAG_DICTIONARY_RESULT"

    return-object v0

    .line 159
    :sswitch_11
    const-string v0, "FLAG_TRANSLATION_RESULT"

    return-object v0

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_e
        0x4 -> :sswitch_b
        0x8 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    return v0
.end method

.method public whitelist getTranslationRequestValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getViewTranslationRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationRequest { flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    .line 228
    invoke-static {v1}, Landroid/view/translation/TranslationRequest;->requestFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationRequestValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTranslationRequests = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 240
    iget v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 242
    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 243
    return-void
.end method
