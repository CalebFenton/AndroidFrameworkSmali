.class public final enum Landroid/sysprop/CryptoProperties$state_values;
.super Ljava/lang/Enum;
.source "CryptoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/CryptoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "state_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/CryptoProperties$state_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum blacklist ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum blacklist UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum blacklist UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/sysprop/CryptoProperties$state_values;
    .registers 3

    .line 185
    sget-object v0, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    sget-object v1, Landroid/sysprop/CryptoProperties$state_values;->UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    sget-object v2, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    filled-new-array {v0, v1, v2}, [Landroid/sysprop/CryptoProperties$state_values;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 186
    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const/4 v1, 0x0

    const-string v2, "encrypted"

    const-string v3, "ENCRYPTED"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    .line 187
    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const/4 v1, 0x1

    const-string/jumbo v2, "unencrypted"

    const-string v3, "UNENCRYPTED"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    .line 188
    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const/4 v1, 0x2

    const-string/jumbo v2, "unsupported"

    const-string v3, "UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    .line 185
    invoke-static {}, Landroid/sysprop/CryptoProperties$state_values;->$values()[Landroid/sysprop/CryptoProperties$state_values;

    move-result-object v0

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "propValue"    # Ljava/lang/String;
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

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput-object p3, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/sysprop/CryptoProperties$state_values;
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

    .line 185
    const-class v0, Landroid/sysprop/CryptoProperties$state_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method

.method public static blacklist values()[Landroid/sysprop/CryptoProperties$state_values;
    .registers 1

    .line 185
    sget-object v0, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    invoke-virtual {v0}, [Landroid/sysprop/CryptoProperties$state_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
