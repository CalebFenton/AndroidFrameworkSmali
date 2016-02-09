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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method abstract isValid(Ljava/lang/String;)Z
.end method
