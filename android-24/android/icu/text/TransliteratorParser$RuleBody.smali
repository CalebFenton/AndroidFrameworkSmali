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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TransliteratorParser$RuleBody;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/TransliteratorParser$RuleBody;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract handleNextLine()Ljava/lang/String;
.end method

.method nextLine()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x5c

    #@2
    .line 294
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorParser$RuleBody;->handleNextLine()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 295
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@8
    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    if-lez v2, :cond_1

    #@e
    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    .line 300
    .local v0, "b":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@22
    move-result v2

    #@23
    add-int/lit8 v2, v2, -0x1

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@28
    .line 301
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorParser$RuleBody;->handleNextLine()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 302
    if-nez v1, :cond_2

    #@2e
    .line 308
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 310
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_1
    return-object v1

    #@33
    .line 305
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@39
    move-result v2

    #@3a
    if-lez v2, :cond_0

    #@3c
    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3f
    move-result v2

    #@40
    add-int/lit8 v2, v2, -0x1

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v2

    #@46
    if-ne v2, v3, :cond_0

    #@48
    goto :goto_0
.end method

.method abstract reset()V
.end method
