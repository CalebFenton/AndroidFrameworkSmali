.class public final enum Ljavax/sip/DialogState;
.super Ljava/lang/Enum;
.source "DialogState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/sip/DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/sip/DialogState;

.field public static final enum blacklist CONFIRMED:Ljavax/sip/DialogState;

.field public static final enum blacklist EARLY:Ljavax/sip/DialogState;

.field public static final enum blacklist TERMINATED:Ljavax/sip/DialogState;

.field public static final blacklist _CONFIRMED:I

.field public static final blacklist _EARLY:I

.field public static final blacklist _TERMINATED:I


# direct methods
.method private static synthetic blacklist $values()[Ljavax/sip/DialogState;
    .registers 3

    .line 3
    sget-object v0, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    sget-object v1, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    sget-object v2, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    filled-new-array {v0, v1, v2}, [Ljavax/sip/DialogState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Ljavax/sip/DialogState;

    const-string v1, "EARLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/sip/DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    .line 5
    new-instance v0, Ljavax/sip/DialogState;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavax/sip/DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    .line 6
    new-instance v0, Ljavax/sip/DialogState;

    const-string v1, "TERMINATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljavax/sip/DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    .line 3
    invoke-static {}, Ljavax/sip/DialogState;->$values()[Ljavax/sip/DialogState;

    move-result-object v0

    sput-object v0, Ljavax/sip/DialogState;->$VALUES:[Ljavax/sip/DialogState;

    .line 8
    sget-object v0, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v0}, Ljavax/sip/DialogState;->ordinal()I

    move-result v0

    sput v0, Ljavax/sip/DialogState;->_EARLY:I

    .line 9
    sget-object v0, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    invoke-virtual {v0}, Ljavax/sip/DialogState;->ordinal()I

    move-result v0

    sput v0, Ljavax/sip/DialogState;->_CONFIRMED:I

    .line 10
    sget-object v0, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v0}, Ljavax/sip/DialogState;->ordinal()I

    move-result v0

    sput v0, Ljavax/sip/DialogState;->_TERMINATED:I

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist getObject(I)Ljavax/sip/DialogState;
    .registers 5
    .param p0, "state"    # I

    .line 14
    :try_start_0
    invoke-static {}, Ljavax/sip/DialogState;->values()[Ljavax/sip/DialogState;

    move-result-object v0

    aget-object v0, v0, p0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 15
    :catch_7
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialog state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljavax/sip/DialogState;
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

    .line 3
    const-class v0, Ljavax/sip/DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/sip/DialogState;

    return-object v0
.end method

.method public static blacklist values()[Ljavax/sip/DialogState;
    .registers 1

    .line 3
    sget-object v0, Ljavax/sip/DialogState;->$VALUES:[Ljavax/sip/DialogState;

    invoke-virtual {v0}, [Ljavax/sip/DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/sip/DialogState;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .registers 2

    .line 22
    invoke-virtual {p0}, Ljavax/sip/DialogState;->ordinal()I

    move-result v0

    return v0
.end method
