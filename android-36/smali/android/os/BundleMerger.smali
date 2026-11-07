.class public Landroid/os/BundleMerger;
.super Ljava/lang/Object;
.source "BundleMerger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BundleMerger$Strategy;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BundleMerger;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STRATEGY_ARRAY_APPEND:I = 0x32

.field public static final blacklist STRATEGY_ARRAY_LIST_APPEND:I = 0x3c

.field public static final blacklist STRATEGY_ARRAY_UNION:I = 0x37

.field public static final blacklist STRATEGY_BOOLEAN_AND:I = 0x1e

.field public static final blacklist STRATEGY_BOOLEAN_OR:I = 0x28

.field public static final blacklist STRATEGY_COMPARABLE_MAX:I = 0x4

.field public static final blacklist STRATEGY_COMPARABLE_MIN:I = 0x3

.field public static final blacklist STRATEGY_FIRST:I = 0x1

.field public static final blacklist STRATEGY_LAST:I = 0x2

.field public static final blacklist STRATEGY_NUMBER_ADD:I = 0xa

.field public static final blacklist STRATEGY_NUMBER_INCREMENT_FIRST:I = 0x14

.field public static final blacklist STRATEGY_NUMBER_INCREMENT_FIRST_AND_ADD:I = 0x19

.field public static final blacklist STRATEGY_REJECT:I = 0x0

.field public static final blacklist STRATEGY_STRING_APPEND:I = 0x46

.field private static final blacklist TAG:Ljava/lang/String; = "BundleMerger"


# instance fields
.field private blacklist mDefaultStrategy:I

