.class public final enum Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
.super Ljava/lang/Enum;
.source "FlagValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum blacklist BOOL_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum blacklist BYTES_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum blacklist FLOAT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum blacklist INT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum blacklist STRING_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum blacklist VALUE_NOT_SET:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 6

    .line 200
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v4, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v5, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    filled-new-array/range {v0 .. v5}, [Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 201
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "BOOL_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 202
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "INT_VALUE"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 203
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "FLOAT_VALUE"

    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v1, v4, v6}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 204
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "STRING_VALUE"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 205
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "BYTES_VALUE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v5, v3}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 206
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "VALUE_NOT_SET"

    invoke-direct {v0, v1, v6, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 200
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->$values()[Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->$VALUES:[Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

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

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->value:I

    .line 210
    return-void
.end method

.method public static blacklist forNumber(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2
    .param p0, "value"    # I

    .line 220
    packed-switch p0, :pswitch_data_18

    .line 227
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 225
    :pswitch_5
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0

    .line 224
    :pswitch_8
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0

    .line 223
    :pswitch_b
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0

    .line 222
    :pswitch_e
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0

    .line 221
    :pswitch_11
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0

    .line 226
    :pswitch_14
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist valueOf(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->forNumber(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
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

    .line 200
    const-class v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 1

    .line 200
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->$VALUES:[Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0
.end method


# virtual methods
.method public blacklist getNumber()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->value:I

    return v0
.end method
