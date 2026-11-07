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
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/coll/FCDIterCollationIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum blacklist IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum blacklist IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum blacklist ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum blacklist ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum blacklist ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    .registers 5

    .line 412
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 418
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v1, "ITER_CHECK_FWD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 424
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v1, "ITER_CHECK_BWD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 429
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v1, "ITER_IN_FCD_SEGMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 435
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v1, "IN_NORM_ITER_AT_LIMIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 441
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string v1, "IN_NORM_ITER_AT_START"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 412
    invoke-static {}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$values()[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

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

    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/FCDIterCollationIterator$State;
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

    .line 412
    const-class v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    .registers 1

    .line 412
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0}, [Landroid/icu/impl/coll/FCDIterCollationIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-object v0
.end method
