.class final Ljdk/internal/misc/UnsafeConstants;
.super Ljava/lang/Object;
.source "UnsafeConstants.java"


# static fields
.field static final blacklist BIG_ENDIAN:Z

.field static final blacklist UNALIGNED_ACCESS:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Ljdk/internal/misc/UnsafeConstants;->BIG_ENDIAN:Z

    .line 139
    sput-boolean v0, Ljdk/internal/misc/UnsafeConstants;->UNALIGNED_ACCESS:Z

    .line 142
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
