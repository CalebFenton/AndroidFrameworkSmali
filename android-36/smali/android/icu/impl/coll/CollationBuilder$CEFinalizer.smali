.class final Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEFinalizer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist finalCEs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1344
    const-class v0, Landroid/icu/impl/coll/CollationBuilder;

    return-void
.end method

.method constructor blacklist <init>([J)V
    .registers 2
    .param p1, "ces"    # [J

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    .line 1347
    return-void
.end method


# virtual methods
.method public blacklist modifyCE(J)J
    .registers 7
    .param p1, "ce"    # J

    .line 1360
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->-$$Nest$smisTempCE(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1362
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->-$$Nest$smindexFromTempCE(J)I

    move-result v1

    aget-wide v0, v0, v1

    const-wide/32 v2, 0xc000

    and-long/2addr v2, p1

    or-long/2addr v0, v2

    return-wide v0

    .line 1364
    :cond_14
    const-wide v0, 0x101000100L

    return-wide v0
.end method

.method public blacklist modifyCE32(I)J
    .registers 6
    .param p1, "ce32"    # I

    .line 1350
    nop

    .line 1351
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->-$$Nest$smisTempCE32(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1353
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->-$$Nest$smindexFromTempCE32(I)I

    move-result v1

    aget-wide v0, v0, v1

    and-int/lit16 v2, p1, 0xc0

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0

    .line 1355
    :cond_16
    const-wide v0, 0x101000100L

    return-wide v0
.end method
