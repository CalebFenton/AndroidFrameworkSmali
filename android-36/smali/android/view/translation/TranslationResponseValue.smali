.class public final Landroid/view/translation/TranslationResponseValue;
.super Ljava/lang/Object;
.source "TranslationResponseValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponseValue$Builder;,
        Landroid/view/translation/TranslationResponseValue$Status;,
        Landroid/view/translation/TranslationResponseValue$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFINITIONS:Ljava/lang/String; = "android.view.translation.extra.DEFINITIONS"

.field public static final whitelist STATUS_ERROR:I = 0x1

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mStatusCode:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultText()Ljava/lang/CharSequence;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 336
    new-instance v0, Landroid/view/translation/TranslationResponseValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponseValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponseValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "transliteration"    # Ljava/lang/CharSequence;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 179
    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_46

    .line 181
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statusCode was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), STATUS_ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_46
    :goto_46
    iput-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 188
    iput-object p3, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 189
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    iput-object p4, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 194
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 311
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .local v1, "statusCode":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 313
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 314
    .local v4, "extras":Landroid/os/Bundle;
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_20

    move-object v5, v3

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    .line 316
    .local v5, "transliteration":Ljava/lang/CharSequence;
    :goto_24
    iput v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 318
    iget v6, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-eqz v6, :cond_67

    iget v6, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_30

    goto :goto_67

    .line 320
    :cond_30
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "statusCode was "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "), STATUS_ERROR("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    :cond_67
    :goto_67
    iput-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 327
    iput-object v4, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 328
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v6, v3, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 330
    iput-object v5, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 333
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    return-void
.end method

.method private static blacklist defaultExtras()Landroid/os/Bundle;
    .registers 1

    .line 118
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist defaultText()Ljava/lang/CharSequence;
    .registers 1

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTransliteration()Ljava/lang/CharSequence;
    .registers 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist extrasEquals(Landroid/os/Bundle;)Z
    .registers 3
    .param p1, "other"    # Landroid/os/Bundle;

    .line 123
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public static whitelist forError()Landroid/view/translation/TranslationResponseValue;
    .registers 4

    .line 110
    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist statusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 162
    packed-switch p0, :pswitch_data_e

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_8
    const-string v0, "STATUS_ERROR"

    return-object v0

    .line 164
    :pswitch_b
    const-string v0, "STATUS_SUCCESS"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 257
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 258
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 260
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/translation/TranslationResponseValue;

    .line 262
    .local v2, "that":Landroid/view/translation/TranslationResponseValue;
    iget v3, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    iget v4, v2, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 264
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v2, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 265
    invoke-direct {p0, v3}, Landroid/view/translation/TranslationResponseValue;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 262
    :goto_39
    return v0

    .line 258
    .end local v2    # "that":Landroid/view/translation/TranslationResponseValue;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTransliteration()Ljava/lang/CharSequence;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 278
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 280
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponseValue { statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 243
    invoke-static {v1}, Landroid/view/translation/TranslationResponseValue;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transliteration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 291
    :cond_8
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 292
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 293
    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 295
    :cond_20
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 296
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 297
    :cond_2e
    return-void
.end method
