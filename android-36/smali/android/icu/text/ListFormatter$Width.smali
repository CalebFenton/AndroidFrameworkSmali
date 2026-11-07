.class public final enum Landroid/icu/text/ListFormatter$Width;
.super Ljava/lang/Enum;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Width"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/ListFormatter$Width;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/ListFormatter$Width;

.field public static final enum whitelist test-api NARROW:Landroid/icu/text/ListFormatter$Width;

.field public static final enum whitelist test-api SHORT:Landroid/icu/text/ListFormatter$Width;

.field public static final enum whitelist test-api WIDE:Landroid/icu/text/ListFormatter$Width;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/ListFormatter$Width;
    .registers 3

    .line 77
    sget-object v0, Landroid/icu/text/ListFormatter$Width;->WIDE:Landroid/icu/text/ListFormatter$Width;

    sget-object v1, Landroid/icu/text/ListFormatter$Width;->SHORT:Landroid/icu/text/ListFormatter$Width;

    sget-object v2, Landroid/icu/text/ListFormatter$Width;->NARROW:Landroid/icu/text/ListFormatter$Width;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/ListFormatter$Width;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Landroid/icu/text/ListFormatter$Width;

    const-string v1, "WIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ListFormatter$Width;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ListFormatter$Width;->WIDE:Landroid/icu/text/ListFormatter$Width;

    .line 86
    new-instance v0, Landroid/icu/text/ListFormatter$Width;

    const-string v1, "SHORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ListFormatter$Width;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ListFormatter$Width;->SHORT:Landroid/icu/text/ListFormatter$Width;

    .line 91
    new-instance v0, Landroid/icu/text/ListFormatter$Width;

    const-string v1, "NARROW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ListFormatter$Width;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ListFormatter$Width;->NARROW:Landroid/icu/text/ListFormatter$Width;

    .line 77
    invoke-static {}, Landroid/icu/text/ListFormatter$Width;->$values()[Landroid/icu/text/ListFormatter$Width;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter$Width;->$VALUES:[Landroid/icu/text/ListFormatter$Width;

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

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/ListFormatter$Width;
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

    .line 77
    const-class v0, Landroid/icu/text/ListFormatter$Width;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/ListFormatter$Width;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/ListFormatter$Width;
    .registers 1

    .line 77
    sget-object v0, Landroid/icu/text/ListFormatter$Width;->$VALUES:[Landroid/icu/text/ListFormatter$Width;

    invoke-virtual {v0}, [Landroid/icu/text/ListFormatter$Width;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/ListFormatter$Width;

    return-object v0
.end method
