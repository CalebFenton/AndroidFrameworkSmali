.class public final enum Landroid/provider/internal/aconfig/storage/FlagType;
.super Ljava/lang/Enum;
.source "FlagType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/provider/internal/aconfig/storage/FlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/provider/internal/aconfig/storage/FlagType;

.field public static final enum blacklist FixedReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

.field public static final enum blacklist ReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

.field public static final enum blacklist ReadWriteBoolean:Landroid/provider/internal/aconfig/storage/FlagType;


# instance fields
.field public final blacklist type:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/provider/internal/aconfig/storage/FlagType;
    .registers 3

    .line 19
    sget-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->ReadWriteBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    sget-object v1, Landroid/provider/internal/aconfig/storage/FlagType;->ReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    sget-object v2, Landroid/provider/internal/aconfig/storage/FlagType;->FixedReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    filled-new-array {v0, v1, v2}, [Landroid/provider/internal/aconfig/storage/FlagType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Landroid/provider/internal/aconfig/storage/FlagType;

    const-string v1, "ReadWriteBoolean"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/provider/internal/aconfig/storage/FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->ReadWriteBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    .line 21
    new-instance v0, Landroid/provider/internal/aconfig/storage/FlagType;

    const-string v1, "ReadOnlyBoolean"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/provider/internal/aconfig/storage/FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->ReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    .line 22
    new-instance v0, Landroid/provider/internal/aconfig/storage/FlagType;

    const-string v1, "FixedReadOnlyBoolean"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/provider/internal/aconfig/storage/FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->FixedReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    .line 19
    invoke-static {}, Landroid/provider/internal/aconfig/storage/FlagType;->$values()[Landroid/provider/internal/aconfig/storage/FlagType;

    move-result-object v0

    sput-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->$VALUES:[Landroid/provider/internal/aconfig/storage/FlagType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "type"    # I
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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Landroid/provider/internal/aconfig/storage/FlagType;->type:I

    .line 28
    return-void
.end method

.method public static blacklist fromInt(I)Landroid/provider/internal/aconfig/storage/FlagType;
    .registers 2
    .param p0, "index"    # I

    .line 31
    packed-switch p0, :pswitch_data_e

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 37
    :pswitch_5
    sget-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->FixedReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    return-object v0

    .line 35
    :pswitch_8
    sget-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->ReadOnlyBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    return-object v0

    .line 33
    :pswitch_b
    sget-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->ReadWriteBoolean:Landroid/provider/internal/aconfig/storage/FlagType;

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/provider/internal/aconfig/storage/FlagType;
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

    .line 19
    const-class v0, Landroid/provider/internal/aconfig/storage/FlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/internal/aconfig/storage/FlagType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/provider/internal/aconfig/storage/FlagType;
    .registers 1

    .line 19
    sget-object v0, Landroid/provider/internal/aconfig/storage/FlagType;->$VALUES:[Landroid/provider/internal/aconfig/storage/FlagType;

    invoke-virtual {v0}, [Landroid/provider/internal/aconfig/storage/FlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/internal/aconfig/storage/FlagType;

    return-object v0
.end method
