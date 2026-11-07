.class public final Landroid/view/textclassifier/TextSelection$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mEndIndex:I

.field private final greylist-max-o mEntityConfidence:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mStartIndex:I

.field private blacklist mTextClassification:Landroid/view/textclassifier/TextClassification;


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    .line 178
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 179
    if-le p2, p1, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 180
    iput p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    .line 181
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    .line 182
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextSelection;
    .registers 9

    .line 246
    new-instance v0, Landroid/view/textclassifier/TextSelection;

    iget v1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Builder;->mId:Ljava/lang/String;

    iget-object v5, p0, Landroid/view/textclassifier/TextSelection$Builder;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 248
    iget-object v6, p0, Landroid/view/textclassifier/TextSelection$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v6, :cond_13

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_15

    :cond_13
    iget-object v6, p0, Landroid/view/textclassifier/TextSelection$Builder;->mExtras:Landroid/os/Bundle;

    :goto_15
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/textclassifier/TextSelection;-><init>(IILjava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextClassification;Landroid/os/Bundle;Landroid/view/textclassifier/TextSelection-IA;)V

    .line 246
    return-object v0
.end method

.method blacklist setEntityConfidence(Landroid/view/textclassifier/EntityConfidence;)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 4
    .param p1, "scores"    # Landroid/view/textclassifier/EntityConfidence;

    .line 201
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 202
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 203
    return-object p0
.end method

.method public whitelist setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "confidenceScore"    # F

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 237
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mExtras:Landroid/os/Bundle;

    .line 238
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mId:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public whitelist setTextClassification(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextSelection$Builder;
    .registers 2
    .param p1, "textClassification"    # Landroid/view/textclassifier/TextClassification;

    .line 226
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 227
    return-object p0
.end method
