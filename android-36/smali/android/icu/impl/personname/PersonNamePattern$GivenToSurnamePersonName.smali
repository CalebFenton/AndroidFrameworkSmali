.class Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;
.super Ljava/lang/Object;
.source "PersonNamePattern.java"

# interfaces
.implements Landroid/icu/text/PersonName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/PersonNamePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GivenToSurnamePersonName"
.end annotation


# instance fields
.field private blacklist underlyingPersonName:Landroid/icu/text/PersonName;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/PersonName;)V
    .registers 2
    .param p1, "underlyingPersonName"    # Landroid/icu/text/PersonName;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;->underlyingPersonName:Landroid/icu/text/PersonName;

    .line 368
    return-void
.end method


# virtual methods
.method public blacklist getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .param p1, "identifier"    # Landroid/icu/text/PersonName$NameField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PersonName$NameField;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 386
    .local p2, "modifiers":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PersonName$FieldModifier;>;"
    sget-object v0, Landroid/icu/text/PersonName$NameField;->SURNAME:Landroid/icu/text/PersonName$NameField;

    if-ne p1, v0, :cond_d

    .line 387
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;->underlyingPersonName:Landroid/icu/text/PersonName;

    sget-object v1, Landroid/icu/text/PersonName$NameField;->GIVEN:Landroid/icu/text/PersonName$NameField;

    invoke-interface {v0, v1, p2}, Landroid/icu/text/PersonName;->getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :cond_d
    sget-object v0, Landroid/icu/text/PersonName$NameField;->GIVEN:Landroid/icu/text/PersonName$NameField;

    if-ne p1, v0, :cond_13

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_13
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;->underlyingPersonName:Landroid/icu/text/PersonName;

    invoke-interface {v0, p1, p2}, Landroid/icu/text/PersonName;->getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNameLocale()Ljava/util/Locale;
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;->underlyingPersonName:Landroid/icu/text/PersonName;

    invoke-interface {v0}, Landroid/icu/text/PersonName;->getNameLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPreferredOrder()Landroid/icu/text/PersonName$PreferredOrder;
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;->underlyingPersonName:Landroid/icu/text/PersonName;

    invoke-interface {v0}, Landroid/icu/text/PersonName;->getPreferredOrder()Landroid/icu/text/PersonName$PreferredOrder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inverted version of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern$GivenToSurnamePersonName;->underlyingPersonName:Landroid/icu/text/PersonName;

    invoke-interface {v1}, Landroid/icu/text/PersonName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
