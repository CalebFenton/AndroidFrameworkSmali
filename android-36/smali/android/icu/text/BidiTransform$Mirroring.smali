.class public final enum Landroid/icu/text/BidiTransform$Mirroring;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mirroring"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/BidiTransform$Mirroring;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/BidiTransform$Mirroring;

.field public static final enum greylist-max-o OFF:Landroid/icu/text/BidiTransform$Mirroring;

.field public static final enum greylist-max-o ON:Landroid/icu/text/BidiTransform$Mirroring;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/BidiTransform$Mirroring;
    .registers 2

    .line 79
    sget-object v0, Landroid/icu/text/BidiTransform$Mirroring;->OFF:Landroid/icu/text/BidiTransform$Mirroring;

    sget-object v1, Landroid/icu/text/BidiTransform$Mirroring;->ON:Landroid/icu/text/BidiTransform$Mirroring;

    filled-new-array {v0, v1}, [Landroid/icu/text/BidiTransform$Mirroring;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 84
    new-instance v0, Landroid/icu/text/BidiTransform$Mirroring;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BidiTransform$Mirroring;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Mirroring;->OFF:Landroid/icu/text/BidiTransform$Mirroring;

    .line 92
    new-instance v0, Landroid/icu/text/BidiTransform$Mirroring;

    const-string v1, "ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BidiTransform$Mirroring;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Mirroring;->ON:Landroid/icu/text/BidiTransform$Mirroring;

    .line 79
    invoke-static {}, Landroid/icu/text/BidiTransform$Mirroring;->$values()[Landroid/icu/text/BidiTransform$Mirroring;

    move-result-object v0

    sput-object v0, Landroid/icu/text/BidiTransform$Mirroring;->$VALUES:[Landroid/icu/text/BidiTransform$Mirroring;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/BidiTransform$Mirroring;
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

    .line 79
    const-class v0, Landroid/icu/text/BidiTransform$Mirroring;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BidiTransform$Mirroring;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/BidiTransform$Mirroring;
    .registers 1

    .line 79
    sget-object v0, Landroid/icu/text/BidiTransform$Mirroring;->$VALUES:[Landroid/icu/text/BidiTransform$Mirroring;

    invoke-virtual {v0}, [Landroid/icu/text/BidiTransform$Mirroring;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/BidiTransform$Mirroring;

    return-object v0
.end method
