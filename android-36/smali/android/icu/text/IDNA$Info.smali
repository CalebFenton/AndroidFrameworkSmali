.class public final Landroid/icu/text/IDNA$Info;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private greylist-max-o errors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o isBiDi:Z

.field private greylist-max-o isOkBiDi:Z

.field private greylist-max-o isTransDiff:Z

.field private greylist-max-o labelErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgeterrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisBiDi(Landroid/icu/text/IDNA$Info;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisOkBiDi(Landroid/icu/text/IDNA$Info;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisBiDi(Landroid/icu/text/IDNA$Info;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisOkBiDi(Landroid/icu/text/IDNA$Info;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisTransDiff(Landroid/icu/text/IDNA$Info;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/icu/text/IDNA$Info;)V
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/IDNA$Info;->reset()V

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    .line 221
    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    .line 223
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    .line 225
    return-void
.end method

.method private greylist-max-o reset()V
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 252
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    .line 254
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    .line 256
    return-void
.end method


# virtual methods
.method public whitelist test-api getErrors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object v0
.end method

.method public whitelist test-api hasErrors()Z
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isTransitionalDifferent()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    return v0
.end method
