.class final enum Landroid/bluetooth/BluetoothQualityReport$ConnState;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$ConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field private static final blacklist sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;


# instance fields
.field private final blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .registers 20

    .line 205
    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v4, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v5, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v6, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v7, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v8, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v9, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v10, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v11, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v12, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v13, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v14, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v15, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v16, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v17, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v18, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v19, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    filled-new-array/range {v1 .. v19}, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 206
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 207
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v1, 0x1

    const/16 v2, 0x81

    const-string v3, "CONN_ACTIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 208
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_HOLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 209
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_SNIFF_IDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 210
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v1, 0x4

    const/16 v2, 0x84

    const-string v3, "CONN_SNIFF_ACTIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 211
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v1, 0x5

    const/16 v2, 0x85

    const-string v3, "CONN_SNIFF_MASTER_TRANSITION"

    invoke-direct {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 212
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PARK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 213
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v1, 0x7

    const/16 v2, 0x47

    const-string v3, "CONN_PARK_PEND"

    invoke-direct {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 214
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_UNPARK_PEND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 215
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v1, 0x9

    const/16 v2, 0x89

    const-string v3, "CONN_UNPARK_ACTIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 216
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v1, 0xa

    const/16 v2, 0x4a

    const-string v3, "CONN_DISCONNECT_PENDING"

    invoke-direct {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 217
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PAGING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 218
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_PAGE_SCAN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 219
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_LOCAL_LOOPBACK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 220
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_LE_ACTIVE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 221
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_ANT_ACTIVE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 222
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_TRIGGER_SCAN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 223
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_RECONNECTING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 224
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_SEMI_CONN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 205
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 227
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    .line 231
    return-void
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 6
    .param p0, "val"    # I

    .line 234
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 235
    .local v3, "state":Landroid/bluetooth/BluetoothQualityReport$ConnState;
    iget v4, v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    if-ne v4, p0, :cond_11

    .line 236
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    .end local v3    # "state":Landroid/bluetooth/BluetoothQualityReport$ConnState;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 239
    :cond_14
    const-string v0, "INVALID"

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$ConnState;
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

    .line 205
    const-class v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .registers 1

    .line 205
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$ConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method
