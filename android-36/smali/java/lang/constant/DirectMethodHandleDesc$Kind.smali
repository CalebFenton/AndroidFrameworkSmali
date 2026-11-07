.class public final enum Ljava/lang/constant/DirectMethodHandleDesc$Kind;
.super Ljava/lang/Enum;
.source "DirectMethodHandleDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/constant/DirectMethodHandleDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/constant/DirectMethodHandleDesc$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist CONSTRUCTOR:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist GETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist INTERFACE_SPECIAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist INTERFACE_STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist INTERFACE_VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist SETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist SPECIAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist STATIC_GETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field public static final enum blacklist STATIC_SETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field private static final blacklist TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field public static final enum blacklist VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;


# instance fields
.field public final blacklist isInterface:Z

.field public final blacklist refKind:I


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .registers 11

    .line 59
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v1, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v2, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v3, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v4, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->SPECIAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v5, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_SPECIAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v6, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->CONSTRUCTOR:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v7, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->GETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v8, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->SETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v9, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC_GETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v10, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC_SETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 61
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 63
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "INTERFACE_STATIC"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v4}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_STATIC:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 65
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "VIRTUAL"

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 67
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "INTERFACE_VIRTUAL"

    const/4 v7, 0x3

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v8, v4}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 69
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "SPECIAL"

    const/4 v9, 0x4

    const/4 v10, 0x7

    invoke-direct {v0, v1, v9, v10}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->SPECIAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 71
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "INTERFACE_SPECIAL"

    invoke-direct {v0, v1, v6, v10, v4}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_SPECIAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 73
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "CONSTRUCTOR"

    const/16 v6, 0x8

    invoke-direct {v0, v1, v3, v6}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->CONSTRUCTOR:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 75
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "GETTER"

    invoke-direct {v0, v1, v10, v4}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->GETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 77
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "SETTER"

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->SETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 79
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "STATIC_GETTER"

    invoke-direct {v0, v1, v8, v5}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC_GETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 81
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    const-string v1, "STATIC_SETTER"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v9}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->STATIC_SETTER:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 59
    invoke-static {}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->$values()[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->$VALUES:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "max":I
    invoke-static {}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->values()[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    move-result-object v1

    array-length v3, v1

    move v5, v2

    :goto_7e
    if-ge v5, v3, :cond_8f

    aget-object v6, v1, v5

    .line 154
    .local v6, "k":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    iget v7, v6, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->refKind:I

    invoke-static {v7, v4}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->tableIndex(IZ)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    .end local v6    # "k":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 156
    :cond_8f
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sput-object v1, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 157
    invoke-static {}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->values()[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    move-result-object v1

    array-length v3, v1

    move v5, v2

    :goto_9b
    if-ge v5, v3, :cond_d2

    aget-object v6, v1, v5

    .line 158
    .local v6, "kind":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    iget v7, v6, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->refKind:I

    iget-boolean v9, v6, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->isInterface:Z

    invoke-static {v7, v9}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->tableIndex(IZ)I

    move-result v7

    .line 159
    .local v7, "i":I
    sget-object v9, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    array-length v9, v9

    if-ge v7, v9, :cond_b9

    sget-object v9, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aget-object v9, v9, v7

    if-nez v9, :cond_b9

    .line 161
    sget-object v9, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aput-object v6, v9, v7

    .line 157
    .end local v6    # "kind":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .end local v7    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 160
    .restart local v6    # "kind":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .restart local v7    # "i":I
    :cond_b9
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TABLE entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 165
    .end local v6    # "kind":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .end local v7    # "i":I
    :cond_d2
    invoke-static {v8, v2}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->tableIndex(IZ)I

    move-result v1

    .line 166
    .local v1, "ii":I
    sget-object v3, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aget-object v3, v3, v1

    if-nez v3, :cond_103

    .line 168
    sget-object v3, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v5, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->INTERFACE_VIRTUAL:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aput-object v5, v3, v1

    .line 170
    invoke-static {}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->values()[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    move-result-object v3

    array-length v5, v3

    :goto_e7
    if-ge v2, v5, :cond_102

    aget-object v6, v3, v2

    .line 171
    .restart local v6    # "kind":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    iget-boolean v7, v6, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->isInterface:Z

    if-nez v7, :cond_ff

    .line 175
    iget v7, v6, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->refKind:I

    invoke-static {v7, v4}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->tableIndex(IZ)I

    move-result v7

    .line 176
    .restart local v7    # "i":I
    sget-object v8, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aget-object v8, v8, v7

    if-nez v8, :cond_ff

    .line 177
    sget-object v8, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aput-object v6, v8, v7

    .line 170
    .end local v6    # "kind":Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .end local v7    # "i":I
    :cond_ff
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    .line 181
    .end local v0    # "max":I
    .end local v1    # "ii":I
    :cond_102
    return-void

    .line 167
    .restart local v0    # "max":I
    .restart local v1    # "ii":I
    :cond_103
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TABLE entry for (invokeInterface, false) used by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "refKind"    # I
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

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;-><init>(Ljava/lang/String;IIZ)V

    .line 93
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZ)V
    .registers 5
    .param p3, "refKind"    # I
    .param p4, "isInterface"    # Z
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
            "(IZ)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->refKind:I

    iput-boolean p4, p0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->isInterface:Z

    return-void
.end method

.method private static blacklist tableIndex(IZ)I
    .registers 3
    .param p0, "refKind"    # I
    .param p1, "isInterface"    # Z

    .line 144
    if-gez p0, :cond_3

    return p0

    .line 145
    :cond_3
    mul-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method public static blacklist valueOf(I)Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .registers 2
    .param p0, "refKind"    # I

    .line 108
    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {p0, v0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->valueOf(IZ)Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueOf(IZ)Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .registers 6
    .param p0, "refKind"    # I
    .param p1, "isInterface"    # Z

    .line 136
    invoke-static {p0, p1}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->tableIndex(IZ)I

    move-result v0

    .line 137
    .local v0, "i":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    sget-object v1, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 138
    sget-object v1, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->TABLE:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    aget-object v1, v1, v0

    return-object v1

    .line 140
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "refKind=%d isInterface=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/lang/constant/DirectMethodHandleDesc$Kind;
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

    .line 59
    const-class v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    return-object v0
.end method

.method public static blacklist values()[Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .registers 1

    .line 59
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->$VALUES:[Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-virtual {v0}, [Ljava/lang/constant/DirectMethodHandleDesc$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    return-object v0
.end method


# virtual methods
.method blacklist isVirtualMethod()Z
    .registers 2

    .line 189
    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 196
    const/4 v0, 0x0

    return v0

    .line 194
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
