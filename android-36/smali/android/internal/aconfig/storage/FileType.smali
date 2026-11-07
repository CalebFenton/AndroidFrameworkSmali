.class public final enum Landroid/internal/aconfig/storage/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/internal/aconfig/storage/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;


# instance fields
.field public final blacklist type:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/internal/aconfig/storage/FileType;
    .registers 4

    .line 19
    sget-object v0, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    sget-object v2, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    sget-object v3, Landroid/internal/aconfig/storage/FileType;->FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/internal/aconfig/storage/FileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "PACKAGE_MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    .line 21
    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "FLAG_MAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    .line 22
    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "FLAG_VAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    .line 23
    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "FLAG_INFO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

    .line 19
    invoke-static {}, Landroid/internal/aconfig/storage/FileType;->$values()[Landroid/internal/aconfig/storage/FileType;

    move-result-object v0

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->$VALUES:[Landroid/internal/aconfig/storage/FileType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Landroid/internal/aconfig/storage/FileType;->type:I

    .line 29
    return-void
.end method

.method public static blacklist fromInt(I)Landroid/internal/aconfig/storage/FileType;
    .registers 2
    .param p0, "index"    # I

    .line 32
    packed-switch p0, :pswitch_data_12

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 40
    :pswitch_5
    sget-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

    return-object v0

    .line 38
    :pswitch_8
    sget-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    return-object v0

    .line 36
    :pswitch_b
    sget-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    return-object v0

    .line 34
    :pswitch_e
    sget-object v0, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/internal/aconfig/storage/FileType;
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
    const-class v0, Landroid/internal/aconfig/storage/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/internal/aconfig/storage/FileType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/internal/aconfig/storage/FileType;
    .registers 1

    .line 19
    sget-object v0, Landroid/internal/aconfig/storage/FileType;->$VALUES:[Landroid/internal/aconfig/storage/FileType;

    invoke-virtual {v0}, [Landroid/internal/aconfig/storage/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/internal/aconfig/storage/FileType;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 48
    iget v0, p0, Landroid/internal/aconfig/storage/FileType;->type:I

    packed-switch v0, :pswitch_data_14

    .line 58
    const-string v0, "unrecognized type"

    return-object v0

    .line 56
    :pswitch_8
    const-string v0, "FLAG_INFO"

    return-object v0

    .line 54
    :pswitch_b
    const-string v0, "FLAG_VAL"

    return-object v0

    .line 52
    :pswitch_e
    const-string v0, "FLAG_MAP"

    return-object v0

    .line 50
    :pswitch_11
    const-string v0, "PACKAGE_MAP"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
