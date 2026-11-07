.class Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySet"
.end annotation


# static fields
.field private static final blacklist ITERABLE:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 630
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet$1;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    .line 648
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet$2;

    invoke-direct {v0}, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet$2;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$1000()Ljava/util/Iterator;
    .registers 1

    .line 628
    sget-object v0, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method static blacklist iterable()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 658
    sget-object v0, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-object v0
.end method
