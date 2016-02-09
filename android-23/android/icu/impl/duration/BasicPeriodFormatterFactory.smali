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
.field private customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private customizationsInUse:Z

.field private data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private final ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 1
    .param p1, "ds"    # Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@5
    .line 65
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@7
    invoke-direct {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    #@a
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@c
    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    #@16
    .line 63
    return-void
.end method

.method public static getDefault()Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@7
    move-result-object v0

    #@8
    .line 75
    check-cast v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    #@a
    return-object v0
.end method

.method private updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 196
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->copy()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@c
    .line 197
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    #@f
    .line 199
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@11
    return-object v0
.end method


# virtual methods
.method public getCountVariant()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@2
    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    #@4
    return v0
.end method

.method getData()Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .locals 2

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 205
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@6
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@e
    .line 207
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@10
    return-object v0
.end method

.method getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .locals 1
    .param p1, "locName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayLimit()Z
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@2
    iget-boolean v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    #@4
    return v0
.end method

.method public getDisplayPastFuture()Z
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@2
    iget-boolean v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    #@4
    return v0
.end method

.method public getFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .locals 4

    #@0
    .prologue
    .line 189
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    #@3
    .line 190
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatter;

    #@5
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    #@7
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData()Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@a
    move-result-object v2

    #@b
    .line 191
    iget-object v3, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@d
    .line 190
    invoke-direct {v0, p0, v1, v2, v3}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    #@10
    return-object v0
.end method

.method public getSeparatorVariant()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@2
    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    #@4
    return v0
.end method

.method public getUnitVariant()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@2
    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    #@4
    return v0
.end method

.method public setCountVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2
    .param p1, "variant"    # I

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@3
    move-result-object v0

    #@4
    int-to-byte v1, p1

    #@5
    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    #@7
    .line 176
    return-object p0
.end method

.method public setDisplayLimit(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1
    .param p1, "display"    # Z

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    #@6
    .line 96
    return-object p0
.end method

.method public setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1
    .param p1, "display"    # Z

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    #@6
    .line 116
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@3
    .line 84
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    #@5
    .line 85
    return-object p0
.end method

.method public setSeparatorVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2
    .param p1, "variant"    # I

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@3
    move-result-object v0

    #@4
    int-to-byte v1, p1

    #@5
    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    #@7
    .line 136
    return-object p0
.end method

.method public setUnitVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2
    .param p1, "variant"    # I

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    #@3
    move-result-object v0

    #@4
    int-to-byte v1, p1

    #@5
    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    #@7
    .line 156
    return-object p0
.end method
