.class public final enum Landroid/icu/util/LocaleMatcher$FavorSubtag;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavorSubtag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/LocaleMatcher$FavorSubtag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/LocaleMatcher$FavorSubtag;

.field public static final enum blacklist LANGUAGE:Landroid/icu/util/LocaleMatcher$FavorSubtag;

.field public static final enum blacklist SCRIPT:Landroid/icu/util/LocaleMatcher$FavorSubtag;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/LocaleMatcher$FavorSubtag;
    .registers 2

    .line 94
    sget-object v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;->LANGUAGE:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    sget-object v1, Landroid/icu/util/LocaleMatcher$FavorSubtag;->SCRIPT:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    filled-new-array {v0, v1}, [Landroid/icu/util/LocaleMatcher$FavorSubtag;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 99
    new-instance v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/LocaleMatcher$FavorSubtag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;->LANGUAGE:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 103
    new-instance v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;

    const-string v1, "SCRIPT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/LocaleMatcher$FavorSubtag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;->SCRIPT:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 94
    invoke-static {}, Landroid/icu/util/LocaleMatcher$FavorSubtag;->$values()[Landroid/icu/util/LocaleMatcher$FavorSubtag;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;->$VALUES:[Landroid/icu/util/LocaleMatcher$FavorSubtag;

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

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/util/LocaleMatcher$FavorSubtag;
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

    .line 94
    const-class v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/util/LocaleMatcher$FavorSubtag;
    .registers 1

    .line 94
    sget-object v0, Landroid/icu/util/LocaleMatcher$FavorSubtag;->$VALUES:[Landroid/icu/util/LocaleMatcher$FavorSubtag;

    invoke-virtual {v0}, [Landroid/icu/util/LocaleMatcher$FavorSubtag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/LocaleMatcher$FavorSubtag;

    return-object v0
.end method
