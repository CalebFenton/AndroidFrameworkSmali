.class public final enum Landroid/icu/lang/UCharacter$IdentifierType;
.super Ljava/lang/Enum;
.source "UCharacter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentifierType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/lang/UCharacter$IdentifierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist DEFAULT_IGNORABLE:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist DEPRECATED:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist EXCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist INCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist LIMITED_USE:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist NOT_CHARACTER:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist NOT_NFKC:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist NOT_XID:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist OBSOLETE:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist RECOMMENDED:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist TECHNICAL:Landroid/icu/lang/UCharacter$IdentifierType;

.field public static final enum blacklist UNCOMMON_USE:Landroid/icu/lang/UCharacter$IdentifierType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/lang/UCharacter$IdentifierType;
    .registers 12

    .line 3664
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_CHARACTER:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v1, Landroid/icu/lang/UCharacter$IdentifierType;->DEPRECATED:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v2, Landroid/icu/lang/UCharacter$IdentifierType;->DEFAULT_IGNORABLE:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v3, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_NFKC:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v4, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_XID:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v5, Landroid/icu/lang/UCharacter$IdentifierType;->EXCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v6, Landroid/icu/lang/UCharacter$IdentifierType;->OBSOLETE:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v7, Landroid/icu/lang/UCharacter$IdentifierType;->TECHNICAL:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v8, Landroid/icu/lang/UCharacter$IdentifierType;->UNCOMMON_USE:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v9, Landroid/icu/lang/UCharacter$IdentifierType;->LIMITED_USE:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v10, Landroid/icu/lang/UCharacter$IdentifierType;->INCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    sget-object v11, Landroid/icu/lang/UCharacter$IdentifierType;->RECOMMENDED:Landroid/icu/lang/UCharacter$IdentifierType;

    filled-new-array/range {v0 .. v11}, [Landroid/icu/lang/UCharacter$IdentifierType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3666
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "NOT_CHARACTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_CHARACTER:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3668
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "DEPRECATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->DEPRECATED:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3670
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "DEFAULT_IGNORABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->DEFAULT_IGNORABLE:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3672
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "NOT_NFKC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_NFKC:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3674
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "NOT_XID"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->NOT_XID:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3676
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "EXCLUSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->EXCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3678
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "OBSOLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->OBSOLETE:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3680
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "TECHNICAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->TECHNICAL:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3682
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "UNCOMMON_USE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->UNCOMMON_USE:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3684
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "LIMITED_USE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->LIMITED_USE:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3686
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "INCLUSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->INCLUSION:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3688
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierType;

    const-string v1, "RECOMMENDED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->RECOMMENDED:Landroid/icu/lang/UCharacter$IdentifierType;

    .line 3664
    invoke-static {}, Landroid/icu/lang/UCharacter$IdentifierType;->$values()[Landroid/icu/lang/UCharacter$IdentifierType;

    move-result-object v0

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->$VALUES:[Landroid/icu/lang/UCharacter$IdentifierType;

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

    .line 3664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/lang/UCharacter$IdentifierType;
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

    .line 3664
    const-class v0, Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/lang/UCharacter$IdentifierType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/lang/UCharacter$IdentifierType;
    .registers 1

    .line 3664
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierType;->$VALUES:[Landroid/icu/lang/UCharacter$IdentifierType;

    invoke-virtual {v0}, [Landroid/icu/lang/UCharacter$IdentifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/lang/UCharacter$IdentifierType;

    return-object v0
.end method
