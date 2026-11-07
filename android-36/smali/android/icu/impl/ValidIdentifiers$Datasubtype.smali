.class public final enum Landroid/icu/impl/ValidIdentifiers$Datasubtype;
.super Ljava/lang/Enum;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Datasubtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist macroregion:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist private_use:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist reserved:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist special:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum blacklist unknown:Landroid/icu/impl/ValidIdentifiers$Datasubtype;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .registers 7

    .line 51
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->private_use:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    sget-object v2, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    sget-object v3, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->special:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    sget-object v4, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->unknown:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    sget-object v5, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->macroregion:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    sget-object v6, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->reserved:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 52
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "deprecated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 53
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "private_use"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->private_use:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 54
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "regular"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 55
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "special"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->special:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 56
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "unknown"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->unknown:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 57
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "macroregion"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->macroregion:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 58
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "reserved"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->reserved:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 51
    invoke-static {}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->$values()[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->$VALUES:[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;
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

    .line 51
    const-class v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .registers 1

    .line 51
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->$VALUES:[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-virtual {v0}, [Landroid/icu/impl/ValidIdentifiers$Datasubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    return-object v0
.end method
