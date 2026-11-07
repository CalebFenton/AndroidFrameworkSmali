.class final enum Ljava/lang/invoke/VarHandle$AccessType;
.super Ljava/lang/Enum;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/VarHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/invoke/VarHandle$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum blacklist COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

.field public static final enum greylist-max-o SET:Ljava/lang/invoke/VarHandle$AccessType;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/invoke/VarHandle$AccessType;
    .registers 7

    .line 1549
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v1, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v2, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v3, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v4, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v5, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    sget-object v6, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/invoke/VarHandle$AccessType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1550
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1551
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "SET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->SET:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1552
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "COMPARE_AND_SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_SET:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1553
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "COMPARE_AND_EXCHANGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->COMPARE_AND_EXCHANGE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1554
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "GET_AND_UPDATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1557
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "GET_AND_UPDATE_BITWISE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_BITWISE:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1558
    new-instance v0, Ljava/lang/invoke/VarHandle$AccessType;

    const-string v1, "GET_AND_UPDATE_NUMERIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/VarHandle$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->GET_AND_UPDATE_NUMERIC:Ljava/lang/invoke/VarHandle$AccessType;

    .line 1549
    invoke-static {}, Ljava/lang/invoke/VarHandle$AccessType;->$values()[Ljava/lang/invoke/VarHandle$AccessType;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/VarHandle$AccessType;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessType;

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

    .line 1549
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static varargs blacklist allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 5
    .param p0, "values"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1600
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "intermediate":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 1601
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Class;

    return-object v1
.end method

.method private static varargs blacklist fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1606
    .local p0, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "intermediate":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1607
    .local v0, "i":I
    if-eqz p1, :cond_8

    .line 1608
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object p1, p0, v0

    move v0, v1

    .line 1609
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_8
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 1610
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-object v3, p2, v1

    aput-object v3, p0, v0

    .line 1609
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_9

    .line 1611
    .end local v1    # "j":I
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_16
    return v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessType;
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

    .line 1549
    const-class v0, Ljava/lang/invoke/VarHandle$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$AccessType;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/lang/invoke/VarHandle$AccessType;
    .registers 1

    .line 1549
    sget-object v0, Ljava/lang/invoke/VarHandle$AccessType;->$VALUES:[Ljava/lang/invoke/VarHandle$AccessType;

    invoke-virtual {v0}, [Ljava/lang/invoke/VarHandle$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/VarHandle$AccessType;

    return-object v0
.end method


# virtual methods
.method varargs blacklist accessModeType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 1564
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "intermediate":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$AccessType;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_66

    .line 1594
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unknown AccessType"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :pswitch_11
    invoke-static {v2, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1590
    .local v0, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1591
    .local v1, "i":I
    aput-object p2, v0, v1

    .line 1592
    invoke-static {p2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 1581
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    :pswitch_20
    invoke-static {v1, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1582
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1583
    .restart local v1    # "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object p2, v0, v1

    .line 1584
    aput-object p2, v0, v2

    .line 1585
    invoke-static {p2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    .line 1575
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    :pswitch_33
    invoke-static {v1, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1576
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1577
    .restart local v1    # "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aput-object p2, v0, v1

    .line 1578
    aput-object p2, v0, v2

    .line 1579
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    .line 1570
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    :pswitch_48
    invoke-static {v2, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1571
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v1

    .line 1572
    .restart local v1    # "i":I
    aput-object p2, v0, v1

    .line 1573
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 1566
    .end local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    :pswitch_59
    const/4 v0, 0x0

    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->allocateParameters(ILjava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .line 1567
    .restart local v0    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Ljava/lang/invoke/VarHandle$AccessType;->fillParameters([Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)I

    .line 1568
    invoke-static {p2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_59
        :pswitch_48
        :pswitch_33
        :pswitch_20
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
