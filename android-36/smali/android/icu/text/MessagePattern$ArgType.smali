.class public final enum Landroid/icu/text/MessagePattern$ArgType;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/MessagePattern$ArgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum whitelist test-api CHOICE:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum whitelist test-api NONE:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum whitelist test-api PLURAL:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum whitelist test-api SELECT:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum whitelist test-api SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

.field public static final enum whitelist test-api SIMPLE:Landroid/icu/text/MessagePattern$ArgType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/MessagePattern$ArgType;
    .registers 6

    .line 748
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 752
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    .line 757
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    .line 762
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string v1, "CHOICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    .line 771
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string v1, "PLURAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    .line 775
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string v1, "SELECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    .line 780
    new-instance v0, Landroid/icu/text/MessagePattern$ArgType;

    const-string v1, "SELECTORDINAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    .line 748
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->$values()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern$ArgType;->$VALUES:[Landroid/icu/text/MessagePattern$ArgType;

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

    .line 748
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ArgType;
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

    .line 748
    const-class v0, Landroid/icu/text/MessagePattern$ArgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/MessagePattern$ArgType;
    .registers 1

    .line 748
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->$VALUES:[Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v0}, [Landroid/icu/text/MessagePattern$ArgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasPluralStyle()Z
    .registers 2

    .line 787
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    if-eq p0, v0, :cond_b

    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
