.class public final enum Ljava/lang/invoke/VarHandle$AccessMode;
.super Ljava/lang/Enum;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/VarHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/invoke/VarHandle$AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_XOR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

.field public static final enum whitelist test-api WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

.field static final greylist-max-o methodNameToAccessMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/VarHandle$AccessMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o at:Ljava/lang/invoke/VarHandle$AccessType;

.field final greylist-max-o methodName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/invoke/VarHandle$AccessMode;
    .registers 32

    .line 1619
    sget-object v1, Ljava/lang/invoke/VarHandle$AccessMode;->GET:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->SET:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v3, Ljava/lang/invoke/VarHandle$AccessMode;->GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v4, Ljava/lang/invoke/VarHandle$AccessMode;->SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v6, Ljava/lang/invoke/VarHandle$AccessMode;->SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v7, Ljava/lang/invoke/VarHandle$AccessMode;->GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v8, Ljava/lang/invoke/VarHandle$AccessMode;->SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v9, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v10, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v11, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v12, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v13, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v14, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v15, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v16, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v17, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v18, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v19, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v20, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v21, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v22, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v23, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v24, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v25, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v26, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v27, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v28, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v29, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v30, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    sget-object v31, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    filled-new-array/range {v1 .. v31}, [Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 1625
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "get"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1631
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "set"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "SET"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1637
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getVolatile"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_VOLATILE"

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1643
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "setVolatile"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "SET_VOLATILE"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET_VOLATILE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1649
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_ACQUIRE"

    const/4 v6, 0x4

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1655
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "setRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "SET_RELEASE"

    const/4 v6, 0x5

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1661
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getOpaque"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_OPAQUE"

    const/4 v6, 0x6

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1667
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "setOpaque"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "SET_OPAQUE"

    const/4 v6, 0x7

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->SET_OPAQUE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1673
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "compareAndSet"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "COMPARE_AND_SET"

    const/16 v6, 0x8

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1679
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "compareAndExchange"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "COMPARE_AND_EXCHANGE"

    const/16 v6, 0x9

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1685
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "compareAndExchangeAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "COMPARE_AND_EXCHANGE_ACQUIRE"

    const/16 v6, 0xa

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1691
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "compareAndExchangeRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "COMPARE_AND_EXCHANGE_RELEASE"

    const/16 v6, 0xb

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->COMPARE_AND_EXCHANGE_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1697
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "weakCompareAndSetPlain"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "WEAK_COMPARE_AND_SET_PLAIN"

    const/16 v6, 0xc

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_PLAIN:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1703
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "weakCompareAndSet"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "WEAK_COMPARE_AND_SET"

    const/16 v6, 0xd

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1709
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "weakCompareAndSetAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "WEAK_COMPARE_AND_SET_ACQUIRE"

    const/16 v6, 0xe

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1715
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "weakCompareAndSetRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "WEAK_COMPARE_AND_SET_RELEASE"

    const/16 v6, 0xf

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->WEAK_COMPARE_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1721
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndSet"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_SET"

    const/16 v6, 0x10

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1727
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndSetAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_SET_ACQUIRE"

    const/16 v6, 0x11

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1733
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndSetRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_SET_RELEASE"

    const/16 v6, 0x12

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_SET_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1739
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndAdd"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_ADD"

    const/16 v6, 0x13

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1745
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndAddAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_ADD_ACQUIRE"

    const/16 v6, 0x14

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1751
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndAddRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_ADD_RELEASE"

    const/16 v6, 0x15

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_ADD_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1757
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseOr"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_OR"

    const/16 v6, 0x16

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1763
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseOrRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_OR_RELEASE"

    const/16 v6, 0x17

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1769
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseOrAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_OR_ACQUIRE"

    const/16 v6, 0x18

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_OR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1775
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseAnd"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_AND"

    const/16 v6, 0x19

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1781
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseAndRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_AND_RELEASE"

    const/16 v6, 0x1a

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1787
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseAndAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_AND_ACQUIRE"

    const/16 v6, 0x1b

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_AND_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1793
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseXor"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_XOR"

    const/16 v6, 0x1c

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1799
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseXorRelease"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_XOR_RELEASE"

    const/16 v6, 0x1d

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_RELEASE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1805
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessMode;

    const-string v1, "getAndBitwiseXorAcquire"

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    const-string v3, "GET_AND_BITWISE_XOR_ACQUIRE"

    const/16 v6, 0x1e

    invoke-direct {v0, v3, v6, v1, v2}, Ljava/lang/invoke/VarHandle$AccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->GET_AND_BITWISE_XOR_ACQUIRE:Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1619
    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessMode;->$values()[Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1810
    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessMode;->values()[Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0

    .line 1813
    .local v0, "values":[Ljava/lang/invoke/VarHandle$AccessMode;
    array-length v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v5

    .line 1814
    .local v1, "initialCapacity":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    .line 1815
    array-length v2, v0

    :goto_1e2
    if-ge v4, v2, :cond_1f0

    aget-object v3, v0, v4

    .line 1816
    .local v3, "am":Ljava/lang/invoke/VarHandle$AccessMode;
    sget-object v5, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    iget-object v6, v3, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    .end local v3    # "am":Ljava/lang/invoke/VarHandle$AccessMode;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e2

    .line 1818
    .end local v0    # "values":[Ljava/lang/invoke/VarHandle$AccessMode;
    .end local v1    # "initialCapacity":I
    :cond_1f0
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/invoke/VarHandle$AccessType;)V
    .registers 5
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "at"    # Ljava/lang/invoke/VarHandle$AccessType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/VarHandle$AccessType;",
            ")V"
        }
    .end annotation

    .line 1823
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1824
    iput-object p3, p0, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    .line 1825
    iput-object p4, p0, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1826
    return-void
.end method

.method public static whitelist test-api valueFromMethodName(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessMode;
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1852
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->methodNameToAccessMode:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1853
    .local v0, "am":Ljava/lang/invoke/VarHandle$AccessMode;
    if-eqz v0, :cond_b

    return-object v0

    .line 1854
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No AccessMode value for method name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessMode;
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

    .line 1619
    const-class v0, Ljava/lang/invoke/VarHandle$AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$AccessMode;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/invoke/VarHandle$AccessMode;
    .registers 1

    .line 1619
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessMode;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessMode;

    invoke-virtual {v0}, [Ljava/lang/invoke/VarHandle$AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/VarHandle$AccessMode;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api methodName()Ljava/lang/String;
    .registers 2

    .line 1836
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$AccessMode;->methodName:Ljava/lang/String;

    return-object v0
.end method
