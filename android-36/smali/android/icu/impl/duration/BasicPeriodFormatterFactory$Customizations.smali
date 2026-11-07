.class Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Customizations"
.end annotation


# instance fields
.field blacklist countVariant:B

.field blacklist displayDirection:Z

.field blacklist displayLimit:Z

.field blacklist separatorVariant:B

.field blacklist unitVariant:B


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 229
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    .line 230
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    .line 231
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 232
    iput-byte v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-void
.end method


# virtual methods
.method public blacklist copy()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .registers 3

    .line 235
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    .line 236
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 237
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    .line 238
    iget-byte v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    .line 239
    iget-byte v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 240
    iget-byte v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    .line 241
    return-object v0
.end method
