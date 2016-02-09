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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private finalCEs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->-assertionsDisabled:Z

    #@b
    .line 1319
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>([J)V
    .locals 0
    .param p1, "ces"    # [J

    #@0
    .prologue
    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1321
    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    #@5
    .line 1320
    return-void
.end method


# virtual methods
.method public modifyCE(J)J
    .locals 5
    .param p1, "ce"    # J

    #@0
    .prologue
    .line 1333
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->-wrap1(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1335
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    #@8
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->-wrap3(J)I

    #@b
    move-result v1

    #@c
    aget-wide v0, v0, v1

    #@e
    const-wide/32 v2, 0xc000

    #@11
    and-long/2addr v2, p1

    #@12
    or-long/2addr v0, v2

    #@13
    return-wide v0

    #@14
    .line 1337
    :cond_0
    const-wide v0, 0x101000100L

    #@19
    return-wide v0
.end method

.method public modifyCE32(I)J
    .locals 4
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 1324
    sget-boolean v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1325
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->-wrap0(I)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1327
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    #@1d
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->-wrap2(I)I

    #@20
    move-result v1

    #@21
    aget-wide v0, v0, v1

    #@23
    and-int/lit16 v2, p1, 0xc0

    #@25
    shl-int/lit8 v2, v2, 0x8

    #@27
    int-to-long v2, v2

    #@28
    or-long/2addr v0, v2

    #@29
    return-wide v0

    #@2a
    .line 1329
    :cond_2
    const-wide v0, 0x101000100L

    #@2f
    return-wide v0
.end method
