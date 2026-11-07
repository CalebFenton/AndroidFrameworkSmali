.class public Landroid/icu/impl/locale/LocaleValidityChecker$Where;
.super Ljava/lang/Object;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LocaleValidityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Where"
.end annotation


# instance fields
.field public blacklist codeFailure:Ljava/lang/String;

.field public blacklist fieldFailure:Landroid/icu/impl/ValidIdentifiers$Datatype;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z
    .registers 4
    .param p1, "datatype"    # Landroid/icu/impl/ValidIdentifiers$Datatype;
    .param p2, "code"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->fieldFailure:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 43
    iput-object p2, p0, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->codeFailure:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 48
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->fieldFailure:Landroid/icu/impl/ValidIdentifiers$Datatype;

    if-nez v0, :cond_7

    const-string v0, "OK"

    goto :goto_2e

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->fieldFailure:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->codeFailure:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0
.end method
