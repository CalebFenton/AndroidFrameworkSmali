.class final enum Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

.field public static final enum blacklist deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

.field public static final enum blacklist valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
    .registers 2

    .line 418
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    filled-new-array {v0, v1}, [Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 418
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    const-string v1, "deprecated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    const-string v1, "valueType"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->$values()[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

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

    .line 418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
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

    .line 418
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
    .registers 1

    .line 418
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-object v0
.end method
