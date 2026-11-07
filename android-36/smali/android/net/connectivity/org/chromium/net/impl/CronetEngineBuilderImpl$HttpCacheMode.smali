.class final enum Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;
.super Ljava/lang/Enum;
.source "CronetEngineBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HttpCacheMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

.field public static final enum blacklist DISABLED:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

.field public static final enum blacklist DISK:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

.field public static final enum blacklist DISK_NO_HTTP:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

.field public static final enum blacklist MEMORY:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;


# instance fields
.field private final blacklist mContentCacheEnabled:Z

.field private final blacklist mType:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;
    .registers 4

    .line 72
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISABLED:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISK:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISK_NO_HTTP:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->MEMORY:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    filled-new-array {v0, v1, v2, v3}, [Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 74
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISABLED:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    .line 75
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    const-string v1, "DISK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISK:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    .line 76
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    const-string v1, "DISK_NO_HTTP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISK_NO_HTTP:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    .line 77
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    const-string v1, "MEMORY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->MEMORY:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    .line 72
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->$values()[Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZ)V
    .registers 5
    .param p3, "type"    # I
    .param p4, "contentCacheEnabled"    # Z
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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-boolean p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->mContentCacheEnabled:Z

    .line 84
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->mType:I

    .line 85
    return-void
.end method

.method static blacklist fromPublicBuilderCacheMode(I)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;
    .registers 3
    .param p0, "cacheMode"    # I

    .line 113
    packed-switch p0, :pswitch_data_18

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown public builder cache mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_b
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISK:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-object v0

    .line 117
    :pswitch_e
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISK_NO_HTTP:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-object v0

    .line 121
    :pswitch_11
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->MEMORY:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-object v0

    .line 115
    :pswitch_14
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->DISABLED:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;
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

    .line 72
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;
    .registers 1

    .line 72
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->$VALUES:[Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, [Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    return-object v0
.end method


# virtual methods
.method blacklist getType()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->mType:I

    return v0
.end method

.method blacklist isContentCacheEnabled()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->mContentCacheEnabled:Z

    return v0
.end method

.method blacklist toPublicBuilderCacheMode()I
    .registers 3

    .line 97
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown internal builder cache mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 101
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 103
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 99
    :pswitch_15
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method
