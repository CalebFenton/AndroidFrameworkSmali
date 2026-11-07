.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyInfo"
.end annotation


# instance fields
.field public final greylist-max-o code:Ljava/lang/String;

.field public final greylist-max-o from:J

.field public final greylist-max-o priority:I

.field public final greylist-max-o region:Ljava/lang/String;

.field private final greylist-max-o tender:Z

.field public final greylist-max-o to:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 17
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    .line 425
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .registers 9
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .param p8, "tender"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->region:Ljava/lang/String;

    .line 436
    iput-object p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->code:Ljava/lang/String;

    .line 437
    iput-wide p3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->from:J

    .line 438
    iput-wide p5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->to:J

    .line 439
    iput p7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->priority:I

    .line 440
    iput-boolean p8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    .line 441
    return-void
.end method


# virtual methods
.method public greylist-max-o isTender()Z
    .registers 2

    .line 457
    iget-boolean v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 449
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-$$Nest$smdebugString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
