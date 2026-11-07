.class public final Landroid/view/textclassifier/TextLinks$TextLink;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextLink"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mEntityScores:Landroid/view/textclassifier/EntityConfidence;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mStart:I

.field private final greylist-max-o mUrlSpan:Landroid/text/style/URLSpan;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextLinks$TextLink;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 318
    new-instance v0, Landroid/view/textclassifier/TextLinks$TextLink$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$TextLink$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$TextLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "entityConfidence"    # Landroid/view/textclassifier/EntityConfidence;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "urlSpan"    # Landroid/text/style/URLSpan;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p3}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 227
    if-gt p1, p2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 228
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iput p1, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    .line 230
    iput p2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    .line 231
    iput-object p3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    .line 232
    iput-object p5, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    .line 233
    iput-object p4, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mExtras:Landroid/os/Bundle;

    .line 234
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;Landroid/view/textclassifier/TextLinks-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 311
    sget-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/textclassifier/EntityConfidence;

    .line 312
    .local v4, "entityConfidence":Landroid/view/textclassifier/EntityConfidence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, "end":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 315
    .local v5, "extras":Landroid/os/Bundle;
    new-instance v1, Landroid/view/textclassifier/TextLinks$TextLink;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConfidenceScore(Ljava/lang/String;)F
    .registers 3
    .param p1, "entityType"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getEnd()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    return v0
.end method

.method public whitelist getEntity(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 269
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEntityCount()I
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 287
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStart()I
    .registers 2

    .line 242
    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 292
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    iget-object v4, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 292
    const-string v2, "TextLink{start=%s, end=%s, entityScores=%s, urlSpan=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 304
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 308
    return-void
.end method
