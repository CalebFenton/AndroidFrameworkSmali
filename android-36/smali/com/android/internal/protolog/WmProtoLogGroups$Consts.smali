.class Lcom/android/internal/protolog/WmProtoLogGroups$Consts;
.super Ljava/lang/Object;
.source "WmProtoLogGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/WmProtoLogGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Consts"
.end annotation


# static fields
.field private static final blacklist ENABLE_DEBUG:Z = true

.field private static final blacklist ENABLE_LOG_TO_PROTO_DEBUG:Z = true

.field private static final blacklist START_ID:I

.field private static final blacklist TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSTART_ID()I
    .registers 1

    sget v0, Lcom/android/internal/protolog/WmProtoLogGroups$Consts;->START_ID:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 174
    const-class v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/internal/protolog/WmProtoLogGroups$Consts;->START_ID:I

    .line 174
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
