.class public final enum Landroid/icu/text/PluralRules$PluralType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluralType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PluralRules$PluralType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PluralRules$PluralType;

.field public static final enum whitelist test-api CARDINAL:Landroid/icu/text/PluralRules$PluralType;

.field public static final enum whitelist test-api ORDINAL:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PluralRules$PluralType;
    .registers 2

    .line 350
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    filled-new-array {v0, v1}, [Landroid/icu/text/PluralRules$PluralType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 354
    new-instance v0, Landroid/icu/text/PluralRules$PluralType;

    const-string v1, "CARDINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    .line 358
    new-instance v0, Landroid/icu/text/PluralRules$PluralType;

    const-string v1, "ORDINAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules$PluralType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    .line 350
    invoke-static {}, Landroid/icu/text/PluralRules$PluralType;->$values()[Landroid/icu/text/PluralRules$PluralType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$PluralType;->$VALUES:[Landroid/icu/text/PluralRules$PluralType;

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

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$PluralType;
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

    .line 350
    const-class v0, Landroid/icu/text/PluralRules$PluralType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$PluralType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/PluralRules$PluralType;
    .registers 1

    .line 350
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->$VALUES:[Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {v0}, [Landroid/icu/text/PluralRules$PluralType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PluralRules$PluralType;

    return-object v0
.end method
