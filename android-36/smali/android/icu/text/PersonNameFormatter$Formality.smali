.class public final enum Landroid/icu/text/PersonNameFormatter$Formality;
.super Ljava/lang/Enum;
.source "PersonNameFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonNameFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Formality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PersonNameFormatter$Formality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PersonNameFormatter$Formality;

.field public static final enum blacklist DEFAULT:Landroid/icu/text/PersonNameFormatter$Formality;

.field public static final enum blacklist FORMAL:Landroid/icu/text/PersonNameFormatter$Formality;

.field public static final enum blacklist INFORMAL:Landroid/icu/text/PersonNameFormatter$Formality;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PersonNameFormatter$Formality;
    .registers 3

    .line 129
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->FORMAL:Landroid/icu/text/PersonNameFormatter$Formality;

    sget-object v1, Landroid/icu/text/PersonNameFormatter$Formality;->INFORMAL:Landroid/icu/text/PersonNameFormatter$Formality;

    sget-object v2, Landroid/icu/text/PersonNameFormatter$Formality;->DEFAULT:Landroid/icu/text/PersonNameFormatter$Formality;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/PersonNameFormatter$Formality;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 133
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Formality;

    const-string v1, "FORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$Formality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->FORMAL:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 139
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Formality;

    const-string v1, "INFORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$Formality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->INFORMAL:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 145
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Formality;

    const-string v1, "DEFAULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$Formality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->DEFAULT:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 129
    invoke-static {}, Landroid/icu/text/PersonNameFormatter$Formality;->$values()[Landroid/icu/text/PersonNameFormatter$Formality;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->$VALUES:[Landroid/icu/text/PersonNameFormatter$Formality;

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

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/PersonNameFormatter$Formality;
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

    .line 129
    const-class v0, Landroid/icu/text/PersonNameFormatter$Formality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PersonNameFormatter$Formality;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/PersonNameFormatter$Formality;
    .registers 1

    .line 129
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->$VALUES:[Landroid/icu/text/PersonNameFormatter$Formality;

    invoke-virtual {v0}, [Landroid/icu/text/PersonNameFormatter$Formality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PersonNameFormatter$Formality;

    return-object v0
.end method
