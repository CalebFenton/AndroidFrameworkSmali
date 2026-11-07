.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$Direction;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum whitelist test-api LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum whitelist test-api LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum whitelist test-api NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum whitelist test-api NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum whitelist test-api PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum whitelist test-api THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .registers 6

    .line 284
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 288
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "LAST_2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 293
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "LAST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 298
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "THIS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 303
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "NEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 308
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "NEXT_2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 313
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-string v1, "PLAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 284
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$values()[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

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

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
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

    .line 284
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .registers 1

    .line 284
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0
.end method
