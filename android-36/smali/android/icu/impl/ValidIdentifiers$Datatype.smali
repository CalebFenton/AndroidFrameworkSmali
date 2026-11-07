.class public final enum Landroid/icu/impl/ValidIdentifiers$Datatype;
.super Ljava/lang/Enum;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Datatype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/ValidIdentifiers$Datatype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist currency:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist illegal:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist language:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist region:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist script:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist subdivision:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist t:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist u:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist unit:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist variant:Landroid/icu/impl/ValidIdentifiers$Datatype;

.field public static final enum blacklist x:Landroid/icu/impl/ValidIdentifiers$Datatype;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/ValidIdentifiers$Datatype;
    .registers 11

    .line 34
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->currency:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datatype;->language:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v2, Landroid/icu/impl/ValidIdentifiers$Datatype;->region:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v3, Landroid/icu/impl/ValidIdentifiers$Datatype;->script:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v4, Landroid/icu/impl/ValidIdentifiers$Datatype;->subdivision:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v5, Landroid/icu/impl/ValidIdentifiers$Datatype;->unit:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v6, Landroid/icu/impl/ValidIdentifiers$Datatype;->variant:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v7, Landroid/icu/impl/ValidIdentifiers$Datatype;->u:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v8, Landroid/icu/impl/ValidIdentifiers$Datatype;->t:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v9, Landroid/icu/impl/ValidIdentifiers$Datatype;->x:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v10, Landroid/icu/impl/ValidIdentifiers$Datatype;->illegal:Landroid/icu/impl/ValidIdentifiers$Datatype;

    filled-new-array/range {v0 .. v10}, [Landroid/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "currency"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->currency:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 36
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "language"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->language:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 37
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "region"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->region:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 38
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "script"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->script:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 39
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "subdivision"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->subdivision:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 40
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "unit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->unit:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 41
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "variant"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->variant:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 42
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "u"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->u:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 43
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "t"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->t:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 44
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "x"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->x:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 45
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    const-string v1, "illegal"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$Datatype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->illegal:Landroid/icu/impl/ValidIdentifiers$Datatype;

    .line 34
    invoke-static {}, Landroid/icu/impl/ValidIdentifiers$Datatype;->$values()[Landroid/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->$VALUES:[Landroid/icu/impl/ValidIdentifiers$Datatype;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datatype;
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

    .line 34
    const-class v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ValidIdentifiers$Datatype;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/ValidIdentifiers$Datatype;
    .registers 1

    .line 34
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->$VALUES:[Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v0}, [Landroid/icu/impl/ValidIdentifiers$Datatype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/ValidIdentifiers$Datatype;

    return-object v0
.end method
