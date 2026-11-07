.class final Landroid/icu/text/Normalizer$FCDModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FCDModeImpl"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/icu/text/Normalizer$ModeImpl;
    .registers 1

    sget-object v0, Landroid/icu/text/Normalizer$FCDModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 168
    new-instance v0, Landroid/icu/text/Normalizer$ModeImpl;

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getFCDNormalizer2()Landroid/icu/text/Normalizer2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer$FCDModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
