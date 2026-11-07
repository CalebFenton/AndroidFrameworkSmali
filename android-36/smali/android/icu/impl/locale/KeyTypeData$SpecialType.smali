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
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum blacklist CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum blacklist PRIVATE_USE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum blacklist REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum blacklist RG_KEY_VALUE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum blacklist SCRIPT_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum blacklist SUBDIVISION_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;


# instance fields
.field blacklist handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .registers 6

    .line 96
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->SCRIPT_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v4, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v5, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 97
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    const-string v3, "CODEPOINTS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 98
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    const-string v3, "REORDER_CODE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 99
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    const-string v3, "RG_KEY_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 100
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$ScriptCodeTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ScriptCodeTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    const-string v3, "SCRIPT_CODE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->SCRIPT_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 101
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    const-string v3, "SUBDIVISION_CODE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 102
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    const-string v2, "PRIVATE_USE"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 96
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .registers 4
    .param p3, "handler"    # Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    .line 107
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 96
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .registers 1

    .line 96
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method
