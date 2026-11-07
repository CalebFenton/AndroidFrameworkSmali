.class final Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/ArrayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyArray"
.end annotation


# static fields
.field public static final blacklist OBJECT:[Ljava/lang/Object;

.field public static final blacklist STRING:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 126
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 127
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;->STRING:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
