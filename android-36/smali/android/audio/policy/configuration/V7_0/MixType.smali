.class public final enum Landroid/audio/policy/configuration/V7_0/MixType;
.super Ljava/lang/Enum;
.source "MixType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/MixType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/MixType;

.field public static final enum blacklist mix:Landroid/audio/policy/configuration/V7_0/MixType;

.field public static final enum blacklist mux:Landroid/audio/policy/configuration/V7_0/MixType;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/audio/policy/configuration/V7_0/MixType;
    .registers 2

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/MixType;->mix:Landroid/audio/policy/configuration/V7_0/MixType;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/MixType;->mux:Landroid/audio/policy/configuration/V7_0/MixType;

    filled-new-array {v0, v1}, [Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/MixType;

    const-string/jumbo v1, "mix"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/MixType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/MixType;->mix:Landroid/audio/policy/configuration/V7_0/MixType;

    .line 5
    new-instance v0, Landroid/audio/policy/configuration/V7_0/MixType;

    const-string/jumbo v1, "mux"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/MixType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/MixType;->mux:Landroid/audio/policy/configuration/V7_0/MixType;

    .line 3
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/MixType;->$values()[Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v0

    sput-object v0, Landroid/audio/policy/configuration/V7_0/MixType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/MixType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "rawName"    # Ljava/lang/String;
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/MixType;->rawName:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/MixType;
    .registers 6
    .param p0, "rawString"    # Ljava/lang/String;

    .line 18
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/MixType;->values()[Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 19
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/MixType;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/MixType;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 20
    return-object v3

    .line 18
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/MixType;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 23
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/MixType;
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

    .line 3
    const-class v0, Landroid/audio/policy/configuration/V7_0/MixType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/MixType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/MixType;
    .registers 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/MixType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/MixType;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/MixType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/MixType;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixType;->rawName:Ljava/lang/String;

    return-object v0
.end method
