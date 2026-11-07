.class public final Landroid/service/assist/classification/FieldClassification;
.super Ljava/lang/Object;
.source "FieldClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/assist/classification/FieldClassification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private final blacklist mGroupHints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 290
    new-instance v0, Landroid/service/assist/classification/FieldClassification$1;

    invoke-direct {v0}, Landroid/service/assist/classification/FieldClassification$1;-><init>()V

    sput-object v0, Landroid/service/assist/classification/FieldClassification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 273
    .local v0, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-static {p1}, Landroid/service/assist/classification/FieldClassification;->unparcelHints(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    .line 274
    .local v1, "hints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/service/assist/classification/FieldClassification;->unparcelGroupHints(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v2

    .line 276
    .local v2, "groupHints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object v0, p0, Landroid/service/assist/classification/FieldClassification;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 277
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/assist/classification/FieldClassification;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 279
    iput-object v1, p0, Landroid/service/assist/classification/FieldClassification;->mHints:Ljava/util/Set;

    .line 280
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/assist/classification/FieldClassification;->mHints:Ljava/util/Set;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 282
    iput-object v2, p0, Landroid/service/assist/classification/FieldClassification;->mGroupHints:Ljava/util/Set;

    .line 283
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/assist/classification/FieldClassification;->mGroupHints:Ljava/util/Set;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;Ljava/util/Set;)V
    .registers 4
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "hints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/service/assist/classification/FieldClassification;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/Set;Ljava/util/Set;)V

    .line 190
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p2, "hints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "groupHints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroid/service/assist/classification/FieldClassification;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 214
    iput-object p2, p0, Landroid/service/assist/classification/FieldClassification;->mHints:Ljava/util/Set;

    .line 217
    iput-object p3, p0, Landroid/service/assist/classification/FieldClassification;->mGroupHints:Ljava/util/Set;

    .line 220
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    return-void
.end method

.method static blacklist unparcelGroupHints(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "groupHints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 168
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method static blacklist unparcelHints(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 158
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassification;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getGroupHints()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassification;->mGroupHints:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getHints()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassification;->mHints:Ljava/util/Set;

    return-object v0
.end method

.method blacklist parcelGroupHints(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassification;->mGroupHints:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    return-void
.end method

.method blacklist parcelHints(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassification;->mHints:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 163
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldClassification { autofillId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassification;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassification;->mHints:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupHints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassification;->mGroupHints:Ljava/util/Set;

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

    .line 256
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassification;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    invoke-virtual {p0, p1, p2}, Landroid/service/assist/classification/FieldClassification;->parcelHints(Landroid/os/Parcel;I)V

    .line 258
    invoke-virtual {p0, p1, p2}, Landroid/service/assist/classification/FieldClassification;->parcelGroupHints(Landroid/os/Parcel;I)V

    .line 259
    return-void
.end method
