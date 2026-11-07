.class Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;
.super Landroid/icu/impl/personname/FieldModifierImpl;
.source "FieldModifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/FieldModifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitialCapModifier"
.end annotation


# static fields
.field private static final blacklist TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;


# instance fields
.field private final blacklist locale:Ljava/util/Locale;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 98
    invoke-direct {p0}, Landroid/icu/impl/personname/FieldModifierImpl;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;->locale:Ljava/util/Locale;

    .line 100
    return-void
.end method


# virtual methods
.method public blacklist modifyField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fieldValue"    # Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    iget-object v1, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;->locale:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
