.class abstract Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SpecialTypeHandler"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist isWellFormed(Ljava/lang/String;)Z
.end method
