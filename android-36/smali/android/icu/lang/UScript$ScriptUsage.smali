.class public final enum Landroid/icu/lang/UScript$ScriptUsage;
.super Ljava/lang/Enum;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScriptUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/lang/UScript$ScriptUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum whitelist test-api ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum whitelist test-api EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum whitelist test-api LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum whitelist test-api NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum whitelist test-api RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum whitelist test-api UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/lang/UScript$ScriptUsage;
    .registers 6

    .line 1428
    sget-object v0, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    sget-object v2, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    sget-object v3, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    sget-object v4, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    sget-object v5, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/lang/UScript$ScriptUsage;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1432
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string v1, "NOT_ENCODED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1436
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1440
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string v1, "EXCLUDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1444
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string v1, "LIMITED_USE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1448
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string v1, "ASPIRATIONAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1452
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const-string v1, "RECOMMENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1428
    invoke-static {}, Landroid/icu/lang/UScript$ScriptUsage;->$values()[Landroid/icu/lang/UScript$ScriptUsage;

    move-result-object v0

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

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

    .line 1428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/lang/UScript$ScriptUsage;
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

    .line 1428
    const-class v0, Landroid/icu/lang/UScript$ScriptUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/lang/UScript$ScriptUsage;
    .registers 1

    .line 1428
    sget-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    invoke-virtual {v0}, [Landroid/icu/lang/UScript$ScriptUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method
