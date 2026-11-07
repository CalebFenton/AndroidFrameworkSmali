.class public final Landroid/media/internal/exo/C;
.super Ljava/lang/Object;
.source "C.java"


# static fields
.field public static final blacklist CLEARKEY_UUID:Ljava/util/UUID;

.field public static final blacklist COMMON_PSSH_UUID:Ljava/util/UUID;

.field public static final blacklist PLAYREADY_UUID:Ljava/util/UUID;

.field public static final blacklist UUID_NIL:Ljava/util/UUID;

.field public static final blacklist WIDEVINE_UUID:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 826
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/C;->UUID_NIL:Ljava/util/UUID;

    .line 833
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x1077efecc0b24d02L

    const-wide v3, -0x531cc3e1ad1d04b5L    # -1.8442503140481377E-92

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 840
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x1d8e62a7567a4c37L    # -1.6229728350858627E166

    const-wide v3, 0x781ab030af78d30eL    # 3.524813189889319E270

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 847
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 855
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public static blacklist usToMs(J)J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1182
    invoke-static {p0, p1}, Landroid/media/internal/exo/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method
