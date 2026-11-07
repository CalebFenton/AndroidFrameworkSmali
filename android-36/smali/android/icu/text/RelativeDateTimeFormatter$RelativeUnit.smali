.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist FRIDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist MONDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum greylist-max-o QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist SATURDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist SUNDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist THURSDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist TUESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum blacklist WEDNESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum whitelist test-api YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .registers 15

    .line 113
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v8, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SUNDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v9, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->TUESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v11, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEDNESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v12, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->THURSDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v13, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->FRIDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SATURDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    filled-new-array/range {v0 .. v14}, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 118
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "SECONDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 123
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "MINUTES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 128
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "HOURS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 133
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "DAYS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 138
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "WEEKS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 143
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "MONTHS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 148
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "YEARS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 154
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "QUARTERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 160
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "SUNDAYS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SUNDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 166
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "MONDAYS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 172
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "TUESDAYS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->TUESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 178
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "WEDNESDAYS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEDNESDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 184
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "THURSDAYS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->THURSDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 190
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "FRIDAYS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->FRIDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 196
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v1, "SATURDAYS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SATURDAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 113
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

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

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
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

    .line 113
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .registers 1

    .line 113
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-object v0
.end method
