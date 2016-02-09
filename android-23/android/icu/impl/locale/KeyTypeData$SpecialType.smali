.class final enum Landroid/icu/impl/locale/KeyTypeData$SpecialType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SpecialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/locale/KeyTypeData$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;


# instance fields
.field handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 48
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@5
    const-string/jumbo v1, "CODEPOINTS"

    #@8
    new-instance v2, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;

    #@a
    invoke-direct {v2, v5}, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;)V

    #@d
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    #@10
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@12
    .line 49
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@14
    const-string/jumbo v1, "REORDER_CODE"

    #@17
    new-instance v2, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;

    #@19
    invoke-direct {v2, v5}, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;)V

    #@1c
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    #@1f
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@21
    .line 47
    const/4 v0, 0x2

    #@22
    new-array v0, v0, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@24
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@26
    aput-object v1, v0, v3

    #@28
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@2a
    aput-object v1, v0, v4

    #@2c
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@2e
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .locals 0
    .param p3, "handler"    # Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 53
    iput-object p3, p0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    #@5
    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@2
    return-object v0
.end method
