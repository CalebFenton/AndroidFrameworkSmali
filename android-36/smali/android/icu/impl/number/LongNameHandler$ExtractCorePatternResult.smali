.class Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
.super Ljava/lang/Object;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractCorePatternResult"
.end annotation


# instance fields
.field blacklist coreUnit:Ljava/lang/String;

.field blacklist joinerChar:C

.field blacklist placeholderPosition:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/number/LongNameHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/number/LongNameHandler$ExtractCorePatternResult;-><init>()V

    return-void
.end method
