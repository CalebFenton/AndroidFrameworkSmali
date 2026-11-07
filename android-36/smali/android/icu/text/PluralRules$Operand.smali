.class public final enum Landroid/icu/text/PluralRules$Operand;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PluralRules$Operand;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PluralRules$Operand;

.field public static final enum blacklist c:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist e:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o f:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o i:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o j:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o n:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o t:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o v:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o w:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PluralRules$Operand;
    .registers 9

    .line 438
    sget-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    sget-object v3, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    sget-object v5, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    sget-object v6, Landroid/icu/text/PluralRules$Operand;->e:Landroid/icu/text/PluralRules$Operand;

    sget-object v7, Landroid/icu/text/PluralRules$Operand;->c:Landroid/icu/text/PluralRules$Operand;

    sget-object v8, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    filled-new-array/range {v0 .. v8}, [Landroid/icu/text/PluralRules$Operand;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 446
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "n"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    .line 455
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "i"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    .line 464
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "f"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    .line 473
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "t"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    .line 482
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "v"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    .line 491
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "w"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    .line 501
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "e"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->e:Landroid/icu/text/PluralRules$Operand;

    .line 514
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "c"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->c:Landroid/icu/text/PluralRules$Operand;

    .line 529
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const-string v1, "j"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    .line 438
    invoke-static {}, Landroid/icu/text/PluralRules$Operand;->$values()[Landroid/icu/text/PluralRules$Operand;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

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

    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
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

    .line 438
    const-class v0, Landroid/icu/text/PluralRules$Operand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Operand;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/PluralRules$Operand;
    .registers 1

    .line 438
    sget-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v0}, [Landroid/icu/text/PluralRules$Operand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PluralRules$Operand;

    return-object v0
.end method
