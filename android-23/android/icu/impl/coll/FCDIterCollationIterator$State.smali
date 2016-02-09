.class final enum Landroid/icu/impl/coll/FCDIterCollationIterator$State;
.super Ljava/lang/Enum;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/FCDIterCollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/coll/FCDIterCollationIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 409
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@7
    const-string/jumbo v1, "ITER_CHECK_FWD"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    #@d
    .line 414
    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@f
    .line 415
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@11
    const-string/jumbo v1, "ITER_CHECK_BWD"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    #@17
    .line 420
    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@19
    .line 421
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@1b
    const-string/jumbo v1, "ITER_IN_FCD_SEGMENT"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    #@21
    .line 425
    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@23
    .line 426
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@25
    const-string/jumbo v1, "IN_NORM_ITER_AT_LIMIT"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 431
    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@2d
    .line 432
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@2f
    const-string/jumbo v1, "IN_NORM_ITER_AT_START"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    #@35
    .line 437
    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@37
    .line 408
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3a
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 408
    const-class v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    .locals 1

    #@0
    .prologue
    .line 408
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@2
    return-object v0
.end method
