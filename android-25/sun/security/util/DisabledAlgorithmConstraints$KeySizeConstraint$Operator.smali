.class final enum Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
.super Ljava/lang/Enum;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 373
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@7
    const-string/jumbo v1, "EQ"

    #@a
    invoke-direct {v0, v1, v3}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@f
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@11
    const-string/jumbo v1, "NE"

    #@14
    invoke-direct {v0, v1, v4}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    #@17
    .line 374
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@19
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@1b
    const-string/jumbo v1, "LT"

    #@1e
    invoke-direct {v0, v1, v5}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    #@21
    .line 375
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@23
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@25
    const-string/jumbo v1, "LE"

    #@28
    invoke-direct {v0, v1, v6}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 376
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@2d
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@2f
    const-string/jumbo v1, "GT"

    #@32
    invoke-direct {v0, v1, v7}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    #@35
    .line 377
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@37
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@39
    const-string/jumbo v1, "GE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    #@40
    .line 378
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@42
    .line 372
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@45
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    const-string/jumbo v0, "=="

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 383
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@b
    return-object v0

    #@c
    .line 381
    :cond_0
    const-string/jumbo v0, "!="

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 385
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@17
    return-object v0

    #@18
    .line 381
    :cond_1
    const-string/jumbo v0, "<"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 387
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@23
    return-object v0

    #@24
    .line 381
    :cond_2
    const-string/jumbo v0, "<="

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 389
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@2f
    return-object v0

    #@30
    .line 381
    :cond_3
    const-string/jumbo v0, ">"

    #@33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 391
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@3b
    return-object v0

    #@3c
    .line 381
    :cond_4
    const-string/jumbo v0, ">="

    #@3f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 393
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@47
    return-object v0

    #@48
    .line 396
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const-string/jumbo v2, " is not a legal Operator"

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 396
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 372
    const-class v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .locals 1

    #@0
    .prologue
    .line 372
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@2
    return-object v0
.end method
