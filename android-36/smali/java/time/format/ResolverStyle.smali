.class public final enum Ljava/time/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/ResolverStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/ResolverStyle;

.field public static final enum whitelist test-api LENIENT:Ljava/time/format/ResolverStyle;

.field public static final enum whitelist test-api SMART:Ljava/time/format/ResolverStyle;

.field public static final enum whitelist test-api STRICT:Ljava/time/format/ResolverStyle;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/format/ResolverStyle;
    .registers 3

    .line 77
    sget-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    filled-new-array {v0, v1, v2}, [Ljava/time/format/ResolverStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 90
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 103
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string v1, "SMART"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    .line 114
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string v1, "LENIENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    .line 77
    invoke-static {}, Ljava/time/format/ResolverStyle;->$values()[Ljava/time/format/ResolverStyle;

    move-result-object v0

    sput-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/format/ResolverStyle;
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
    const-class v0, Ljava/time/format/ResolverStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/format/ResolverStyle;
    .registers 1

    .line 77
    sget-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

    invoke-virtual {v0}, [Ljava/time/format/ResolverStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/ResolverStyle;

    return-object v0
.end method
