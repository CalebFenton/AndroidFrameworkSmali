.class public abstract Landroid/view/textclassifier/TextClassifierEvent$Builder;
.super Ljava/lang/Object;
.source "TextClassifierEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mActionIndices:[I

.field private blacklist mEntityTypes:[Ljava/lang/String;

.field private final blacklist mEventCategory:I

.field private blacklist mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private blacklist mEventIndex:I

.field private final blacklist mEventType:I

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mLocale:Landroid/icu/util/ULocale;

.field private blacklist mModelName:Ljava/lang/String;

.field private blacklist mResultId:Ljava/lang/String;

.field private blacklist mScores:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mLocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mResultId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    return-object p0
.end method

.method private constructor blacklist <init>(II)V
    .registers 5
    .param p1, "eventCategory"    # I
    .param p2, "eventType"    # I

    .line 545
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    .line 530
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    .line 533
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    .line 546
    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventCategory:I

    .line 547
    iput p2, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventType:I

    .line 548
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(II)V

    return-void
.end method


# virtual methods
.method abstract blacklist self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public varargs whitelist setActionIndices([I)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 5
    .param p1, "actionIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .line 639
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    .line 640
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist setEntityTypes([Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 5
    .param p1, "entityTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 560
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    .line 562
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .param p1, "eventContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationContext;",
            ")TT;"
        }
    .end annotation

    .line 571
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 572
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setEventIndex(I)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .param p1, "eventIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 589
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventIndex:I

    .line 590
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 663
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mExtras:Landroid/os/Bundle;

    .line 664
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setLocale(Landroid/icu/util/ULocale;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")TT;"
        }
    .end annotation

    .line 649
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mLocale:Landroid/icu/util/ULocale;

    .line 650
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setModelName(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .param p1, "modelVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 609
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mModelName:Ljava/lang/String;

    .line 610
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setResultId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 3
    .param p1, "resultId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 580
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mResultId:Ljava/lang/String;

    .line 581
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist setScores([F)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 5
    .param p1, "scores"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation

    .line 598
    .local p0, "this":Landroid/view/textclassifier/TextClassifierEvent$Builder;, "Landroid/view/textclassifier/TextClassifierEvent$Builder<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    .line 600
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method
