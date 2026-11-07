.class public final enum Landroid/icu/text/ListFormatter$Type;
.super Ljava/lang/Enum;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/ListFormatter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/ListFormatter$Type;

.field public static final enum whitelist test-api AND:Landroid/icu/text/ListFormatter$Type;

.field public static final enum whitelist test-api OR:Landroid/icu/text/ListFormatter$Type;

.field public static final enum whitelist test-api UNITS:Landroid/icu/text/ListFormatter$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/ListFormatter$Type;
    .registers 3

    .line 56
    sget-object v0, Landroid/icu/text/ListFormatter$Type;->AND:Landroid/icu/text/ListFormatter$Type;

    sget-object v1, Landroid/icu/text/ListFormatter$Type;->OR:Landroid/icu/text/ListFormatter$Type;

    sget-object v2, Landroid/icu/text/ListFormatter$Type;->UNITS:Landroid/icu/text/ListFormatter$Type;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/ListFormatter$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Landroid/icu/text/ListFormatter$Type;

    const-string v1, "AND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ListFormatter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ListFormatter$Type;->AND:Landroid/icu/text/ListFormatter$Type;

    .line 66
    new-instance v0, Landroid/icu/text/ListFormatter$Type;

    const-string v1, "OR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ListFormatter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ListFormatter$Type;->OR:Landroid/icu/text/ListFormatter$Type;

    .line 71
    new-instance v0, Landroid/icu/text/ListFormatter$Type;

    const-string v1, "UNITS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ListFormatter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ListFormatter$Type;->UNITS:Landroid/icu/text/ListFormatter$Type;

    .line 56
    invoke-static {}, Landroid/icu/text/ListFormatter$Type;->$values()[Landroid/icu/text/ListFormatter$Type;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter$Type;->$VALUES:[Landroid/icu/text/ListFormatter$Type;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/ListFormatter$Type;
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

    .line 56
    const-class v0, Landroid/icu/text/ListFormatter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/ListFormatter$Type;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/ListFormatter$Type;
    .registers 1

    .line 56
    sget-object v0, Landroid/icu/text/ListFormatter$Type;->$VALUES:[Landroid/icu/text/ListFormatter$Type;

    invoke-virtual {v0}, [Landroid/icu/text/ListFormatter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/ListFormatter$Type;

    return-object v0
.end method
