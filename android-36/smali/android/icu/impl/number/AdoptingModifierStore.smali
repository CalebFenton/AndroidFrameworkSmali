.class public Landroid/icu/impl/number/AdoptingModifierStore;
.super Ljava/lang/Object;
.source "AdoptingModifierStore.java"

# interfaces
.implements Landroid/icu/impl/number/ModifierStore;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist frozen:Z

.field final blacklist mods:[Landroid/icu/impl/number/Modifier;

.field private final blacklist negZero:Landroid/icu/impl/number/Modifier;

.field private final blacklist negative:Landroid/icu/impl/number/Modifier;

.field private final blacklist posZero:Landroid/icu/impl/number/Modifier;

.field private final blacklist positive:Landroid/icu/impl/number/Modifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 15
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->positive:Landroid/icu/impl/number/Modifier;

    .line 47
    iput-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->posZero:Landroid/icu/impl/number/Modifier;

    .line 48
    iput-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->negZero:Landroid/icu/impl/number/Modifier;

    .line 49
    iput-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->negative:Landroid/icu/impl/number/Modifier;

    .line 50
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Landroid/icu/impl/number/Modifier;

    iput-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->mods:[Landroid/icu/impl/number/Modifier;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->frozen:Z

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)V
    .registers 6
    .param p1, "positive"    # Landroid/icu/impl/number/Modifier;
    .param p2, "posZero"    # Landroid/icu/impl/number/Modifier;
    .param p3, "negZero"    # Landroid/icu/impl/number/Modifier;
    .param p4, "negative"    # Landroid/icu/impl/number/Modifier;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/icu/impl/number/AdoptingModifierStore;->positive:Landroid/icu/impl/number/Modifier;

    .line 31
    iput-object p2, p0, Landroid/icu/impl/number/AdoptingModifierStore;->posZero:Landroid/icu/impl/number/Modifier;

    .line 32
    iput-object p3, p0, Landroid/icu/impl/number/AdoptingModifierStore;->negZero:Landroid/icu/impl/number/Modifier;

    .line 33
    iput-object p4, p0, Landroid/icu/impl/number/AdoptingModifierStore;->negative:Landroid/icu/impl/number/Modifier;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->mods:[Landroid/icu/impl/number/Modifier;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->frozen:Z

    .line 36
    return-void
.end method

.method private static blacklist getModIndex(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)I
    .registers 4
    .param p0, "signum"    # Landroid/icu/impl/number/Modifier$Signum;
    .param p1, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 89
    nop

    .line 90
    nop

    .line 91
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sget v1, Landroid/icu/impl/number/Modifier$Signum;->COUNT:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist freeze()V
    .registers 2

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->frozen:Z

    .line 61
    return-void
.end method

.method public blacklist getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;
    .registers 5
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 83
    nop

    .line 84
    nop

    .line 85
    iget-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->mods:[Landroid/icu/impl/number/Modifier;

    invoke-static {p1, p2}, Landroid/icu/impl/number/AdoptingModifierStore;->getModIndex(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getModifierWithoutPlural(Landroid/icu/impl/number/Modifier$Signum;)Landroid/icu/impl/number/Modifier;
    .registers 4
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 67
    sget-object v0, Landroid/icu/impl/number/AdoptingModifierStore$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 77
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 75
    :pswitch_16
    iget-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->negative:Landroid/icu/impl/number/Modifier;

    return-object v0

    .line 73
    :pswitch_19
    iget-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->negZero:Landroid/icu/impl/number/Modifier;

    return-object v0

    .line 71
    :pswitch_1c
    iget-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->posZero:Landroid/icu/impl/number/Modifier;

    return-object v0

    .line 69
    :pswitch_1f
    iget-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->positive:Landroid/icu/impl/number/Modifier;

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public blacklist setModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V
    .registers 6
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;
    .param p2, "plural"    # Landroid/icu/impl/StandardPlural;
    .param p3, "mod"    # Landroid/icu/impl/number/Modifier;

    .line 55
    nop

    .line 56
    iget-object v0, p0, Landroid/icu/impl/number/AdoptingModifierStore;->mods:[Landroid/icu/impl/number/Modifier;

    invoke-static {p1, p2}, Landroid/icu/impl/number/AdoptingModifierStore;->getModIndex(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)I

    move-result v1

    aput-object p3, v0, v1

    .line 57
    return-void
.end method
