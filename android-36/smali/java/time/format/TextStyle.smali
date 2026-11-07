.class public final enum Ljava/time/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api FULL:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api FULL_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api NARROW:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api NARROW_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api SHORT:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api SHORT_STANDALONE:Ljava/time/format/TextStyle;


# instance fields
.field private final greylist-max-o calendarStyle:I

.field private final greylist-max-o zoneNameStyleIndex:I


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/format/TextStyle;
    .registers 6

    .line 88
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    sget-object v2, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    sget-object v3, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    sget-object v4, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    sget-object v5, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    filled-new-array/range {v0 .. v5}, [Ljava/time/format/TextStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 96
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 101
    new-instance v0, Ljava/time/format/TextStyle;

    const v1, 0x8002

    const-string v4, "FULL_STANDALONE"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v1, v2}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    .line 106
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3, v5, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    .line 111
    new-instance v0, Ljava/time/format/TextStyle;

    const/4 v1, 0x3

    const v2, 0x8001

    const-string v3, "SHORT_STANDALONE"

    invoke-direct {v0, v3, v1, v2, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    .line 116
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "NARROW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 121
    new-instance v0, Ljava/time/format/TextStyle;

    const/4 v1, 0x5

    const v2, 0x8004

    const-string v3, "NARROW_STANDALONE"

    invoke-direct {v0, v3, v1, v2, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 88
    invoke-static {}, Ljava/time/format/TextStyle;->$values()[Ljava/time/format/TextStyle;

    move-result-object v0

    sput-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "calendarStyle"    # I
    .param p4, "zoneNameStyleIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p3, p0, Ljava/time/format/TextStyle;->calendarStyle:I

    .line 128
    iput p4, p0, Ljava/time/format/TextStyle;->zoneNameStyleIndex:I

    .line 129
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/format/TextStyle;
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

    .line 88
    const-class v0, Ljava/time/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/TextStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/format/TextStyle;
    .registers 1

    .line 88
    sget-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    invoke-virtual {v0}, [Ljava/time/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api asNormal()Ljava/time/format/TextStyle;
    .registers 3

    .line 153
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api asStandalone()Ljava/time/format/TextStyle;
    .registers 3

    .line 144
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api isStandalone()Z
    .registers 3

    .line 136
    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method greylist-max-o toCalendarStyle()I
    .registers 2

    .line 162
    iget v0, p0, Ljava/time/format/TextStyle;->calendarStyle:I

    return v0
.end method

.method greylist-max-o zoneNameStyleIndex()I
    .registers 2

    .line 175
    iget v0, p0, Ljava/time/format/TextStyle;->zoneNameStyleIndex:I

    return v0
.end method
