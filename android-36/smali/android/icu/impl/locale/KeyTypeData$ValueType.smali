.class public final enum Landroid/icu/impl/locale/KeyTypeData$ValueType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum blacklist any:Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum blacklist incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum blacklist multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum blacklist single:Landroid/icu/impl/locale/KeyTypeData$ValueType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .registers 4

    .line 37
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$ValueType;->multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    sget-object v2, Landroid/icu/impl/locale/KeyTypeData$ValueType;->incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    sget-object v3, Landroid/icu/impl/locale/KeyTypeData$ValueType;->any:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const-string v1, "single"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const-string v1, "multiple"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const-string v1, "incremental"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const-string v1, "any"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->any:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    .line 37
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->$values()[Landroid/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$ValueType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;
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

    .line 37
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .registers 1

    .line 37
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$ValueType;

    return-object v0
.end method
