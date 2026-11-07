.class public final enum Landroid/icu/text/CompactDecimalFormat$CompactStyle;
.super Ljava/lang/Enum;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/CompactDecimalFormat$CompactStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum whitelist test-api LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum whitelist test-api SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .registers 2

    .line 64
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    filled-new-array {v0, v1}, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    const-string v1, "SHORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 72
    new-instance v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    const-string v1, "LONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 64
    invoke-static {}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/CompactDecimalFormat$CompactStyle;
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

    .line 64
    const-class v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .registers 1

    .line 64
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {v0}, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method
