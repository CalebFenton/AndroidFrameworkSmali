.class public final Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mUiExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "uiExtras"    # Landroid/os/Bundle;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    .line 84
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 86
    iput-object p2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 87
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 89
    iput-object p3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    .line 90
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 187
    .local v0, "componentName":Landroid/content/ComponentName;
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 188
    .local v1, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 190
    .local v2, "uiExtras":Landroid/os/Bundle;
    iput-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    .line 191
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 193
    iput-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 194
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 196
    iput-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    .line 197
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 141
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 143
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 145
    .local v2, "that":Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    iget-object v3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    .line 146
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v4, v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 147
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    iget-object v4, v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    .line 148
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 145
    :goto_35
    return v0

    .line 141
    .end local v2    # "that":Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    :cond_36
    :goto_36
    return v1
.end method

.method public blacklist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUiExtras()Landroid/os/Bundle;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 159
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionsRequestInfo { componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autofillId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiExtras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method
