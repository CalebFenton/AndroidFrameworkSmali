.class public final Landroid/view/textclassifier/TextLanguage;
.super Ljava/lang/Object;
.source "TextLanguage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLanguage$Builder;,
        Landroid/view/textclassifier/TextLanguage$Request;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLanguage;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist EMPTY:Landroid/view/textclassifier/TextLanguage;


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

.field private final blacklist mId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextLanguage;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/view/textclassifier/TextLanguage$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLanguage$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLanguage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    new-instance v0, Landroid/view/textclassifier/TextLanguage$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLanguage$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLanguage$Builder;->build()Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextLanguage;->EMPTY:Landroid/view/textclassifier/TextLanguage;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "entityConfidence"    # Landroid/view/textclassifier/EntityConfidence;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage;->mId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroid/view/textclassifier/TextLanguage;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 70
    iput-object p3, p0, Landroid/view/textclassifier/TextLanguage;->mBundle:Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textclassifier/TextLanguage;-><init>(Ljava/lang/String;Landroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 144
    new-instance v0, Landroid/view/textclassifier/TextLanguage;

    .line 145
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/EntityConfidence;

    .line 147
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextLanguage;-><init>(Ljava/lang/String;Landroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;)V

    .line 144
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConfidenceScore(Landroid/icu/util/ULocale;)F
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 109
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocale(I)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "index"    # I

    .line 99
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocaleHypothesisCount()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 125
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/TextLanguage;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextLanguage;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v3, p0, Landroid/view/textclassifier/TextLanguage;->mBundle:Landroid/os/Bundle;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TextLanguage {id=%s, locales=%s, bundle=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method
