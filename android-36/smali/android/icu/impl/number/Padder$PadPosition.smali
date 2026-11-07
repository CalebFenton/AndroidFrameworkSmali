.class public final enum Landroid/icu/impl/number/Padder$PadPosition;
.super Ljava/lang/Enum;
.source "Padder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Padder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PadPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Padder$PadPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum blacklist AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum blacklist AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum blacklist BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

.field public static final enum blacklist BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/number/Padder$PadPosition;
    .registers 4

    .line 17
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v1, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v2, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v3, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const-string v1, "BEFORE_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const-string v1, "AFTER_PREFIX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const-string v1, "BEFORE_SUFFIX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    new-instance v0, Landroid/icu/impl/number/Padder$PadPosition;

    const-string v1, "AFTER_SUFFIX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    .line 17
    invoke-static {}, Landroid/icu/impl/number/Padder$PadPosition;->$values()[Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Padder$PadPosition;->$VALUES:[Landroid/icu/impl/number/Padder$PadPosition;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist fromOld(I)Landroid/icu/impl/number/Padder$PadPosition;
    .registers 4
    .param p0, "old"    # I

    .line 21
    packed-switch p0, :pswitch_data_28

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_1c
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0

    .line 27
    :pswitch_1f
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0

    .line 25
    :pswitch_22
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0

    .line 23
    :pswitch_25
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Padder$PadPosition;
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

    .line 17
    const-class v0, Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/number/Padder$PadPosition;
    .registers 1

    .line 17
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->$VALUES:[Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Padder$PadPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Padder$PadPosition;

    return-object v0
.end method


# virtual methods
.method public blacklist toOld()I
    .registers 2

    .line 36
    invoke-virtual {p0}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 46
    const/4 v0, -0x1

    return v0

    .line 44
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 42
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 40
    :pswitch_d
    const/4 v0, 0x1

    return v0

    .line 38
    :pswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method
