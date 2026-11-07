.class public final Landroid/service/autofill/InlinePresentation;
.super Ljava/lang/Object;
.source "InlinePresentation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private final blacklist mPinned:Z

.field private final blacklist mSlice:Landroid/app/slice/Slice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 262
    new-instance v0, Landroid/service/autofill/InlinePresentation$1;

    invoke-direct {v0}, Landroid/service/autofill/InlinePresentation$1;-><init>()V

    sput-object v0, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V
    .registers 7
    .param p1, "slice"    # Landroid/app/slice/Slice;
    .param p2, "inlinePresentationSpec"    # Landroid/widget/inline/InlinePresentationSpec;
    .param p3, "pinned"    # Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    .line 133
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 136
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 138
    iput-boolean p3, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    .line 141
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 246
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 247
    .local v1, "pinned":Z
    :goto_e
    sget-object v2, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/Slice;

    .line 248
    .local v2, "slice":Landroid/app/slice/Slice;
    sget-object v3, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/inline/InlinePresentationSpec;

    .line 250
    .local v3, "inlinePresentationSpec":Landroid/widget/inline/InlinePresentationSpec;
    iput-object v2, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    .line 251
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 253
    iput-object v3, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 254
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 256
    iput-boolean v1, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    .line 259
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    return-void
.end method

.method public static whitelist createTooltipPresentation(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;)Landroid/service/autofill/InlinePresentation;
    .registers 4
    .param p0, "slice"    # Landroid/app/slice/Slice;
    .param p1, "spec"    # Landroid/widget/inline/InlinePresentationSpec;

    .line 88
    new-instance v0, Landroid/service/autofill/InlinePresentation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 198
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 200
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/autofill/InlinePresentation;

    .line 202
    .local v2, "that":Landroid/service/autofill/InlinePresentation;
    iget-object v3, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    iget-object v4, v2, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    .line 203
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    iget-object v4, v2, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 204
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    iget-boolean v4, v2, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 202
    :goto_31
    return v0

    .line 198
    .end local v2    # "that":Landroid/service/autofill/InlinePresentation;
    :cond_32
    :goto_32
    return v1
.end method

.method public blacklist getAutofillHints()[Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {v0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public whitelist getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    return-object v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 214
    const/4 v0, 0x1

    .line 215
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 216
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 217
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 218
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist isPinned()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlinePresentation { slice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlinePresentationSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/service/autofill/InlinePresentation;->mPinned:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 229
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 230
    iget-object v1, p0, Landroid/service/autofill/InlinePresentation;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    iget-object v1, p0, Landroid/service/autofill/InlinePresentation;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    return-void
.end method
