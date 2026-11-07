.class public final enum Lcom/android/org/conscrypt/metrics/Source;
.super Ljava/lang/Enum;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/metrics/Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/metrics/Source;

.field public static final enum blacklist SOURCE_GMS:Lcom/android/org/conscrypt/metrics/Source;

.field public static final enum blacklist SOURCE_MAINLINE:Lcom/android/org/conscrypt/metrics/Source;

.field public static final enum blacklist SOURCE_UNBUNDLED:Lcom/android/org/conscrypt/metrics/Source;

.field public static final enum blacklist SOURCE_UNKNOWN:Lcom/android/org/conscrypt/metrics/Source;


# instance fields
.field final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/metrics/Source;
    .registers 4

    .line 32
    sget-object v0, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_UNKNOWN:Lcom/android/org/conscrypt/metrics/Source;

    sget-object v1, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_MAINLINE:Lcom/android/org/conscrypt/metrics/Source;

    sget-object v2, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_GMS:Lcom/android/org/conscrypt/metrics/Source;

    sget-object v3, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_UNBUNDLED:Lcom/android/org/conscrypt/metrics/Source;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/org/conscrypt/metrics/Source;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/metrics/Source;

    const-string v1, "SOURCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_UNKNOWN:Lcom/android/org/conscrypt/metrics/Source;

    .line 35
    new-instance v0, Lcom/android/org/conscrypt/metrics/Source;

    const-string v1, "SOURCE_MAINLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_MAINLINE:Lcom/android/org/conscrypt/metrics/Source;

    .line 36
    new-instance v0, Lcom/android/org/conscrypt/metrics/Source;

    const-string v1, "SOURCE_GMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_GMS:Lcom/android/org/conscrypt/metrics/Source;

    .line 37
    new-instance v0, Lcom/android/org/conscrypt/metrics/Source;

    const-string v1, "SOURCE_UNBUNDLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_UNBUNDLED:Lcom/android/org/conscrypt/metrics/Source;

    .line 32
    invoke-static {}, Lcom/android/org/conscrypt/metrics/Source;->$values()[Lcom/android/org/conscrypt/metrics/Source;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/Source;->$VALUES:[Lcom/android/org/conscrypt/metrics/Source;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/android/org/conscrypt/metrics/Source;->id:I

    .line 47
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/Source;
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

    .line 32
    const-class v0, Lcom/android/org/conscrypt/metrics/Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/metrics/Source;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/metrics/Source;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/org/conscrypt/metrics/Source;->$VALUES:[Lcom/android/org/conscrypt/metrics/Source;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/metrics/Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/metrics/Source;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/android/org/conscrypt/metrics/Source;->id:I

    return v0
.end method
