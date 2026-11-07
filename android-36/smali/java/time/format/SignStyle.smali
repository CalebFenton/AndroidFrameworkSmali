.class public final enum Ljava/time/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/SignStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/SignStyle;

.field public static final enum whitelist test-api ALWAYS:Ljava/time/format/SignStyle;

.field public static final enum whitelist test-api EXCEEDS_PAD:Ljava/time/format/SignStyle;

.field public static final enum whitelist test-api NEVER:Ljava/time/format/SignStyle;

.field public static final enum whitelist test-api NORMAL:Ljava/time/format/SignStyle;

.field public static final enum whitelist test-api NOT_NEGATIVE:Ljava/time/format/SignStyle;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/format/SignStyle;
    .registers 5

    .line 76
    sget-object v0, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    sget-object v2, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/time/format/SignStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 84
    new-instance v0, Ljava/time/format/SignStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 92
    new-instance v0, Ljava/time/format/SignStyle;

    const-string v1, "ALWAYS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    .line 99
    new-instance v0, Ljava/time/format/SignStyle;

    const-string v1, "NEVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    .line 106
    new-instance v0, Ljava/time/format/SignStyle;

    const-string v1, "NOT_NEGATIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    .line 115
    new-instance v0, Ljava/time/format/SignStyle;

    const-string v1, "EXCEEDS_PAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 76
    invoke-static {}, Ljava/time/format/SignStyle;->$values()[Ljava/time/format/SignStyle;

    move-result-object v0

    sput-object v0, Ljava/time/format/SignStyle;->$VALUES:[Ljava/time/format/SignStyle;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/format/SignStyle;
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

    .line 76
    const-class v0, Ljava/time/format/SignStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/SignStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/format/SignStyle;
    .registers 1

    .line 76
    sget-object v0, Ljava/time/format/SignStyle;->$VALUES:[Ljava/time/format/SignStyle;

    invoke-virtual {v0}, [Ljava/time/format/SignStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method greylist-max-o parse(ZZZ)Z
    .registers 7
    .param p1, "positive"    # Z
    .param p2, "strict"    # Z
    .param p3, "fixedWidth"    # Z

    .line 126
    invoke-virtual {p0}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_18

    .line 135
    :pswitch_9
    if-nez p2, :cond_16

    if-nez p3, :cond_16

    move v1, v2

    goto :goto_16

    .line 132
    :pswitch_f
    return v2

    .line 129
    :pswitch_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_15

    :cond_14
    move v1, v2

    :cond_15
    return v1

    .line 135
    :cond_16
    :goto_16
    return v1

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
