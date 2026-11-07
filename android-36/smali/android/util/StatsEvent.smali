.class public final Landroid/util/StatsEvent;
.super Ljava/lang/Object;
.source "StatsEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/StatsEvent$Buffer;,
        Landroid/util/StatsEvent$Builder;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_ANNOTATION_DOES_NOT_FOLLOW_FIELD:I = 0x20

.field public static final blacklist ERROR_ANNOTATION_ID_TOO_LARGE:I = 0x80

.field public static final blacklist ERROR_ATOM_ID_INVALID_POSITION:I = 0x2000

.field public static final blacklist ERROR_ATTRIBUTION_CHAIN_TOO_LONG:I = 0x8

.field public static final blacklist ERROR_ATTRIBUTION_UIDS_TAGS_SIZES_NOT_EQUAL:I = 0x1000

.field public static final blacklist ERROR_INVALID_ANNOTATION_ID:I = 0x40

.field public static final blacklist ERROR_LIST_TOO_LONG:I = 0x4000

.field public static final blacklist ERROR_NO_ATOM_ID:I = 0x2

.field public static final blacklist ERROR_NO_TIMESTAMP:I = 0x1

.field public static final blacklist ERROR_OVERFLOW:I = 0x4

.field public static final blacklist ERROR_TOO_MANY_ANNOTATIONS:I = 0x100

.field public static final blacklist ERROR_TOO_MANY_FIELDS:I = 0x200

.field public static final blacklist ERROR_TOO_MANY_KEY_VALUE_PAIRS:I = 0x10

.field private static final blacklist LOGGER_ENTRY_MAX_PAYLOAD:I = 0xfe4

.field public static final blacklist MAX_ANNOTATION_COUNT:I = 0xf

.field public static final blacklist MAX_ATTRIBUTION_NODES:I = 0x7f

.field public static final blacklist MAX_KEY_VALUE_PAIRS:I = 0x7f

.field public static final blacklist MAX_NUM_ELEMENTS:I = 0x7f

.field private static final blacklist MAX_PULL_PAYLOAD_SIZE:I = 0xc800

.field private static final blacklist MAX_PUSH_PAYLOAD_SIZE:I = 0xfe0

.field public static final blacklist TYPE_ATTRIBUTION_CHAIN:B = 0x9t

.field public static final blacklist TYPE_BOOLEAN:B = 0x5t

.field public static final blacklist TYPE_BYTE_ARRAY:B = 0x6t

.field public static final blacklist TYPE_ERRORS:B = 0xft

.field public static final blacklist TYPE_FLOAT:B = 0x4t

.field public static final blacklist TYPE_INT:B = 0x0t

.field public static final blacklist TYPE_KEY_VALUE_PAIRS:B = 0x8t

.field public static final blacklist TYPE_LIST:B = 0x3t

.field public static final blacklist TYPE_LONG:B = 0x1t

.field public static final blacklist TYPE_OBJECT:B = 0x7t

.field public static final blacklist TYPE_STRING:B = 0x2t


# instance fields
.field private final blacklist mAtomId:I

.field private blacklist mBuffer:Landroid/util/StatsEvent$Buffer;

.field private final blacklist mNumBytes:I

.field private final blacklist mPayload:[B


# direct methods
.method private constructor blacklist <init>(ILandroid/util/StatsEvent$Buffer;[BI)V
    .registers 5
    .param p1, "atomId"    # I
    .param p2, "buffer"    # Landroid/util/StatsEvent$Buffer;
    .param p3, "payload"    # [B
    .param p4, "numBytes"    # I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Landroid/util/StatsEvent;->mAtomId:I

    .line 253
    iput-object p2, p0, Landroid/util/StatsEvent;->mBuffer:Landroid/util/StatsEvent$Buffer;

    .line 254
    iput-object p3, p0, Landroid/util/StatsEvent;->mPayload:[B

    .line 255
    iput p4, p0, Landroid/util/StatsEvent;->mNumBytes:I

    .line 256
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/util/StatsEvent$Buffer;[BILandroid/util/StatsEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/StatsEvent;-><init>(ILandroid/util/StatsEvent$Buffer;[BI)V

    return-void
.end method

.method public static whitelist newBuilder()Landroid/util/StatsEvent$Builder;
    .registers 3

    .line 263
    new-instance v0, Landroid/util/StatsEvent$Builder;

    invoke-static {}, Landroid/util/StatsEvent$Buffer;->-$$Nest$smobtain()Landroid/util/StatsEvent$Buffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/StatsEvent$Builder;-><init>(Landroid/util/StatsEvent$Buffer;Landroid/util/StatsEvent-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getAtomId()I
    .registers 2

    .line 272
    iget v0, p0, Landroid/util/StatsEvent;->mAtomId:I

    return v0
.end method

.method public blacklist getBytes()[B
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/util/StatsEvent;->mPayload:[B

    return-object v0
.end method

.method public blacklist getNumBytes()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/util/StatsEvent;->mNumBytes:I

    return v0
.end method

.method public blacklist release()V
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/util/StatsEvent;->mBuffer:Landroid/util/StatsEvent$Buffer;

    if-eqz v0, :cond_c

    .line 302
    iget-object v0, p0, Landroid/util/StatsEvent;->mBuffer:Landroid/util/StatsEvent$Buffer;

    invoke-static {v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mrelease(Landroid/util/StatsEvent$Buffer;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/StatsEvent;->mBuffer:Landroid/util/StatsEvent$Buffer;

    .line 305
    :cond_c
    return-void
.end method
