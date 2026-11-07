.class public final enum Ljavax/sip/TransactionState;
.super Ljava/lang/Enum;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/sip/TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/sip/TransactionState;

.field public static final enum blacklist CALLING:Ljavax/sip/TransactionState;

.field public static final enum blacklist COMPLETED:Ljavax/sip/TransactionState;

.field public static final enum blacklist CONFIRMED:Ljavax/sip/TransactionState;

.field public static final enum blacklist PROCEEDING:Ljavax/sip/TransactionState;

.field public static final enum blacklist TERMINATED:Ljavax/sip/TransactionState;

.field public static final enum blacklist TRYING:Ljavax/sip/TransactionState;


# direct methods
.method private static synthetic blacklist $values()[Ljavax/sip/TransactionState;
    .registers 6

    .line 3
    sget-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    sget-object v2, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    sget-object v4, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    filled-new-array/range {v0 .. v5}, [Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "CALLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    .line 5
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "TRYING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    .line 6
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "PROCEEDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    .line 7
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 8
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    .line 9
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 3
    invoke-static {}, Ljavax/sip/TransactionState;->$values()[Ljavax/sip/TransactionState;

    move-result-object v0

    sput-object v0, Ljavax/sip/TransactionState;->$VALUES:[Ljavax/sip/TransactionState;

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

.method public static blacklist valueOf(Ljava/lang/String;)Ljavax/sip/TransactionState;
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
    const-class v0, Ljavax/sip/TransactionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/sip/TransactionState;

    return-object v0
.end method

.method public static blacklist values()[Ljavax/sip/TransactionState;
    .registers 1

    .line 3
    sget-object v0, Ljavax/sip/TransactionState;->$VALUES:[Ljavax/sip/TransactionState;

    invoke-virtual {v0}, [Ljavax/sip/TransactionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/sip/TransactionState;

    return-object v0
.end method