.field private final blacklist mStrategies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 425
    new-instance v0, Landroid/os/BundleMerger$1;

    invoke-direct {v0}, Landroid/os/BundleMerger$1;-><init>()V

    sput-object v0, Landroid/os/BundleMerger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BundleMerger;->mDefaultStrategy:I

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    .line 162
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BundleMerger;->mDefaultStrategy:I

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BundleMerger;->mDefaultStrategy:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_2e

    .line 168
    iget-object v2, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 170
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BundleMerger-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BundleMerger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist arrayAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 374
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 375
    .local v1, "firstLength":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 376
    .local v2, "lastLength":I
    add-int v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 377
    .local v3, "res":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    invoke-static {p1, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    return-object v3

    .line 371
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "firstLength":I
    .end local v2    # "lastLength":I
    .end local v3    # "res":Ljava/lang/Object;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist arrayListAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 407
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 410
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    .line 411
    .local v0, "firstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 412
    .local v1, "lastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 415
    return-object v2

    .line 408
    .end local v0    # "firstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "lastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist arrayUnion(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 386
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 387
    .local v0, "firstLength":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 388
    .local v1, "lastLength":I
    new-instance v2, Ljava/util/ArrayList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 390
    .local v3, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v0, :cond_2b

    .line 391
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 393
    .end local v4    # "i":I
    :cond_2b
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2c
    if-ge v4, v1, :cond_38

    .line 394
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 396
    .end local v4    # "i":I
    :cond_38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 397
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 398
    .local v5, "setSize":I
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 399
    .local v6, "res":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_49
    if-ge v7, v5, :cond_55

    .line 400
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 402
    .end local v7    # "i":I
    :cond_55
    return-object v6

    .line 384
    .end local v0    # "firstLength":I
    .end local v1    # "lastLength":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Object;>;"
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "setSize":I
    .end local v6    # "res":Ljava/lang/Object;
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to union "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist booleanAnd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 362
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist booleanOr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 366
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist comparableMax(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 333
    move-object v0, p0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    move-object v0, p0

    goto :goto_c

    :cond_b
    move-object v0, p1

    :goto_c
    return-object v0
.end method

.method private static blacklist comparableMin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 328
    move-object v0, p0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_b

    move-object v0, p0

    goto :goto_c

    :cond_b
    move-object v0, p1

    :goto_c
    return-object v0
.end method

.method public static blacklist merge(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "strategy"    # I
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "last"    # Ljava/lang/Object;

    .line 279
    if-nez p1, :cond_3

    return-object p2

    .line 280
    :cond_3
    if-nez p2, :cond_6

    return-object p1

    .line 282
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_5f

    .line 287
    sparse-switch p0, :sswitch_data_8a

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 320
    :sswitch_19
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->stringAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 318
    :sswitch_1e
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->arrayListAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 316
    :sswitch_23
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->arrayUnion(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 314
    :sswitch_28
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->arrayAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 312
    :sswitch_2d
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->booleanOr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 310
    :sswitch_32
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->booleanAnd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 308
    :sswitch_37
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->numberIncrementFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/BundleMerger;->numberAdd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 306
    :sswitch_40
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->numberIncrementFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 304
    :sswitch_45
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->numberAdd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 302
    :sswitch_4a
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->comparableMax(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 300
    :sswitch_4f
    invoke-static {p1, p2}, Landroid/os/BundleMerger;->comparableMin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 298
    :sswitch_54
    return-object p2

    .line 296
    :sswitch_55
    return-object p1

    .line 290
    :sswitch_56
    invoke-static {p1, p2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 291
    return-object p1

    .line 293
    :cond_5d
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Merging requires consistent classes; first "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_56
        0x1 -> :sswitch_55
        0x2 -> :sswitch_54
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4a
        0xa -> :sswitch_45
        0x14 -> :sswitch_40
        0x19 -> :sswitch_37
        0x1e -> :sswitch_32
        0x28 -> :sswitch_2d
        0x32 -> :sswitch_28
        0x37 -> :sswitch_23
        0x3c -> :sswitch_1e
        0x46 -> :sswitch_19
    .end sparse-switch
.end method

.method private static blacklist numberAdd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 337
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 338
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 339
    :cond_18
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_30

    .line 340
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 341
    :cond_30
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_48

    .line 342
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 343
    :cond_48
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_60

    .line 344
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 346
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist numberIncrementFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Number;
    .registers 6
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 352
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 353
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 354
    :cond_12
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 355
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 357
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist stringAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "last"    # Ljava/lang/Object;

    .line 419
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist asBinaryOperator()Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Landroid/os/BundleMerger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/BundleMerger$$ExternalSyntheticLambda0;-><init>(Landroid/os/BundleMerger;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMergeStrategy(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    iget v1, p0, Landroid/os/BundleMerger;->mDefaultStrategy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "first"    # Landroid/os/Bundle;
    .param p2, "last"    # Landroid/os/Bundle;

    .line 236
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_6
    if-nez p1, :cond_a

    .line 240
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 242
    :cond_a
    if-nez p2, :cond_e

    .line 243
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 248
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, "res":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 252
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 253
    .local v1, "conflictingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 255
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_87

    .line 256
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/BundleMerger;->getMergeStrategy(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, "strategy":I
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 259
    .local v5, "firstValue":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 261
    .local v6, "lastValue":Ljava/lang/Object;
    :try_start_45
    invoke-static {v4, v5, v6}, Landroid/os/BundleMerger;->merge(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 265
    goto :goto_84

    .line 262
    :catch_4d
    move-exception v7

    .line 263
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to merge key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using strategy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BundleMerger"

    invoke-static {v9, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "strategy":I
    .end local v5    # "firstValue":Ljava/lang/Object;
    .end local v6    # "lastValue":Ljava/lang/Object;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 267
    .end local v2    # "i":I
    :cond_87
    return-object v0
.end method

.method public blacklist setDefaultMergeStrategy(I)V
    .registers 2
    .param p1, "strategy"    # I

    .line 194
    iput p1, p0, Landroid/os/BundleMerger;->mDefaultStrategy:I

    .line 195
    return-void
.end method

.method public blacklist setMergeStrategy(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "strategy"    # I

    .line 204
    iget-object v0, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget v0, p0, Landroid/os/BundleMerger;->mDefaultStrategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 176
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2e

    .line 178
    iget-object v2, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Landroid/os/BundleMerger;->mStrategies:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 181
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method
