.class public final enum Landroid/icu/text/PersonName$PreferredOrder;
.super Ljava/lang/Enum;
.source "PersonName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferredOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PersonName$PreferredOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PersonName$PreferredOrder;

.field public static final enum blacklist DEFAULT:Landroid/icu/text/PersonName$PreferredOrder;

.field public static final enum blacklist GIVEN_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

.field public static final enum blacklist SURNAME_FIRST:Landroid/icu/text/PersonName$PreferredOrder;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PersonName$PreferredOrder;
    .registers 3

    .line 209
    sget-object v0, Landroid/icu/text/PersonName$PreferredOrder;->DEFAULT:Landroid/icu/text/PersonName$PreferredOrder;

    sget-object v1, Landroid/icu/text/PersonName$PreferredOrder;->GIVEN_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

    sget-object v2, Landroid/icu/text/PersonName$PreferredOrder;->SURNAME_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/PersonName$PreferredOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 214
    new-instance v0, Landroid/icu/text/PersonName$PreferredOrder;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonName$PreferredOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonName$PreferredOrder;->DEFAULT:Landroid/icu/text/PersonName$PreferredOrder;

    .line 220
    new-instance v0, Landroid/icu/text/PersonName$PreferredOrder;

    const-string v1, "GIVEN_FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonName$PreferredOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonName$PreferredOrder;->GIVEN_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

    .line 226
    new-instance v0, Landroid/icu/text/PersonName$PreferredOrder;

    const-string v1, "SURNAME_FIRST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonName$PreferredOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonName$PreferredOrder;->SURNAME_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

    .line 209
    invoke-static {}, Landroid/icu/text/PersonName$PreferredOrder;->$values()[Landroid/icu/text/PersonName$PreferredOrder;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PersonName$PreferredOrder;->$VALUES:[Landroid/icu/text/PersonName$PreferredOrder;

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

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/PersonName$PreferredOrder;
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

    .line 209
    const-class v0, Landroid/icu/text/PersonName$PreferredOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PersonName$PreferredOrder;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/PersonName$PreferredOrder;
    .registers 1

    .line 209
    sget-object v0, Landroid/icu/text/PersonName$PreferredOrder;->$VALUES:[Landroid/icu/text/PersonName$PreferredOrder;

    invoke-virtual {v0}, [Landroid/icu/text/PersonName$PreferredOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PersonName$PreferredOrder;

    return-object v0
.end method
