.class public final enum Ljava/security/DrbgParameters$Capability;
.super Ljava/lang/Enum;
.source "DrbgParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/DrbgParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/DrbgParameters$Capability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/DrbgParameters$Capability;

.field public static final enum whitelist test-api NONE:Ljava/security/DrbgParameters$Capability;

.field public static final enum whitelist test-api PR_AND_RESEED:Ljava/security/DrbgParameters$Capability;

.field public static final enum whitelist test-api RESEED_ONLY:Ljava/security/DrbgParameters$Capability;


# direct methods
.method private static synthetic blacklist $values()[Ljava/security/DrbgParameters$Capability;
    .registers 3

    .line 283
    sget-object v0, Ljava/security/DrbgParameters$Capability;->PR_AND_RESEED:Ljava/security/DrbgParameters$Capability;

    sget-object v1, Ljava/security/DrbgParameters$Capability;->RESEED_ONLY:Ljava/security/DrbgParameters$Capability;

    sget-object v2, Ljava/security/DrbgParameters$Capability;->NONE:Ljava/security/DrbgParameters$Capability;

    filled-new-array {v0, v1, v2}, [Ljava/security/DrbgParameters$Capability;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 288
    new-instance v0, Ljava/security/DrbgParameters$Capability;

    const-string v1, "PR_AND_RESEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/DrbgParameters$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/DrbgParameters$Capability;->PR_AND_RESEED:Ljava/security/DrbgParameters$Capability;

    .line 293
    new-instance v0, Ljava/security/DrbgParameters$Capability;

    const-string v1, "RESEED_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/security/DrbgParameters$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/DrbgParameters$Capability;->RESEED_ONLY:Ljava/security/DrbgParameters$Capability;

    .line 298
    new-instance v0, Ljava/security/DrbgParameters$Capability;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/security/DrbgParameters$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/DrbgParameters$Capability;->NONE:Ljava/security/DrbgParameters$Capability;

    .line 283
    invoke-static {}, Ljava/security/DrbgParameters$Capability;->$values()[Ljava/security/DrbgParameters$Capability;

    move-result-object v0

    sput-object v0, Ljava/security/DrbgParameters$Capability;->$VALUES:[Ljava/security/DrbgParameters$Capability;

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

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/DrbgParameters$Capability;
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

    .line 283
    const-class v0, Ljava/security/DrbgParameters$Capability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/DrbgParameters$Capability;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/DrbgParameters$Capability;
    .registers 1

    .line 283
    sget-object v0, Ljava/security/DrbgParameters$Capability;->$VALUES:[Ljava/security/DrbgParameters$Capability;

    invoke-virtual {v0}, [Ljava/security/DrbgParameters$Capability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/DrbgParameters$Capability;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api supportsPredictionResistance()Z
    .registers 2

    .line 322
    sget-object v0, Ljava/security/DrbgParameters$Capability;->PR_AND_RESEED:Ljava/security/DrbgParameters$Capability;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api supportsReseeding()Z
    .registers 2

    .line 312
    sget-object v0, Ljava/security/DrbgParameters$Capability;->NONE:Ljava/security/DrbgParameters$Capability;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 302
    invoke-virtual {p0}, Ljava/security/DrbgParameters$Capability;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
