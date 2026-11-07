.class abstract Landroid/icu/impl/personname/FieldModifierImpl;
.super Ljava/lang/Object;
.source "FieldModifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/personname/FieldModifierImpl$AllCapsModifier;,
        Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;,
        Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;
    }
.end annotation


# static fields
.field private static final blacklist MONOGRAM_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

.field private static final blacklist NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

.field private static final blacklist NULL_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetFirstGrapheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/personname/FieldModifierImpl;->getFirstGrapheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/icu/impl/personname/FieldModifierImpl$1;

    invoke-direct {v0}, Landroid/icu/impl/personname/FieldModifierImpl$1;-><init>()V

    sput-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    .line 66
    new-instance v0, Landroid/icu/impl/personname/FieldModifierImpl$2;

    invoke-direct {v0}, Landroid/icu/impl/personname/FieldModifierImpl$2;-><init>()V

    sput-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NULL_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    .line 166
    new-instance v0, Landroid/icu/impl/personname/FieldModifierImpl$3;

    invoke-direct {v0}, Landroid/icu/impl/personname/FieldModifierImpl$3;-><init>()V

    sput-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->MONOGRAM_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist forName(Landroid/icu/text/PersonName$FieldModifier;Landroid/icu/impl/personname/PersonNameFormatterImpl;)Landroid/icu/impl/personname/FieldModifierImpl;
    .registers 6
    .param p0, "modifierID"    # Landroid/icu/text/PersonName$FieldModifier;
    .param p1, "formatterImpl"    # Landroid/icu/impl/personname/PersonNameFormatterImpl;

    .line 21
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl$4;->$SwitchMap$android$icu$text$PersonName$FieldModifier:[I

    invoke-virtual {p0}, Landroid/icu/text/PersonName$FieldModifier;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modifier ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_24
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    .line 41
    :pswitch_27
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    .line 38
    :pswitch_2a
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->MONOGRAM_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    .line 36
    :pswitch_2d
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    .line 33
    :pswitch_30
    new-instance v0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;

    invoke-virtual {p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getInitialPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getInitialSequencePattern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 31
    :pswitch_42
    new-instance v0, Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;

    invoke-virtual {p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/personname/FieldModifierImpl$InitialCapModifier;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 29
    :pswitch_4c
    new-instance v0, Landroid/icu/impl/personname/FieldModifierImpl$AllCapsModifier;

    invoke-virtual {p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/personname/FieldModifierImpl$AllCapsModifier;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 27
    :pswitch_56
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    .line 25
    :pswitch_59
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NULL_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    .line 23
    :pswitch_5c
    sget-object v0, Landroid/icu/impl/personname/FieldModifierImpl;->NOOP_MODIFIER:Landroid/icu/impl/personname/FieldModifierImpl;

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method private static blacklist getFirstGrapheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    const-string v0, ""

    return-object v0

    .line 183
    :cond_9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 184
    .local v0, "bi":Landroid/icu/text/BreakIterator;
    invoke-virtual {v0, p0}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract blacklist modifyField(Ljava/lang/String;)Ljava/lang/String;
.end method
