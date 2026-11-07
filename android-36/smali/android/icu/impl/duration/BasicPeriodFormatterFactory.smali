.class public Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    }
.end annotation


# instance fields
.field private blacklist customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private blacklist customizationsInUse:Z

.field private blacklist data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private final blacklist ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private blacklist localeName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .registers 3
    .param p1, "ds"    # Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 69
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static blacklist getDefault()Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
    .registers 1

    .line 80
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    .line 79
    return-object v0
.end method

.method private blacklist updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->copy()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    .line 210
    :cond_f
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    return-object v0
.end method


# virtual methods
.method public blacklist getCountVariant()I
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return v0
.end method

.method blacklist getData()Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    if-nez v0, :cond_e

    .line 216
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 218
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    return-object v0
.end method

.method blacklist getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .registers 3
    .param p1, "locName"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayLimit()Z
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    return v0
.end method

.method public blacklist getDisplayPastFuture()Z
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    return v0
.end method

.method public blacklist getFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .registers 5

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    .line 201
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData()Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    return-object v0
.end method

.method public blacklist getSeparatorVariant()I
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    return v0
.end method

.method public blacklist getUnitVariant()I
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    return v0
.end method

.method public blacklist setCountVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 4
    .param p1, "variant"    # I

    .line 185
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    .line 186
    return-object p0
.end method

.method public blacklist setDisplayLimit(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 3
    .param p1, "display"    # Z

    .line 101
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 102
    return-object p0
.end method

.method public blacklist setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 3
    .param p1, "display"    # Z

    .line 122
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    .line 123
    return-object p0
.end method

.method public blacklist setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 3
    .param p1, "localeName"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 89
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public blacklist setSeparatorVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 4
    .param p1, "variant"    # I

    .line 143
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    .line 144
    return-object p0
.end method

.method public blacklist setUnitVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 4
    .param p1, "variant"    # I

    .line 164
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 165
    return-object p0
.end method
