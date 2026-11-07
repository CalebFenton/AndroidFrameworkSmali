.class public final enum Ljdk/net/SocketFlow$Status;
.super Ljava/lang/Enum;
.source "SocketFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/net/SocketFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljdk/net/SocketFlow$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist IN_PROGRESS:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NO_PERMISSION:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist NO_STATUS:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist OK:Ljdk/net/SocketFlow$Status;

.field public static final enum blacklist OTHER:Ljdk/net/SocketFlow$Status;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Ljdk/net/SocketFlow$Status;
    .registers 8

    .line 75
    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    sget-object v1, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    sget-object v2, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    sget-object v3, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    sget-object v4, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    sget-object v5, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    sget-object v6, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    sget-object v7, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    filled-new-array/range {v0 .. v7}, [Ljdk/net/SocketFlow$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 80
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NO_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    .line 84
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "OK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    .line 88
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NO_PERMISSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    .line 92
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    .line 96
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    .line 100
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "ALREADY_CREATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    .line 104
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    .line 108
    new-instance v0, Ljdk/net/SocketFlow$Status;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Ljdk/net/SocketFlow$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    .line 75
    invoke-static {}, Ljdk/net/SocketFlow$Status;->$values()[Ljdk/net/SocketFlow$Status;

    move-result-object v0

    sput-object v0, Ljdk/net/SocketFlow$Status;->$VALUES:[Ljdk/net/SocketFlow$Status;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
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

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljdk/net/SocketFlow$Status;->value:I

    return-void
.end method

.method static blacklist from(I)Ljdk/net/SocketFlow$Status;
    .registers 4
    .param p0, "value"    # I

    .line 114
    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_9

    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 115
    :cond_9
    sget-object v0, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_12

    sget-object v0, Ljdk/net/SocketFlow$Status;->OK:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 116
    :cond_12
    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_1b

    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_PERMISSION:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 117
    :cond_1b
    sget-object v0, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_24

    sget-object v0, Ljdk/net/SocketFlow$Status;->NOT_CONNECTED:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 118
    :cond_24
    sget-object v0, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_2d

    sget-object v0, Ljdk/net/SocketFlow$Status;->NOT_SUPPORTED:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 119
    :cond_2d
    sget-object v0, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_36

    sget-object v0, Ljdk/net/SocketFlow$Status;->ALREADY_CREATED:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 120
    :cond_36
    sget-object v0, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_3f

    sget-object v0, Ljdk/net/SocketFlow$Status;->IN_PROGRESS:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 121
    :cond_3f
    sget-object v0, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    iget v0, v0, Ljdk/net/SocketFlow$Status;->value:I

    if-ne p0, v0, :cond_48

    sget-object v0, Ljdk/net/SocketFlow$Status;->OTHER:Ljdk/net/SocketFlow$Status;

    return-object v0

    .line 122
    :cond_48
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljdk/net/SocketFlow$Status;
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

    .line 75
    const-class v0, Ljdk/net/SocketFlow$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk/net/SocketFlow$Status;

    return-object v0
.end method

.method public static blacklist values()[Ljdk/net/SocketFlow$Status;
    .registers 1

    .line 75
    sget-object v0, Ljdk/net/SocketFlow$Status;->$VALUES:[Ljdk/net/SocketFlow$Status;

    invoke-virtual {v0}, [Ljdk/net/SocketFlow$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdk/net/SocketFlow$Status;

    return-object v0
.end method
