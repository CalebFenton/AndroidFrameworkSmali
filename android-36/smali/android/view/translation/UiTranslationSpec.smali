.class public final Landroid/view/translation/UiTranslationSpec;
.super Ljava/lang/Object;
.source "UiTranslationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/UiTranslationSpec$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/UiTranslationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mShouldPadContentForCompat:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/view/translation/UiTranslationSpec$1;

    invoke-direct {v0}, Landroid/view/translation/UiTranslationSpec$1;-><init>()V

    sput-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 160
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    .line 162
    .local v0, "shouldPadContentForCompat":Z
    :cond_f
    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 165
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "shouldPadContentForCompat"    # Z

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 94
    iput-boolean p1, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    .line 97
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 120
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/translation/UiTranslationSpec;

    .line 122
    .local v2, "that":Landroid/view/translation/UiTranslationSpec;
    iget-boolean v3, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    iget-boolean v4, v2, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 118
    .end local v2    # "that":Landroid/view/translation/UiTranslationSpec;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 134
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist shouldPadContentForCompat()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiTranslationSpec { shouldPadContentForCompat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

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

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/translation/UiTranslationSpec;->mShouldPadContentForCompat:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 145
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    return-void
.end method
