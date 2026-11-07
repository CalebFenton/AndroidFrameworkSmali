.class public final Landroid/view/translation/TranslationRequestValue;
.super Ljava/lang/Object;
.source "TranslationRequestValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/view/translation/TranslationRequestValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequestValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationRequestValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 147
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_11
    iput-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    return-void
.end method

.method public static whitelist forText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationRequestValue;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 44
    const-string/jumbo v0, "text should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/view/translation/TranslationRequestValue;

    invoke-direct {v0, p0}, Landroid/view/translation/TranslationRequestValue;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 104
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 106
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/view/translation/TranslationRequestValue;

    .line 108
    .local v0, "that":Landroid/view/translation/TranslationRequestValue;
    iget-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    .line 109
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 108
    return v1

    .line 104
    .end local v0    # "that":Landroid/view/translation/TranslationRequestValue;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationRequestValue { text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

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
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 131
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    iget-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/view/translation/TranslationRequestValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 133
    :cond_14
    return-void
.end method
