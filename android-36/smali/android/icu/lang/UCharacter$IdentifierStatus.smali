.class public final enum Landroid/icu/lang/UCharacter$IdentifierStatus;
.super Ljava/lang/Enum;
.source "UCharacter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentifierStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/lang/UCharacter$IdentifierStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/lang/UCharacter$IdentifierStatus;

.field public static final enum blacklist ALLOWED:Landroid/icu/lang/UCharacter$IdentifierStatus;

.field public static final enum blacklist RESTRICTED:Landroid/icu/lang/UCharacter$IdentifierStatus;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/lang/UCharacter$IdentifierStatus;
    .registers 2

    .line 3649
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierStatus;->RESTRICTED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    sget-object v1, Landroid/icu/lang/UCharacter$IdentifierStatus;->ALLOWED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    filled-new-array {v0, v1}, [Landroid/icu/lang/UCharacter$IdentifierStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3651
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierStatus;

    const-string v1, "RESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierStatus;->RESTRICTED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    .line 3653
    new-instance v0, Landroid/icu/lang/UCharacter$IdentifierStatus;

    const-string v1, "ALLOWED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacter$IdentifierStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierStatus;->ALLOWED:Landroid/icu/lang/UCharacter$IdentifierStatus;

    .line 3649
    invoke-static {}, Landroid/icu/lang/UCharacter$IdentifierStatus;->$values()[Landroid/icu/lang/UCharacter$IdentifierStatus;

    move-result-object v0

    sput-object v0, Landroid/icu/lang/UCharacter$IdentifierStatus;->$VALUES:[Landroid/icu/lang/UCharacter$IdentifierStatus;

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

    .line 3649
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/lang/UCharacter$IdentifierStatus;
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

    .line 3649
    const-class v0, Landroid/icu/lang/UCharacter$IdentifierStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/lang/UCharacter$IdentifierStatus;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/lang/UCharacter$IdentifierStatus;
    .registers 1

    .line 3649
    sget-object v0, Landroid/icu/lang/UCharacter$IdentifierStatus;->$VALUES:[Landroid/icu/lang/UCharacter$IdentifierStatus;

    invoke-virtual {v0}, [Landroid/icu/lang/UCharacter$IdentifierStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/lang/UCharacter$IdentifierStatus;

    return-object v0
.end method
