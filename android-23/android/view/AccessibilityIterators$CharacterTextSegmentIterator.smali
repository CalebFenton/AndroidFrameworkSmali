.class Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected mImpl:Ljava/text/BreakIterator;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    #@5
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    #@8
    .line 85
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    #@b
    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 76
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    new-instance v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    #@6
    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    #@9
    sput-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    #@b
    .line 79
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    #@d
    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 96
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 97
    .local v2, "textLegth":I
    if-gtz v2, :cond_0

    #@a
    .line 98
    return-object v4

    #@b
    .line 100
    :cond_0
    if-lt p1, v2, :cond_1

    #@d
    .line 101
    return-object v4

    #@e
    .line 103
    :cond_1
    move v1, p1

    #@f
    .line 104
    .local v1, "start":I
    if-gez v1, :cond_2

    #@11
    .line 105
    const/4 v1, 0x0

    #@12
    .line 107
    :cond_2
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@14
    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_3

    #@1a
    .line 108
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@1c
    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    #@1f
    move-result v1

    #@20
    .line 109
    if-ne v1, v5, :cond_2

    #@22
    .line 110
    return-object v4

    #@23
    .line 113
    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@25
    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    #@28
    move-result v0

    #@29
    .line 114
    .local v0, "end":I
    if-ne v0, v5, :cond_4

    #@2b
    .line 115
    return-object v4

    #@2c
    .line 117
    :cond_4
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    #@3
    .line 91
    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@5
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    #@8
    .line 89
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 148
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    .line 149
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    #@4
    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 150
    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    #@c
    .line 151
    invoke-virtual {p0, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    #@f
    .line 147
    :cond_0
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 161
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@6
    .line 160
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 156
    return-void
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 122
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 123
    .local v2, "textLegth":I
    if-gtz v2, :cond_0

    #@a
    .line 124
    return-object v4

    #@b
    .line 126
    :cond_0
    if-gtz p1, :cond_1

    #@d
    .line 127
    return-object v4

    #@e
    .line 129
    :cond_1
    move v0, p1

    #@f
    .line 130
    .local v0, "end":I
    if-le v0, v2, :cond_2

    #@11
    .line 131
    move v0, v2

    #@12
    .line 133
    :cond_2
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@14
    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_3

    #@1a
    .line 134
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@1c
    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@1f
    move-result v0

    #@20
    .line 135
    if-ne v0, v5, :cond_2

    #@22
    .line 136
    return-object v4

    #@23
    .line 139
    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@25
    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@28
    move-result v1

    #@29
    .line 140
    .local v1, "start":I
    if-ne v1, v5, :cond_4

    #@2b
    .line 141
    return-object v4

    #@2c
    .line 143
    :cond_4
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method
