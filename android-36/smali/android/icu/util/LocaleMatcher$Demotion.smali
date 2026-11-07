.class public final enum Landroid/icu/util/LocaleMatcher$Demotion;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Demotion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/LocaleMatcher$Demotion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/LocaleMatcher$Demotion;

.field public static final enum blacklist NONE:Landroid/icu/util/LocaleMatcher$Demotion;

.field public static final enum blacklist REGION:Landroid/icu/util/LocaleMatcher$Demotion;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/LocaleMatcher$Demotion;
    .registers 2

    .line 113
    sget-object v0, Landroid/icu/util/LocaleMatcher$Demotion;->NONE:Landroid/icu/util/LocaleMatcher$Demotion;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Demotion;->REGION:Landroid/icu/util/LocaleMatcher$Demotion;

    filled-new-array {v0, v1}, [Landroid/icu/util/LocaleMatcher$Demotion;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 117
    new-instance v0, Landroid/icu/util/LocaleMatcher$Demotion;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/LocaleMatcher$Demotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$Demotion;->NONE:Landroid/icu/util/LocaleMatcher$Demotion;

    .line 142
    new-instance v0, Landroid/icu/util/LocaleMatcher$Demotion;

    const-string v1, "REGION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/LocaleMatcher$Demotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/LocaleMatcher$Demotion;->REGION:Landroid/icu/util/LocaleMatcher$Demotion;

    .line 113
    invoke-static {}, Landroid/icu/util/LocaleMatcher$Demotion;->$values()[Landroid/icu/util/LocaleMatcher$Demotion;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleMatcher$Demotion;->$VALUES:[Landroid/icu/util/LocaleMatcher$Demotion;

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

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/util/LocaleMatcher$Demotion;
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

    .line 113
    const-class v0, Landroid/icu/util/LocaleMatcher$Demotion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/LocaleMatcher$Demotion;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/util/LocaleMatcher$Demotion;
    .registers 1

    .line 113
    sget-object v0, Landroid/icu/util/LocaleMatcher$Demotion;->$VALUES:[Landroid/icu/util/LocaleMatcher$Demotion;

    invoke-virtual {v0}, [Landroid/icu/util/LocaleMatcher$Demotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/LocaleMatcher$Demotion;

    return-object v0
.end method
