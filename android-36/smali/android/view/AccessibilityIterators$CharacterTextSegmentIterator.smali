.class Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterTextSegmentIterator"
.end annotation


# static fields
.field private static greylist-max-o sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected greylist-max-o mImpl:Ljava/text/BreakIterator;

.field private greylist-max-o mLocale:Ljava/util/Locale;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 88
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    .line 91
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 82
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    if-nez v0, :cond_b

    .line 83
    new-instance v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 85
    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o following(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 102
    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 104
    return-object v1

    .line 106
    :cond_a
    if-lt p1, v0, :cond_d

    .line 107
    return-object v1

    .line 109
    :cond_d
    move v2, p1

    .line 110
    .local v2, "start":I
    if-gez v2, :cond_11

    .line 111
    const/4 v2, 0x0

    .line 113
    :cond_11
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_23

    .line 114
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    .line 115
    if-ne v2, v4, :cond_11

    .line 116
    return-object v1

    .line 119
    :cond_23
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v3

    .line 120
    .local v3, "end":I
    if-ne v3, v4, :cond_2c

    .line 121
    return-object v1

    .line 123
    :cond_2c
    invoke-virtual {p0, v2, v3}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o initialize(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 96
    invoke-super {p0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 154
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 155
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_c

    .line 156
    return-void

    .line 158
    :cond_c
    iget-object v1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 159
    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    .line 162
    :cond_19
    return-void
.end method

.method protected greylist-max-o onLocaleChanged(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 165
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 166
    return-void
.end method

.method public greylist-max-o preceding(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 128
    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 130
    return-object v1

    .line 132
    :cond_a
    if-gtz p1, :cond_d

    .line 133
    return-object v1

    .line 135
    :cond_d
    move v2, p1

    .line 136
    .local v2, "end":I
    if-le v2, v0, :cond_11

    .line 137
    move v2, v0

    .line 139
    :cond_11
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_23

    .line 140
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 141
    if-ne v2, v4, :cond_11

    .line 142
    return-object v1

    .line 145
    :cond_23
    iget-object v3, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v3

    .line 146
    .local v3, "start":I
    if-ne v3, v4, :cond_2c

    .line 147
    return-object v1

    .line 149
    :cond_2c
    invoke-virtual {p0, v3, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1
.end method
