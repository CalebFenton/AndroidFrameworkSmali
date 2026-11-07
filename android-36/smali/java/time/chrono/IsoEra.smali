.class public final enum Ljava/time/chrono/IsoEra;
.super Ljava/lang/Enum;
.source "IsoEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/chrono/IsoEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/chrono/IsoEra;

.field public static final enum whitelist test-api BCE:Ljava/time/chrono/IsoEra;

.field public static final enum whitelist test-api CE:Ljava/time/chrono/IsoEra;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/chrono/IsoEra;
    .registers 2

    .line 106
    sget-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    sget-object v1, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    filled-new-array {v0, v1}, [Ljava/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 112
    new-instance v0, Ljava/time/chrono/IsoEra;

    const-string v1, "BCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    .line 117
    new-instance v0, Ljava/time/chrono/IsoEra;

    const-string v1, "CE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    .line 106
    invoke-static {}, Ljava/time/chrono/IsoEra;->$values()[Ljava/time/chrono/IsoEra;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/IsoEra;->$VALUES:[Ljava/time/chrono/IsoEra;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api of(I)Ljava/time/chrono/IsoEra;
    .registers 4
    .param p0, "isoEra"    # I

    .line 131
    packed-switch p0, :pswitch_data_22

    .line 137
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1c
    sget-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    return-object v0

    .line 133
    :pswitch_1f
    sget-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/IsoEra;
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

    .line 106
    const-class v0, Ljava/time/chrono/IsoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/IsoEra;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/chrono/IsoEra;
    .registers 1

    .line 106
    sget-object v0, Ljava/time/chrono/IsoEra;->$VALUES:[Ljava/time/chrono/IsoEra;

    invoke-virtual {v0}, [Ljava/time/chrono/IsoEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/IsoEra;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getValue()I
    .registers 2

    .line 151
    invoke-virtual {p0}, Ljava/time/chrono/IsoEra;->ordinal()I

    move-result v0

    return v0
.end method
