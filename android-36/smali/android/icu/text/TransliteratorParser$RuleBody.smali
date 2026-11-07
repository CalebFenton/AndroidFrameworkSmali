.class abstract Landroid/icu/text/TransliteratorParser$RuleBody;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RuleBody"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/TransliteratorParser-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/TransliteratorParser$RuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist handleNextLine()Ljava/lang/String;
.end method

.method blacklist nextLine()Ljava/lang/String;
    .registers 5

    .line 299
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorParser$RuleBody;->handleNextLine()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_48

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "b":Ljava/lang/StringBuilder;
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorParser$RuleBody;->handleNextLine()Ljava/lang/String;

    move-result-object v0

    .line 307
    if-nez v0, :cond_2f

    .line 308
    goto :goto_44

    .line 310
    :cond_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_44

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1f

    .line 313
    :cond_44
    :goto_44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .end local v1    # "b":Ljava/lang/StringBuilder;
    :cond_48
    return-object v0
.end method

.method abstract blacklist reset()V
.end method
